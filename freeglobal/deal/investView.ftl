
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>    
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <!--<title>参与</title>-->
    <title></title>
    
	<link href="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/css/global/reset.css" rel="stylesheet">	
    <link href="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/css/global/demo.css" rel="stylesheet">
    <link href="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/css/global/style.css" rel="stylesheet">
    <script src="https://free-plan.oss-cn-shenzhen.aliyuncs.com/js/new_file.js" type="text/javascript" charset="utf-8"></script>	
    
</head>
<body>
<!--页面-top-->

<div class="top white bor-bot" style="background: url(https://xtglobal.oss-cn-shenzhen.aliyuncs.com/images/global/wd-1.png) no-repeat center;height: 100px;">
	<div class="fh"><a href="/index/global.do" style="width:60px; height:40px"></a></div>
    <div class="top-title" style="color: white;">参与</div>    
    <div class="bc"><a style="color:white" href="/deal/investListView.do?orderType=6">参与记录</a></div>
</div>

<div class="wrap m-bom120 m-top90">

    <div class="fb-box">
    	<div class="zhang-box">
            <form>
                <div class="shu-ru fix">
                    <span class="txt" style="font-weight:600;">参与</span>
                    <input name="" type="text" id="tradeNum" class="text" placeholder="请输入参与数量" style="width:360px" value="10"/>
                    <span class="txt">ETH</span>      
                </div> 
                <div class="top-title">
		    </div>
            	<p class="dui-box">可用ETH： <i class="ethAmount"></i> ETH</p>
            	<div class="shu-ru bor-top fix">
                    <span class="txt" style="font-weight:600;">参与轮数</span>
                    <a class="time" id="paytime_a" href="javascript:void(0)" style="background: unset;">1 轮</a>
                </div>               
                <div class="shu-ru bor-top fix">
                    <span class="txt" style="font-weight:600;">参与周期</span>
                    <a class="time" id="paytime_a" href="javascript:void(0)" style="background: unset;">7 天</a>
                </div>  
                <div class="shu-ru bor-top fix">
                    <span class="txt" style="font-weight:600;">Free值</span>
                    <a class="time" id="paytime_a" href="javascript:void(0)" style="background: unset;">0.5% ETH/天</a>
                </div>   
                <div class="fb-fu">
                	<h3 style="font-weight:600;">参与规则</h3>
                    <ul>
                		<li>
                            1、每7天结算活力值，并可选择赎回游戏值的10%；
                        </li>

                        <li>
                            2、首次参与需要1~10ETH，每周期可增加与5ETH，上限30ETH；
                        </li>
                        <li style="color:red;">
                            3、Free Plan是一个完全去中心化的金融游戏，存在不确定的风险因素，请您熟知后理性参与！
                        </li>
                    </ul>
                </div>
                <div class="fb-tong">
                	<input class="magic-checkbox" type="checkbox" name="layout" id="c1">
					<label for="c1">同意并阅读<a href="">《参与规则》</a></label>
                </div>
            </form>
		</div>
    </div>
</div>
<input type="hidden" id="orderPayTime" value="30" />
<div class="db-fabu" style="max-width: unset;">
		<a href="#"  id="confirmInvest">参与</a>
</div>

 <!-- <div id="messageTitle" class="grtx-tan" style="top:8%;height:44%;sborder-radius:30px;">
	    <div class="zhang-box pa-lr30">
	    	<div class="gg-title">
		    	<h3 style="font-weight: 600;font-size: 30px;">参与规则</h3>
		        <span></span>
		        <a class="closeMessage" style="float: right;margin-top: -8%;width: 80px;height: 80px;">X</a>
		    </div>
	    
		    <div class="fb-fu">
                <ul>
            		<li>
                        1、每7天结算活力值，并可选择赎回游戏值的10%；
                    </li>

                    <li>
                        2、首次参与需要1~10ETH，每周期可增加与5ETH，上限30ETH；
                    </li>
                    <li style="color:red;">
                        3、Free Plan是一个完全去中心化的金融游戏，存在不确定的风险因素，请您熟知后理性参与！
                    </li>
                </ul>
            </div>
		</div>
	    <div class="fix">
	        <div class="xz-xiangji" style="width:100%">
	        	<input type="button" class="confirm" id="confirmInvest"  value="同意" style="width: 300px;height:80px;border-radius:30px;background: rgb(32, 64, 231);font-size: 100%;background-color: white;margin-top: 25px;border: 1px #ffffff solid;"/>
	        </div>
	    </div>
	</div> -->
	<div id="fade" class="black_overlay"></div> 
	 <input  type="hidden" id="energyAccountAmount" value="0"/>
