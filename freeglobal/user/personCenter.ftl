
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>    
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <!--<title>我的</title>-->
    <title></title>
    
	<link href="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/css/global/reset.css" rel="stylesheet">	
    <link href="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/css/global/style.css" rel="stylesheet">
    <script src="https://free-plan.oss-cn-shenzhen.aliyuncs.com/js/new_file.js" type="text/javascript" charset="utf-8"></script>	
 
</head>
<body>
<!--页面-top-->
<div class="wdzc-top" style="height: 232px;">
	<div class="wd-top-up">
        <div class="wd-tz"><!-- <a href="/message/messageList.do" title="通知"><img src="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/images/global/tz.png" /></a>--></div>
        <!--<div class="wd-sz"><a href="/user/mySetting.do" title="设置"><img src="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/images/global/sz.png" /></a></div>-->   
        <div class="top-title" style="color:white;">我的</div>
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

<div class="wrap m-bom120">
	<div class="wd-list pa-lr30">
    	<ul>
			<li><a href="/user/userRecommendList.do">小组</a></li>
			<li><a href="#" id="fuzhiShareUrl">邀请链接</a></li>
			<!-- -->
        	<li><a class="bo-no" href="/index/businessCollege.do">帮助中心</a></li>
        </ul>
    </div>

    <!-- <div class="sz-box" style = "border-top: 20px solid #f7f7f7;">
        <ul class="sz-box-list">
        	<li><a class="bo-no" href="/user/myProperty.do">我的资产</a></li>
        	<li><a class="bo-no" href="/deal/profitView.do">我的收益</a></li>
        	<li><a class="bo-no" href="/user/myIpc.do">快捷量波</a></li>
        	<li><a class="bo-no" href="/deal/investView.do">前往参与</a></li>
            <<li><a class="bo-no" href="/index/downloadApp.do">APP下载码</a></li>
            <li class="li-xian"></li>
            <li><a href="#">关于我们</a></li>
             <li class="li-xian"></li>
          <li><a class="qingchu" href="">版本号<span>1.0</span></a></li>
        </ul>
    </div>-->
</div>

<div class="footer">
	<ul class="footer-ul fix">
    	<li class="">
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
                <i class="ind-icon ind-icon-pp" style="background: url(https://free-plan.oss-cn-shenzhen.aliyuncs.com/images/60.png) no-repeat center;margin-top: 20px;"></i>
            </a>
        </li>
        
        <li>
            <a href="/user/find.do">
            	<i class="foot-icon foot-icon-jy"></i>
                <p>发现</p>
            </a>
        </li>
        <li class="on">
        	<a href="/user/personCenter.do">
            	<i class="foot-icon foot-icon-wd"></i>
                <p>我的</p>
            </a>
        </li>
    </ul>
</div>

<div id="fade" class="sz-black"></div> 
<!--js-基本.js-->
<input type="hidden" id="shareUrl" value="https://www.freeglobal.vip//index/global.do?userParentCenterCode=null" />
<input type="hidden" id="ethAccount" value="0x7451d353867655ce1a5601b0acecdf5e5cac1187" /> 
<script src="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/js/global/jquery-1.8.3.min.js"></script>
<script src="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/js/global/clipboard.min.js" type="text/javascript"></script>
<script type="text/javascript">
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
</script>	
</body>
</html>

