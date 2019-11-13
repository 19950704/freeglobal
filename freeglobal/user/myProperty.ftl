
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>    
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <!--<title>资产</title>-->
    <title></title>
    
	<link href="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/css/global/reset.css" rel="stylesheet">	
    <link href="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/css/global/style.css" rel="stylesheet">
    <script src="https://free-plan.oss-cn-shenzhen.aliyuncs.com/js/new_file.js" type="text/javascript" charset="utf-8"></script>	
</head>
<body>
<!--页面-top-->
<div class="wdzc-top" style="height: 232px;">
	<div class="box-top">
    	<div class="fh"><a href="javascript:history.back(-1);" title="返回"></a></div>
    	<div class="top-title">资产</div>
    </div>
    <div class="wd-top-down pa-lr30">
    	<a href="#" class="fix" style="background: unset;margin-top: 2px;height: 130px;">
            <div class="txt-box" style="width:100%">
            	<h2><i id="fuzhiShareUrl"><img src="https://free-plan.oss-cn-shenzhen.aliyuncs.com/images/erweima.png"></i><i style="font-style:unset;margin-left: 10px;"></i><i style="margin-left:76%;" onclick="javascript:window.location.href=&#39;/index/businessCollege.do&#39;">...</i></h2>
	                <span style="background: unset;border: unset;padding: 0px;"><i id="fuzhieth"> <img src="https://free-plan.oss-cn-shenzhen.aliyuncs.com/images/copy2.png"> </i>0x7451d353...5e5cac1187</span>
            </div>            
    	</a>
    </div>
</div>
<div class="wrap">
    <div class="wdzc-list pa-lr30" style="margin-bottom:90px">
    	<ul>
    		<li class="fix">
            	<div class="img-box"><img src="https://global-wallet.oss-cn-hangzhou.aliyuncs.com/images/cash_logo.png" style="width:100%;" /> </div>
                <div class="txt-box">
                	<h4>游戏值</h4>
                    <p class="fix">
                    	<a class="gl" href="/deal/dealLog.do?type=1">...</a>
                    		<a class="zz" href="#" style="color: lightgrey;">加仓</a>
                    		<a class="zz" href="#" style="color: lightgrey;">赎回</a>
                    </p>
                </div>
                <div class="tel-box">
                	<span class="tel1">0</span>
                    <span class="tel2">ETH</span>
                </div>            
            </li>
            
            <li class="fix">
            	<div class="img-box"><img src="https://global-wallet.oss-cn-hangzhou.aliyuncs.com/images/invest_logo.png" style="width:100%;" /> </div>
                <div class="txt-box">
                	<h4>活力值
						<!--<img src="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/images/global/ma-icon.png" />-->
					</h4>
					<p class="fix">
                    	<a class="gl" href="/deal/dealLog.do?type=0">...</a>
                    </p>
                </div>
                <div class="tel-box">
                	<span class="tel1" id="vitalityAmount">0.000</span>
                    <span class="tel2">ETH</span>
                </div>            
            </li>
            
            <li class="fix">
            	<div class="img-box"><img src="https://global-wallet.oss-cn-hangzhou.aliyuncs.com/images/totalProfit_logo.png" style="width:100%;" /> </div>
                <div class="txt-box">
                	<h4>能量值</h4>
                    <p class="fix">
                    	<a class="gl" href="/deal/dealLog.do?type=4">...</a>
                    </p>
                </div>
                <div class="tel-box">
                	<span class="tel1">0.00</span>
                    <span class="tel2">ETH</span>
                </div>            
            </li>
            
        	<li class="fix">
            	<div class="img-box"><img src="https://meida520.oss-cn-shanghai.aliyuncs.com/app/ETH.png" style="width:100%;" /> </div>
                <div class="txt-box">
                	<h4>ETH</h4>
                    <p class="fix">
                    	<a class="gl" href="/deal/dealLog.do?type=3">...</a>
                        <a class="zz" href="#" onclick ="document.getElementById('lightGetProfit').style.display='block';document.getElementById('fade').style.display='block'">转出</a>
                    </p>
                </div>
                <div class="tel-box">
                	<span class="tel1">0.0000</span>
                	<span class="tel2">ETH</span>
                </div>            
            </li> 
            
            <li class="fix">
            	<div class="img-box"><img src="https://global-wallet.oss-cn-hangzhou.aliyuncs.com/images/energy_logo.png" style="width:100%;" /> </div>
                <div class="txt-box">
                	<h4>Free</h4>
                	<h4>0xc5c3c11c...cd510bed52</h4>
                    <p class="fix">
                    	<a class="gl" href="/deal/dealLog.do?type=5">...</a>
                        <a class="zz" href="#" id="fuzhifree">复制</a>
                        <a class="zz" href="#" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">转出</a>
                    </p>
                </div>
                <div class="tel-box">
                    <span class="tel1" id="freeSpan"><i style= "font-size: 26px;background:rgba(32, 147, 231, 1);color:white;border-radius:5px 0;" onclick="getCoinAmount('free')">点击查询</i></span>
                </div> 
            </li>
        </ul>
    </div>
    
    
    <div class="footer">
        <ul class="footer-ul fix">
            <li>
                <a href="/index/global.do">
                    <i class="foot-icon foot-icon-sy"></i>
                    <p>首页</p>
                </a>
            </li>
            <li class="on">
	        	<a href="/user/myProperty.do">
	            	<i class="foot-icon foot-icon-sc"></i>
	                <p>资产</p>
	            </a>
	        </li>
          
	        <li>
	            <a href="/index/global.do">
	                <i class="ind-icon ind-icon-pp" style="background: url(https://free-plan.oss-cn-shenzhen.aliyuncs.com/images/60.png) no-repeat center; margin-top:20px"></i>
	            </a>
	        </li>
	        
	        <li>
	            <a href="/user/find.do">
	            	<i class="foot-icon foot-icon-jy"></i>
	                <p>发现</p>
	            </a>
	        </li>
	        
            <li>
                <a href="/user/personCenter.do">
                    <i class="foot-icon foot-icon-wd"></i>
                    <p>我的</p>
                </a>
            </li>
        </ul>
    </div>