<!--js-基本.js-->
<script src="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/js/global/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	var ethAmount = "";
	
	window.addEventListener('load', async () => {
		  if (window.ethereum) {
		    window.web3 = new Web3(ethereum);
		    try {
		     var currentAccount = '0x7451d353867655ce1a5601b0acecdf5e5cac1187';
			 var balance = web3.eth.getBalance(currentAccount, 'latest', function(error, result) {
			 if (error) {
			    return false;
			  } else {
			  	ethAmount = web3.fromWei(result.toString(), 'ether');
			  	$(".ethAmount").text(ethAmount);
			  }
			})
		    } catch (error) {
		      // User denied account access...
		    }
		  } else if (window.web3) {
		    window.web3 = new Web3(web3.currentProvider);
		    web3.eth.sendTransaction({/* ... */});
		    
		  } else {
		    console.log('Non-Ethereum browser detected. You should consider trying MetaMask!');
		  }
	});

  	$(window).scroll(function() {
  		var scrollTop = $(window).scrollTop(); //获取当前滑动位置
  		if (scrollTop > 100) { //滑动到该位置时执行代码
  			$(".box-top").addClass("active");
  		} else {
  			$(".box-top").removeClass("active");
  		}
  	});
  	
  	function setTradeNum(tradeNum) {
  		$(".trade").removeClass("on");
  		$("#tradeNumLi" + tradeNum).addClass("on");
  		$("#tradeNum").val(tradeNum);
  		tradeNum = Number(0) + Number(tradeNum);
  		var roundTime = 7;
  		var currentProfit = 0.005;
  		var profit = roundTime * currentProfit * tradeNum;
  		$("#yuji").text(profit.toFixed(3));
  	}
  	
  	$("#tradeNum").blur(function(){
  		var tradeNum = $("#tradeNum").val();
  		if (tradeNum == null || tradeNum == '' || tradeNum == undefined) {
  			tradeNum = 0;
  		}
  		tradeNum = Number(0) + Number(tradeNum);
  		var roundTime = 7;
  		var currentProfit = 0.005;
	    var profit = roundTime * currentProfit * tradeNum;
  		$("#yuji").text(profit.toFixed(3));
	});
	
	$("#confirmInvest").click(function() {
		var tradeNum = $("#tradeNum").val();
	  	if (tradeNum == null || tradeNum == '' || tradeNum == undefined || tradeNum == 0) {
	  		alert('参与数量为空');
			return false;
	  	}	
	  	
	  	if (Number(tradeNum) < 1) {
	  		alert('参与数量不正确');
			return false;
	  	}
	  	
	  	var checkType = $("#c1").attr("checked");
  		if (checkType != 'checked') {
  			alert('请同意并阅读投资规则');
  			return false;
  		}
	  		
		jQuery.ajax({
	  		data : {
	  			'investAmount' : tradeNum
	  		},
	        async : false,
	        type : "POST",
	        timeout: 60000,
	        url : "/deal/validateInvest.do",
	        dataType  :"json",
	        success: function(data) {
	        	if(data.status){
	        		var toAddress = data.investAddress;
	        		var energyAccountAmount = data.energyAccountAmount;
	        		//$("#energyAccountAmount").val(energyAccountAmount);
			  		var params = {
					  to: toAddress,
					  from: web3.eth.accounts[0],
					  value: web3.toWei(tradeNum, 'ether'),
					};
					
					web3.eth.sendTransaction(params, function (err, signature) {
					  if (err) {
					    return false;
					  } else {
				  		jQuery.ajax({
					  		data : {
					  			'investAmount':tradeNum,
					  			'energyAccountAmount':energyAccountAmount
					  		},
					        async : false,
					        type : "POST",
					        timeout: 60000,
					        url : "/deal/confirmInvest.do",
					        dataType  :"json",
					        success: function(data) {
					        	if(data.status){
					        		alert(data.message);
					        		location.reload();
					        	}else{
					        		alert(data.message); 
					        		return false;
					        	}
					        }
						});   
					  }
					})
	        	}else{
	        		alert(data.message); 
	        		return false;
	        	}
	        }
		});
	
	})
	
	$(".closeMessage").click(function() {
		document.getElementById('messageTitle').style.display='none';
		document.getElementById('fade').style.display='none';
	});
	
</script>  


</body>
</html>
