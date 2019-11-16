package com.wallet.action;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Date;
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
import com.wallet.common.util.DateUtils;
import com.wallet.common.util.NewSMSUtil;
import com.wallet.entity.DealLogEntity;
import com.wallet.entity.DictEntity;
import com.wallet.entity.UserAccountEntity;
import com.wallet.entity.UserEntity;
import com.wallet.enums.AccountEnum;
import com.wallet.enums.LogTypeEnum;
import com.wallet.service.IDealLogService;
import com.wallet.service.IDictService;
import com.wallet.service.IProductService;
import com.wallet.service.IUserAccountService;
import com.wallet.service.IUserOrderService;
import com.wallet.service.IUserService;

@Controller
@RequestMapping(value = "/settle")
public class AutoSettleController {

	private static final Logger LOGGER = LoggerFactory.getLogger(AutoSettleController.class);

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
	 * 自动结算
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/settle", method = RequestMethod.GET)
	public int settle(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("dictType", CommonConst.DIGIT_ONE);
		map.put("dictGroupName", "timer_switch");
		map.put("dictName", "everyday_release");

		List<DictEntity> everydayReleaseSwitchList = dictService.queryList(map);

		if (null == everydayReleaseSwitchList || everydayReleaseSwitchList.isEmpty()) {
			LOGGER.info("UserServiceImpl everyDayRelease everydayReleaseSwitchList is null.");
			return CommonConst.DIGIT_ZERO;
		}

		String dictValue = everydayReleaseSwitchList.get(0).getDictValue();

		if (dictValue.equals(CommonConst.STRING_ZERO)) {
			LOGGER.info("UserServiceImpl everyDayRelease everydayReleaseSwitchList is ZERO.");
			return CommonConst.DIGIT_ZERO;
		}

		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.clear();
		paramMap.put("dictName", "ez_sendsms_everyday_white_list");
		List<DictEntity> dictList = dictService.queryList(paramMap);
		String whiteList = CommonConst.PUNCTUATION_DOUBLE_QUOTATION_MARKS;
		if (dictList != null && dictList.size() > CommonConst.DIGIT_ZERO) {
			whiteList = dictList.get(CommonConst.DIGIT_ZERO).getDictValue();
		}

		paramMap.clear();
		paramMap.put("userSesameCreditScoreValidation", CommonConst.DIGIT_ZERO);
		List<UserEntity> userList = userDao.queryList(paramMap);
		String beiReleasePercent = CommonConst.STRING_ZERO;
		String coinReleasePercent = CommonConst.STRING_ZERO;
		paramMap.clear();
		paramMap.put("dictGroupName", "credit_release_config");
		paramMap.put("dictType", CommonConst.STRING_ONE);
		dictList = dictService.queryList(paramMap);
		for (DictEntity dictEntity : dictList) {
			if ("bei_release_percent".equals(dictEntity.getDictName())) {
				beiReleasePercent = dictEntity.getDictValue();
			}

			if ("ez_release_percent".equals(dictEntity.getDictName())) {
				coinReleasePercent = dictEntity.getDictValue();
			}
		}

		String beiCoinPrice = CommonConst.STRING_ONE;
		paramMap.clear();
		paramMap.put("dictName", "bei_coin_price");
		paramMap.put("dictType", CommonConst.STRING_ONE);
		dictList = dictService.queryList(paramMap);
		if (dictList != null && dictList.size() > CommonConst.DIGIT_ZERO) {
			beiCoinPrice = dictList.get(CommonConst.DIGIT_ZERO).getDictValue();
		}

		String creditReleasePercent = CommonConst.STRING_ZERO;
		paramMap.clear();
		paramMap.put("dictName", "credit_release_percent");
		paramMap.put("dictType", CommonConst.STRING_ONE);
		dictList = dictService.queryList(paramMap);
		if (dictList != null && dictList.size() > CommonConst.DIGIT_ZERO) {
			creditReleasePercent = dictList.get(CommonConst.DIGIT_ZERO).getDictValue();
		}

		String firstReleasePercent = CommonConst.STRING_ZERO;
		String secondReleasePercent = CommonConst.STRING_ZERO;
		String thirdReleasePercent = CommonConst.STRING_ZERO;
		paramMap.clear();
		paramMap.put("dictGroupName", "parent_release_config");
		paramMap.put("dictType", CommonConst.STRING_ONE);
		dictList = dictService.queryList(paramMap);
		for (DictEntity dictEntity : dictList) {
			if ("first_release_percent".equals(dictEntity.getDictName())) {
				firstReleasePercent = dictEntity.getDictValue();
			}

			if ("second_release_percent".equals(dictEntity.getDictName())) {
				secondReleasePercent = dictEntity.getDictValue();
			}

			if ("third_release_percent".equals(dictEntity.getDictName())) {
				thirdReleasePercent = dictEntity.getDictValue();
			}
		}

		String startTime = DateUtils.format(new Date(), DateUtils.DATE_FORMAT_DAY)
				+ CommonConst.PUNCTUATION_DOUBLE_QUOTATION_MARKS_BACKSPACE + DateUtils.FIRST_TIME;
		for (UserEntity userEntity : userList) {
			try {
				// 判断今日有没有领取
				paramMap.clear();
				paramMap.put("userName", userEntity.getUserName());
				paramMap.put("logType", LogTypeEnum.LOG_TYPE_RELEASE_CREDIT_ACCOUNT.getId());
				paramMap.put("startTime", startTime);
				List<DealLogEntity> dealLogList = dealLogService.queryList(paramMap);
				if (dealLogList != null && dealLogList.size() > CommonConst.DIGIT_ZERO) {
					continue;
				}

				UserAccountEntity creditAccount = new UserAccountEntity();
				paramMap.clear();
				paramMap.put("userName", userEntity.getUserName());
				paramMap.put("accountId", AccountEnum.CREDIT_ACCOUNT.getId());
				List<UserAccountEntity> userAccountList = userAccountService.queryList(paramMap);
				if (userAccountList != null && userAccountList.size() > CommonConst.DIGIT_ZERO) {
					creditAccount = userAccountList.get(CommonConst.DIGIT_ZERO);
				}
				String amount = new BigDecimal(creditAccount.getAccountAmount())
						.multiply(new BigDecimal(creditReleasePercent)).setScale(2, BigDecimal.ROUND_CEILING)
						.toString();
				if (new BigDecimal(amount)
						.compareTo(new BigDecimal(CommonConst.STRING_ZERO)) == CommonConst.DIGIT_ZERO) {
					continue;
				}

				boolean result = userAccountService.subtractAccountAmount(userEntity.getUserId(),
						userEntity.getUserName(), AccountEnum.CREDIT_ACCOUNT.getId(), new BigDecimal(amount));
				dealLogService.insertLog(userEntity.getUserId(), userEntity.getUserName(), userEntity.getUserId(),
						userEntity.getUserName(), LogTypeEnum.LOG_TYPE_RELEASE_CREDIT_ACCOUNT.getId(),
						new BigDecimal(amount).toString(), "静态基础释放");

				if (!result) {
					continue;
				}

				BigDecimal beiAmount = new BigDecimal(amount).multiply(new BigDecimal(beiReleasePercent))
						.multiply(new BigDecimal(beiCoinPrice)).setScale(2, BigDecimal.ROUND_HALF_UP);

				if (beiAmount.compareTo(new BigDecimal(CommonConst.STRING_ZERO)) != CommonConst.DIGIT_ZERO) {
					userAccountService.addAccountAmount(userEntity.getUserId(), userEntity.getUserName(),
							AccountEnum.BEI_ACCOUNT.getId(), beiAmount);
					dealLogService.insertLog(userEntity.getUserId(), userEntity.getUserName(), userEntity.getUserId(),
							userEntity.getUserName(), LogTypeEnum.LOG_TYPE_TRANSFER_BEI_IN.getId(),
							beiAmount.toString(), "静态基础释放");
				}

				BigDecimal coinAmount = new BigDecimal(amount).multiply(new BigDecimal(coinReleasePercent)).setScale(2,
						BigDecimal.ROUND_HALF_UP);

				if (coinAmount.compareTo(new BigDecimal(CommonConst.STRING_ZERO)) != CommonConst.DIGIT_ZERO) {
					userAccountService.addAccountAmount(userEntity.getUserId(), userEntity.getUserName(),
							AccountEnum.COIN_ACCOUNT.getId(), coinAmount);

					dealLogService.insertLog(userEntity.getUserId(), userEntity.getUserName(), userEntity.getUserId(),
							userEntity.getUserName(), LogTypeEnum.LOG_TYPE_TRANSFER_COIN_IN.getId(),
							coinAmount.toString(), "静态基础释放");

				}

				parentReleaceQuickly(userEntity, amount, beiAmount, coinAmount, beiReleasePercent, beiCoinPrice,
						coinReleasePercent, firstReleasePercent, secondReleasePercent, thirdReleasePercent);

			} catch (Exception e) {
				System.out.println("userName:" + userEntity.getUserName() + e.getMessage());
			}
		}

		// 计算每个人今天的所有动态
		for (UserEntity userEntity : userList) {
			paramMap.clear();
			paramMap.put("userName", userEntity.getUserName());
			paramMap.put("logType", LogTypeEnum.LOG_TYPE_RECORD_RECOMMEND_RELEASE_CREDIT.getId());
			paramMap.put("startTime", startTime);
			List<DealLogEntity> creditdealLogList = dealLogService.queryList(paramMap);
			if (creditdealLogList != null && creditdealLogList.size() > CommonConst.DIGIT_ZERO) {
				BigDecimal creditAmount = new BigDecimal(CommonConst.STRING_ZERO);
				for (DealLogEntity dealLogEntity : creditdealLogList) {
					creditAmount = creditAmount.add(new BigDecimal(dealLogEntity.getLogAmount()));
				}

				if (creditAmount.compareTo(new BigDecimal(CommonConst.STRING_ZERO)) > CommonConst.DIGIT_ZERO) {
					userAccountService.subtractAccountAmount(userEntity.getUserId(), userEntity.getUserName(),
							AccountEnum.CREDIT_ACCOUNT.getId(), creditAmount);
					dealLogService.insertLog(userEntity.getUserId(), userEntity.getUserName(), userEntity.getUserId(),
							userEntity.getUserName(), LogTypeEnum.LOG_TYPE_TRANSFER_CREDIT_IN.getId(),
							creditAmount.setScale(CommonConst.DIGIT_TWO, RoundingMode.DOWN).toString(), "动态释放");
				}
			}

			paramMap.clear();
			paramMap.put("userName", userEntity.getUserName());
			paramMap.put("logType", LogTypeEnum.LOG_TYPE_RECORD_RECOMMEND_RELEASE_EZCOUPON.getId());
			paramMap.put("startTime", startTime);
			List<DealLogEntity> ezCoupondealLogList = dealLogService.queryList(paramMap);
			if (ezCoupondealLogList != null && ezCoupondealLogList.size() > CommonConst.DIGIT_ZERO) {
				BigDecimal ezCouponAmount = new BigDecimal(CommonConst.STRING_ZERO);
				for (DealLogEntity dealLogEntity : ezCoupondealLogList) {
					ezCouponAmount = ezCouponAmount.add(new BigDecimal(dealLogEntity.getLogAmount()));
				}

				if (ezCouponAmount.compareTo(new BigDecimal(CommonConst.STRING_ZERO)) > CommonConst.DIGIT_ZERO) {
					userAccountService.addAccountAmount(userEntity.getUserId(), userEntity.getUserName(),
							AccountEnum.BEI_ACCOUNT.getId(), ezCouponAmount);
					dealLogService.insertLog(userEntity.getUserId(), userEntity.getUserName(), userEntity.getUserId(),
							userEntity.getUserName(), LogTypeEnum.LOG_TYPE_TRANSFER_BEI_IN.getId(),
							ezCouponAmount.setScale(CommonConst.DIGIT_TWO, RoundingMode.DOWN).toString(), "动态释放");
				}
			}

			paramMap.clear();
			paramMap.put("userName", userEntity.getUserName());
			paramMap.put("logType", LogTypeEnum.LOG_TYPE_RECORD_RECOMMEND_RELEASE_EZTOKEN.getId());
			paramMap.put("startTime", startTime);
			List<DealLogEntity> ezTokendealLogList = dealLogService.queryList(paramMap);
			if (ezTokendealLogList != null && ezTokendealLogList.size() > CommonConst.DIGIT_ZERO) {
				BigDecimal ezTokenAmount = new BigDecimal(CommonConst.STRING_ZERO);
				for (DealLogEntity dealLogEntity : ezTokendealLogList) {
					ezTokenAmount = ezTokenAmount.add(new BigDecimal(dealLogEntity.getLogAmount()));
				}

				if (ezTokenAmount.compareTo(new BigDecimal(CommonConst.STRING_ZERO)) > CommonConst.DIGIT_ZERO) {
					userAccountService.addAccountAmount(userEntity.getUserId(), userEntity.getUserName(),
							AccountEnum.COIN_ACCOUNT.getId(), ezTokenAmount);
					dealLogService.insertLog(userEntity.getUserId(), userEntity.getUserName(), userEntity.getUserId(),
							userEntity.getUserName(), LogTypeEnum.LOG_TYPE_TRANSFER_COIN_IN.getId(),
							ezTokenAmount.setScale(CommonConst.DIGIT_TWO, RoundingMode.DOWN).toString(), "动态释放");
				}
			}
		}

		return CommonConst.DIGIT_ONE;
	}

}