</div>

 <div id="light" class="grtx-tan" style="top: 15%;">
    <div class="zhang-box pa-lr30">
    	<form> 
    		<div class="shu-ru fix">
                <span class="txt">地址:</span>
                <input id="freeAccountAddress" name="freeAccountAddress" type="text" class="text" value="0x7451d353867655ce1a5601b0acecdf5e5cac1187" placeholder="请输入地址" />        
            </div>
            <div class="shu-ru fix">
                <span class="txt">数量:</span>
                <input id="freeAccountNum" name="freeAccountNum" type="text" class="text" placeholder="请输入数量" />      
            </div>
        </form>
    </div>
    <div class="fix">
    	<div class="xz-xiangji">
        	<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">取消</a>
        </div>
        <div class="xz-xiangji">
        	<input type="button" onclick="transferFreeOut()" value="确定" style="color: rgba(32,147,231,1);font-size: 100%;background-color: white;margin-top: 6%;border: 1px #ffffff solid;"/>
        </div>
    </div>
</div>

 <div id="lightIn" class="grtx-tan" style="top: 15%;">
    <div class="zhang-box pa-lr30">
    	<form> 
            <div class="shu-ru fix">
                <span class="txt">数量:</span>
                <input id="ethAccountNumIn" name="ethAccountNumIn" type="text" class="text" placeholder="请输入数量" />      
            </div>
        </form>
    </div>
    <div class="fix">
    	<div class="xz-xiangji">
        	<a href = "javascript:void(0)" onclick = "document.getElementById('lightIn').style.display='none';document.getElementById('fade').style.display='none'">取消</a>
        </div>
        <div class="xz-xiangji">
        	<input type="button" onclick="transferFreeIn()" value="确定" style="color: rgba(32,147,231,1);font-size: 100%;background-color: white;margin-top: 6%;border: 1px #ffffff solid;"/>
        </div>
    </div>
</div>

 <div id="lightOut" class="grtx-tan" style="top: 15%;">
    <div class="zhang-box pa-lr30">
    	<form> 
            <div class="shu-ru fix">
                <span class="txt">数量:</span>
                <input id="ethAccountNumOut" name="ethAccountNumOut" type="text" class="text" placeholder="请输入数量" />      
            </div>
        </form>
    </div>
    <div class="fix">
    	<div class="xz-xiangji">
        	<a href = "javascript:void(0)" onclick = "document.getElementById('lightOut').style.display='none';document.getElementById('fade').style.display='none'">取消</a>
        </div>
        <div class="xz-xiangji">
        	<input type="button" onclick="transferEthOut()" value="确定" style="color: rgba(32,147,231,1);font-size: 100%;background-color: white;margin-top: 6%;border: 1px #ffffff solid;"/>
        </div>
    </div>
