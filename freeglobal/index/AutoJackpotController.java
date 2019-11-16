package com.wallet.action;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wallet.common.CommonConst;
import com.wallet.entity.UserEntity;
import com.wallet.entity.UserOrderEntity;
import com.wallet.enums.LogTypeEnum;
import com.wallet.enums.OrderTypeEnum;
import com.wallet.service.IDealLogService;
import com.wallet.service.IDictService;
import com.wallet.service.IProductService;
import com.wallet.service.IUserAccountService;
import com.wallet.service.IUserOrderService;
import com.wallet.service.IUserService;

@Controller
@RequestMapping(value = "/jackpot")
public class AutoJackpotController {

	private static final Logger LOGGER = LoggerFactory.getLogger(AutoJackpotController.class);

	/**
	 * 用户订单服务
	 */
	@Autowired
	private IUserOrderService userOrderService;

	/**
	 * 字典服务
	 */
	@Autowired
	private IDictService dictService;

	/**
	 * 用户服务
	 */
	@Autowired
	private IUserService userService;

	/**
	 * 用户账户服务
	 */
	@Autowired
	private IUserAccountService userAccountService;
	
	@Autowired
	private IDealLogService dealLogService;

	@Autowired
	private IProductService productService;
	
	/**
	 * 自动奖池分发
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/jackpot", method = RequestMethod.GET)
	public Map<String, Object> jackpot(HttpServletRequest request, HttpServletResponse response) throws Exception {
		UserEntity sessionUser = (UserEntity) request.getSession().getAttribute(CommonConst.SESSION_USER);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		// 奖池进账
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("logType", LogTypeEnum.LOG_TYPE_JACKPOT_IN);
		double jackpotIn = dealLogService.queryListSum(paramMap);
		paramMap.clear();
		paramMap.put("logType", LogTypeEnum.LOG_TYPE_JACKPOT_OUT);
		double jackpotOut = dealLogService.queryListSum(paramMap);
		double jackPot = jackpotIn - jackpotOut;
		
		if (jackPot <= 0) {
			resultMap.put(CommonConst.RESPONSE_STATUS, CommonConst.RESPONSE_STATUS_FAIL);
			resultMap.put(CommonConst.RESPONSE_MESSAGE, "奖池为空");
			return resultMap;
		}
		
		double jackPotOne = 0;
		if (jackPot > 30000) {
			jackPotOne = 10000 * 0.05 + 10000 * 0.04 + 10000 * 0.03 + (jackPot - 30000) * 0.02;
		} else if (jackPot > 20000) {
			jackPotOne = 10000 * 0.05 + 10000 * 0.04 + (jackPot - 20000) * 0.03;
		} else if (jackPot > 10000) {
			jackPotOne = 10000 * 0.05 +  (jackPot - 10000) * 0.04;
		} else {
			jackPotOne = jackPot * 0.05;
		} 
		
		BigDecimal jackPotOneBig = new BigDecimal(jackPotOne);
		
		paramMap.clear();
		paramMap.put("logType", OrderTypeEnum.INVEST_ORDER.getId());
		List<UserOrderEntity> orderList = userOrderService.queryList(paramMap);
		if (orderList == null || orderList.isEmpty()) {
			resultMap.put(CommonConst.RESPONSE_STATUS, CommonConst.RESPONSE_STATUS_FAIL);
			resultMap.put(CommonConst.RESPONSE_MESSAGE, "奖池为空");
			return resultMap;
		}
		
		for (int i = 0; i < 1000; i++) {
			if (orderList.size() < i) {
				break;
			}
			
			UserOrderEntity order = orderList.get(i);
			String investAmount = order.getTotalAmount();
			
			BigDecimal multiple = new BigDecimal(CommonConst.STRING_ZERO);
			if (i < 1) {
				multiple = new BigDecimal("100");
			} else if (1 <= i && i < 10) {
				multiple = new BigDecimal("30");
			} else {
				multiple = new BigDecimal("2");
			}
			
			BigDecimal totalCompensate = new BigDecimal(investAmount).multiply(multiple);
			if (jackPotOneBig.compareTo(totalCompensate) <= CommonConst.DIGIT_ZERO) {
				dealLogService.insertLog(order.getUserId(), order.getUserName(), "1", "admin", LogTypeEnum.LOG_TYPE_ADMIN_ETH_OUT.getId(), jackPotOneBig.toString(), "补偿");
				break;
			} else {
				dealLogService.insertLog(order.getUserId(), order.getUserName(), "1", "admin", LogTypeEnum.LOG_TYPE_ADMIN_ETH_OUT.getId(), totalCompensate.toString(), "补偿");
				jackPotOneBig = jackPotOneBig.subtract(totalCompensate);
			}
		}
		
		resultMap.put(CommonConst.RESPONSE_STATUS, CommonConst.RESPONSE_STATUS_SUCCESS);
		resultMap.put(CommonConst.RESPONSE_MESSAGE, "补偿成功");
		return resultMap;
	}
	
}
