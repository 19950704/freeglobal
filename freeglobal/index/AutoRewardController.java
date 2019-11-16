package com.wallet.action;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wallet.common.CommonConst;
import com.wallet.entity.DealLogEntity;
import com.wallet.entity.DictEntity;
import com.wallet.entity.UserAccountEntity;
import com.wallet.entity.UserEntity;
import com.wallet.enums.LogTypeEnum;
import com.wallet.service.IDealLogService;
import com.wallet.service.IDictService;
import com.wallet.service.IUserAccountService;
import com.wallet.service.IUserOrderService;

@Controller
@RequestMapping(value = "/reward")
public class AutoRewardController {

	private static final Logger LOGGER = LoggerFactory.getLogger(AutoRewardController.class);

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
	 * 用户账户服务
	 */
	@Autowired
	private IUserAccountService userAccountService;
	
	@Autowired
	private IDealLogService dealLogService;

	
	/**
	 * 自动动态
	 *
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/reward", method = RequestMethod.GET)
	public int reward(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(StringUtils.isBlank(productPriceCode) || StringUtils.isBlank(userName) || StringUtils.isBlank(orderId)) {
			LOGGER.info("UserServiceImpl putBonus parameter is null.");
			return CommonConst.DIGIT_ZERO;
		}
		
		//根据产品编码查找价格
		Map<String, Object> dictMap = new HashMap<String, Object>();
		dictMap.put("dictType", CommonConst.DIGIT_ONE);
		dictMap.put("dictGroupName", "product_price_code");
		dictMap.put("dictName", productPriceCode);
		
		List<DictEntity> productPriceCodeList = dictService.queryList(dictMap);
		
		if(null == productPriceCodeList || productPriceCodeList.isEmpty()) {
			LOGGER.info("UserServiceImpl productPriceCodeList is null.");
			return CommonConst.DIGIT_ZERO;
		}
		
		//获得商品价格
		DictEntity dictEntity = productPriceCodeList.get(CommonConst.DIGIT_ZERO);
		String productPrice = dictEntity.getDictValue();
		
		dictMap.clear();
		List<DictEntity> recommendPercentList = new ArrayList<DictEntity>();
		
		//获得推荐奖层数和比例
		if(productPriceCode.contains("welfare")) {
			dictMap.put("dictType", CommonConst.DIGIT_ONE);
			dictMap.put("dictGroupName", "special_bonus");
			recommendPercentList = dictService.queryList(dictMap);
		} else {
			dictMap.put("dictType", CommonConst.DIGIT_ONE);
			dictMap.put("dictGroupName", "common_bonus");
			recommendPercentList = dictService.queryList(dictMap);
		}
		
		if(null == recommendPercentList || recommendPercentList.isEmpty()) {
			LOGGER.info("UserServiceImpl recommendPercentList is null.");
			return CommonConst.DIGIT_ZERO;
		}
		
		String beginUserName = userName;
		//开始遍历推荐奖的List 并且层层划拨
		int bonusGeneration = CommonConst.DIGIT_ZERO;
		for(int i = CommonConst.DIGIT_ZERO; i < recommendPercentList.size(); i ++) {
			DictEntity recommendPercentEntity = recommendPercentList.get(i);
			//如果实体类为空则继续遍历
			if(null == recommendPercentEntity) {
				continue;
			}
			
			//如果字典值为null也继续遍历
			String dictValue = recommendPercentEntity.getDictValue();
			if(StringUtils.isBlank(dictValue)) {
				continue;
			}
			
			//开始做查询 查询上一代（也就是自己的推荐人）
			UserEntity entity = queryByUserName(beginUserName);
			String userParentName = entity.getUserParentName();
			
			// 推荐人为空跳出循环
			if (StringUtils.isBlank(userParentName)) {
				
			}
			//获得具体的比例
			BigDecimal bonusPercent = new BigDecimal(dictValue);
			BigDecimal price = new BigDecimal(productPrice);
			//返还的具体的金额
			BigDecimal bonus = bonusPercent.multiply(price);
			dictMap.clear();
			dictMap.put("userName", userParentName);
			dictMap.put("accountId", CommonConst.DIGIT_ONE);
			
			//返还到用户的账户
			List<UserAccountEntity> userAccountList = userAccountService.queryList(dictMap);
			
			UserAccountEntity userAccountEntity = userAccountList.get(CommonConst.DIGIT_ZERO);
			BigDecimal origimalAmount = new BigDecimal(userAccountEntity.getAccountAmount());
			origimalAmount = origimalAmount.add(bonus);
			origimalAmount.setScale(CommonConst.DIGIT_THREE);
			userAccountEntity.setAccountAmount(origimalAmount.toString());
			int result = userAccountService.update(userAccountEntity);
			
			if(result == CommonConst.DIGIT_ONE) {
				DealLogEntity dealLogEntity = new DealLogEntity();
				dealLogEntity.setCreateTime(new Date());
				dealLogEntity.setCreateUserName(userName);
				dealLogEntity.setActive(true);
				dealLogEntity.setVersion(1L);
				dealLogEntity.setLogAmount(bonus.toString());
				dealLogEntity.setUserName(userName);
				dealLogEntity.setTargetUserName(userParentName);
				if(productPriceCode.contains("welfare")) {
					dealLogEntity.setLogType((i + 33) + "");
					dealLogEntity.setLogDesc(LogTypeEnum.getLogTypeNameByLogTypeId((i + 33) + ""));
				} else {
					dealLogEntity.setLogType((i + 3) + "");
					dealLogEntity.setLogDesc(LogTypeEnum.getLogTypeNameByLogTypeId((i + 3) + ""));
				}
				
				int dealLogResult = dealLogService.insert(dealLogEntity);
				if(dealLogResult == CommonConst.DIGIT_ONE) {
					LOGGER.info("UserServiceImpl putBonus insert dealLogResult success.");
				}
			}
			bonusGeneration++;
			beginUserName = userParentName;
			
		}
	
		return bonusGeneration;
	}
	
	
}