</div>

<div id="lightAdd" class="grtx-tan" style="top: 15%;">
    <div class="zhang-box pa-lr30">
    	<form> 
            <div class="shu-ru fix">
                <span class="txt">ETH:</span>
                <input id="ethAccountNumAdd" name="ethAccountNumAdd" type="text" class="text" placeholder="请输入数量" />      
            </div>
            
            <p style="color:red;">风险提示：Free Plan是一个完全去中心化的金融游戏，存在不确定的风险因素，请您熟知后理性参与！</p>
        </form>
    </div>
    <div class="fix">
    	<div class="xz-xiangji">
        	<a href = "javascript:void(0)" onclick = "document.getElementById('lightAdd').style.display='none';document.getElementById('fade').style.display='none'">取消</a>
        </div>
        <div class="xz-xiangji">
        	<input type="button" onclick="addInvest();" value="确定" style="color: rgba(32,147,231,1);font-size: 100%;background-color: white;margin-top: 6%;border: 1px #ffffff solid;"/>
        </div>
    </div>
</div>

<div id="lightSubtract" class="grtx-tan" style="top: 15%;">
    <div class="zhang-box pa-lr30">
    	<form> 
    		<div class="shu-ru fix">
                <span class="txt" style="width: 100%; margin-left: 30%;">确认赎回0.0ETH</span>
            </div>
        </form>
    </div>
    <div class="fix">
    	<div class="xz-xiangji">
        	<a href = "javascript:void(0)" onclick = "document.getElementById('lightSubtract').style.display='none';document.getElementById('fade').style.display='none'">取消</a>
        </div>
        <div class="xz-xiangji">
        	<input type="button" onclick="subtractInvest();" value="确定" style="color: rgba(32,147,231,1);font-size: 100%;background-color: white;margin-top: 6%;border: 1px #ffffff solid;"/>
        </div>
    </div>
</div>

<div id="lightGetProfit" class="grtx-tan" style="top: 15%;">
    <div class="zhang-box pa-lr30">
    	<form> 
    		<div class="shu-ru fix">
                <span class="txt">地址:</span>
                <input id="ethAccountAddress" name="ethAccountAddress" type="text" class="text" value="0x7451d353867655ce1a5601b0acecdf5e5cac1187" placeholder="请输入地址" />        
            </div>
            <div class="shu-ru fix">
                <span class="txt">数量:</span>
                <input id="ethAccountNum" name="ethAccountNum" type="text" class="text" placeholder="请输入数量" value="0.0000"/>      
            </div>
        </form>
    </div>
    <div class="fix">
    	<div class="xz-xiangji">
        	<a href = "javascript:void(0)" onclick = "document.getElementById('lightGetProfit').style.display='none';document.getElementById('fade').style.display='none'">取消</a>
        </div>
        <div class="xz-xiangji">
        	<input type="button" onclick="getProfit();" value="确定" style="color: rgba(32,147,231,1);font-size: 100%;background-color: white;margin-top: 6%;border: 1px #ffffff solid;"/>
        </div>
    </div>
</div>

