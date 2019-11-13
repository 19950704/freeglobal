
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>    
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <!--<title>发现</title>-->
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
    	<div class="top-title">发现</div>
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
            	<!--<div class="img-box"><img src="https://global-wallet.oss-cn-hangzhou.aliyuncs.com/images/cash_logo.png" style="width:100%;" /> </div>-->
                <div class="txt-box">
                	<h4>FreeMan语录</h4>
                </div>           
            </li>
            
            <li class="fix">
                <div class="txt-box">
                	<h4>白皮书</h4>
                </div>           
            </li>
            
            <li class="fix">
                <div class="txt-box">
                	<h4>去中心化交易所</h4>
                </div>           
            </li>
            
        	<li class="fix">
            	<div class="txt-box">
                	<h4>区块链</h4>
                </div>           
            </li>
            
            <li class="fix">
                <div class="txt-box">
                	<h4>去中心化游戏</h4>
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
            <li>
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
	        
	        <li class="on">
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
                <input id="freeAccountNum" name="freeAccountNum" type="text" class="text" value="0x7451d353867655ce1a5601b0acecdf5e5cac1187" placeholder="请输入地址" />        
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

<div id="fade" class="sz-black"></div>
<input type="hidden" id="shareUrl" value="https://www.freeglobal.vip//index/global.do?userParentCenterCode=null" />
<input type="hidden" id="ethAccount" value="0x7451d353867655ce1a5601b0acecdf5e5cac1187" /> 
<input type="hidden" id="ethAddress" value="0xc5c3c11c8302c8d9c1f13cd2b0b8f2cd510bed52" /> 
<!--js-基本.js-->
<script src="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/js/global/jquery-1.8.3.min.js"></script>
<script src="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/js/global/clipboard.min.js" type="text/javascript"></script>
<script>
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
			
			 web3.eth.getBalance('0xc5c3c11c8302c8d9c1f13cd2b0b8f2cd510bed52', 'latest', function(error, result) {
			 if (error) {
			    return false;
			  } else {
			  	ethAmount = web3.fromWei(result.toString(), 'ether');
			  	$("#ethSpan").html(ethAmount);
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
    	
    	if(!/^\d+$/.test(freeAccountNum) || parseInt(freeAccountNum) <50) {
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
	        url:"/deal/transferFreeOut.do",
	        dataType :"json",
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
</script>

</body>
</html>