<div id="fade" class="sz-black"></div>
<input type="hidden" id="shareUrl" value="https://www.freeglobal.vip//index/global.do?userParentCenterCode=null" />
<input type="hidden" id="ethAccount" value="0x7451d353867655ce1a5601b0acecdf5e5cac1187" /> 
<input type="hidden" id="ethAddress" value="0xc5c3c11c8302c8d9c1f13cd2b0b8f2cd510bed52" /> 
<!--js-基本.js-->
<script src="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/js/global/jquery-1.8.3.min.js"></script>
<script src="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/js/global/clipboard.min.js" type="text/javascript"></script>
<script>
	window.addEventListener('load', async () => {
		jQuery.ajax({
	  		data : {
	  		},
	        async : true,
	        type : "POST",
	        timeout: 60000,
	        url : "/deal/getEnergyAmount.do",
	        dataType  :"json",
	        success: function(data) {
	        	if(data.status){
	        		var vitalityAmount = data.vitalityAmount;
	        		$("#vitalityAmount").text(vitalityAmount);
	        	}else{
	        		return false;
	        	}
	        },
	     }); 
	});
    $("#fuzhifree").click(function() {
		var ceoAccount = $("#ethAddress").val();
		var clipboard = new ClipboardJS('#fuzhifree', {
	        text: function() {
	            return ceoAccount;
	        }
	    });
	
	    clipboard.on('success', function(e) {
	        alert("复制成功");
	    });
	
	    clipboard.on('error', function(e) {
	        alert("复制失败");
	    });
	})
    
    
    $("#fuzhieth").click(function() {
    	var ethAccount = $("#ethAccount").val();
	    var clipboard = new ClipboardJS('#fuzhieth', {
	        text: function() {
	            return ethAccount;
	        }
	    });
	
	    clipboard.on('success', function(e) {
	        alert("复制成功");
	    });
	
	    clipboard.on('error', function(e) {
	        alert("复制失败");
	    });
    
    })
    
    $("#fuzhiShareUrl").click(function() {
		var shareUrl = $("#shareUrl").val();
		var clipboard = new ClipboardJS('#fuzhiShareUrl', {
	        text: function() {
	            return shareUrl;
	        }
	    });
	
	    clipboard.on('success', function(e) {
	        alert("复制成功");
	    });
	
	    clipboard.on('error', function(e) {
	        alert("复制失败");
	    });
	})
    
    function getCoinAmount (coin) {
		jQuery.ajax({
	  		data : {
	  			'coin':coin
	  		},
	        async : false,
	        type : "POST",
	        timeout: 60000,
	        url : "/user/getCoinAmount.do",
	        dataType  :"json",
	        success: function(data) {
	        	if(data.status){
	        		var coinAmount = data.coinAmount;
	        		if (coin == 'eth') {
	        			$("#ethSpan").html("");
	        			$("#ethSpan").html(coinAmount);
	        		}
	        		
	        		if (coin == 'free') {
	        			$("#freeSpan").html("");
	        			$("#freeSpan").html(coinAmount);
	        		}
	        	}else{
	        		alert(data.message);
	        		return false;
	        	}
	        },
	        error: function(data) {
	        	alert("网络错误");
	        }
	     }); 
    }
    
    function transferFreeIn () {
    	var ethAccountNumIn = $("#ethAccountNumIn").val();
    	
    	if (ethAccountNumIn == null || ethAccountNumIn == '' || ethAccountNumIn == undefined) {
    		alert("请输入数量");
    		return false;
    	}
    	
  		var params = {
		  to: '0xc5c3c11c8302c8d9c1f13cd2b0b8f2cd510bed52',
		  from: '0x7451d353867655ce1a5601b0acecdf5e5cac1187',
		  value: web3.toWei(ethAccountNumIn, 'ether'),
		}
		
		web3.eth.sendTransaction(params, function (err, signature) {
		  if (err) {
		    return false;
		  } else {
		    alert("操作成功");
		    document.getElementById('lightIn').style.display='none';document.getElementById('fade').style.display='none';
			return false;
		  }
		})
    }
    
    function transferEthOut () {
    	var ethAccountNumIn = $("#ethAccountNumOut").val();
    	
    	if (ethAccountNumIn == null || ethAccountNumIn == '' || ethAccountNumIn == undefined) {
    		alert("请输入数量");
    		return false;
    	}
    	
    	$.ajax({
	  		data : {
	  			"ethAccountNum":ethAccountNumIn
	  		},
	        async : false,
	        type : "POST",
	        timeout: 60000,
	        url : "/deal/transferEthOut.do",
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
    
    function transferFreeOut () {
    	var freeAccountAddress = $("#freeAccountAddress").val();
    	
    	if (freeAccountAddress == null || freeAccountAddress == '' || freeAccountAddress == undefined) {
    		alert("请输入地址");
    		return false;
    	}
    	var freeAccountNum = $("#freeAccountNum").val();
    	
    	if (freeAccountNum == null || freeAccountNum == '' || freeAccountNum == undefined) {
    		alert("请输入数量");
    		return false;
    	}
    	
    	if(!/^\d+$/.test(freeAccountNum) || parseInt(freeAccountNum) < 20) {
			alert("转出数量不能少于20 Free");
			return false;
		}
    	$.ajax({
	  		data : {
	  			"freeAccountNum":freeAccountNum,
	  			"transferAddress":freeAccountAddress
	  		},
	        async : false,
	        type : "POST",
	        timeout: 60000,
	        url : "/deal/validateTransferFreeOut.do",
	        dataType  :"json",
	        success: function(data) {
	        	if(data.status){
	        	 
	        		//alert(data.message);
	        		var type = data.type;
	        		if (type == 0) {
	        			var toAddress = data.investAddress;
	        			var tradeNum = data.amountEth;
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
								  			"freeAccountNum":freeAccountNum,
	  										"transferAddress":freeAccountAddress
								  		},
								        async : false,
								        type : "POST",
								        timeout: 60000,
								        url : "/deal/transferFreeOut.do",
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
							});
		        		} else {
		        			alert(data.message);
			        		location.reload();
		        		}
	        		
	        	}else{
	        		alert(data.message);
	        		return false;
	        	}
	        }
	     });
    }
   
   function addInvest() {
   	  var ethAccountNumAdd = $("#ethAccountNumAdd").val();
   	  if (ethAccountNumAdd == null || ethAccountNumAdd == "" || ethAccountNumAdd == undefined) {
   	  		alert("请输入数量");
    		return false;
   	  }
   	  
   	  if (ethAccountNumAdd < 1 || ethAccountNumAdd > 5) {
   	  		alert("加仓的数量在1-5 ETH之间");
    		return false;
   	  }
   	  
   	  jQuery.ajax({
	  		data : {
	  			'addInvestCoinAmount' : ethAccountNumAdd
	  		},
	        async : false,
	        type : "POST",
	        timeout: 60000,
	        url : "/deal/validateAddInvest.do",
	        dataType  :"json",
	        success: function(data) {
	        	if(data.status){
	        		var toAddress = data.investAddress;
			  		var params = {
					  to: toAddress,
					  from: web3.eth.accounts[0],
					  value: web3.toWei(ethAccountNumAdd, 'ether'),
					}
					
					web3.eth.sendTransaction(params, function (err, signature) {
					  if (err) {
					    return false;
					  } else {
				  		jQuery.ajax({
					  		data : {
					  			'addInvestCoinAmount' : ethAccountNumAdd
					  		},
					        async : false,
					        type : "POST",
					        timeout: 60000,
					        url : "/deal/confirmAddInvest.do",
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
   	  
   }
   
   function subtractInvest() {
   		jQuery.ajax({
	  		data : {
	  		},
	        async : false,
	        type : "POST",
	        timeout: 60000,
	        url : "/deal/confirmSubtractInvest.do",
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
   
   function getProfit() {
   		var ethAccountAddress = $("#ethAccountAddress").val();
   		if (ethAccountAddress == null || ethAccountAddress == '' || ethAccountAddress == undefined) {
    		alert("请输入地址");
    		return false;
    	}
    	
    	var ethAccountNum = $("#ethAccountNum").val();
    	if (ethAccountNum == null || ethAccountNum == '' || ethAccountNum == undefined) {
    		alert("请输入数量");
    		return false;
    	}
    	
    	if(ethAccountNum < 0.1) {
			alert("转出数量不能少于0.1 ETH");
			return false;
		}
    	
    	jQuery.ajax({
	  		data : {
	  			"ethAccountAddress":ethAccountAddress,
	  			"ethAccountNum": ethAccountNum
	  			
	  		},
	        async : false,
	        type : "POST",
	        timeout: 60000,
	        url : "/deal/validateGetProfit.do",
	        dataType  :"json",
	        success: function(data) {
	        	if(data.status){
	        	 
	        		//alert(data.message);
	        		var type = data.type;
	        		if (type == 0) {
	        			var toAddress = data.investAddress;
	        			var tradeNum = data.amountEth;
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
								  			"ethAccountAddress" : ethAccountAddress,
								  			"ethAccountNum": ethAccountNum
								  		},
								        async : false,
								        type : "POST",
								        timeout: 60000,
								        url : "/deal/getProfit.do",
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
							});
		        		} else {
		        			alert(data.message);
			        		location.reload();
		        		}
	        		
	        	}else{
	        		alert(data.message);
	        		return false;
	        	}
	        }
	     });
   		
   
   }
    
</script>

</body>
</html>
