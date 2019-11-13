
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>    
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <!--<title>帮助中心</title>-->
    <title></title>
    
	<link href="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/css/global/reset.css" rel="stylesheet">	
    <link href="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/css/global/style.css" rel="stylesheet">
    <script src="https://free-plan.oss-cn-shenzhen.aliyuncs.com/js/new_file.js" type="text/javascript" charset="utf-8"></script>	
</head>
<body>
<!--页面-top-->
<div class="wdzc-top" style="height: 188px;">
	<div class="box-top">
    	<div class="fh"><a href="/index/global.do" title="返回"></a></div>
    	<div class="top-title">帮助中心</div>
    </div>
</div>
<div class="wrap">	
	<div class="wdzc-box">
    	<ul class="fix">
        	<li onclick="update('1')">
            	<img src="https://meida520.oss-cn-shanghai.aliyuncs.com/app/doc.png" style="height: 100px;"/>
                <p>文档帮助</p>
            </li>
            <li onclick="update('2')">
            	<img src="https://meida520.oss-cn-shanghai.aliyuncs.com/app/voice.png" style="height: 100px;"/>
                <p>语音帮助</p>
            </li>
            <li onclick="update('3')">
            	<img src="https://meida520.oss-cn-shanghai.aliyuncs.com/app/video.png" style="height: 100px;"/>
                <p>视频帮助</p>
            </li>
        </ul>
    </div>
    
    
    <div class="zhang-box pa-lr30" style="margin-top: 40px;" id="docDiv">
    
    	<div class="gao-list bor-top20">
			<div class="gao-txt">
		            <p style="text-align: center;">暂无数据</p>
		        </div>
		 </div>
    	<!-- <div class="xz-xue">
	    	<h2>FREE商业计划</h2>
	        <span class="time">2019-09-06</span>
			<input type="button" id="" style="font-size: 30px;width: 40%;border-radius:30px;background: rgb(32, 64, 231);border: 0;color: rgba(255,255,255,1);float: right;margin-top: -72px;height: 60px;"  value="点击查看"/>
		</div>
		
		<div class="xz-xue">
	    	<h2>FREE白皮书</h2>
	        <span class="time">2019-09-06</span>
			<input type="button" id="" style="font-size: 30px;width: 40%;border-radius:30px;background: rgb(32, 64, 231);border: 0;color: rgba(255,255,255,1);float: right;margin-top: -72px;height: 60px;"  value="点击查看"/>
		</div> -->
    </div>
    
    <div class="zhang-box pa-lr30" style="display:none;margin-top: 40px;" id="voiceDiv">
    	<div class="gao-list bor-top20">
			<div class="gao-txt">
		            <p style="text-align: center;">暂无数据</p>
		        </div>
		 </div>
    </div>
	
	<div class="zhang-box pa-lr30" style="display:none;margin-top: 40px;" id="videoDiv">
    	<div class="gao-list bor-top20">
			<div class="gao-txt">
		            <p style="text-align: center;">暂无数据</p>
		        </div>
		 </div>
    </div>
</div>

<!--js-基本.js-->
<script src="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/js/global/jquery-1.8.3.min.js"></script>
<script>
	function update(type) {
		if (type == '1') {
			$("#docDiv").css("display", "block");
			$("#voiceDiv").css("display", "none");
			$("#videoDiv").css("display", "none");
		}
		
		if (type == '2') {
			$("#docDiv").css("display", "none");
			$("#voiceDiv").css("display", "block");
			$("#videoDiv").css("display", "none");
		}
		
		if (type == '3') {
			$("#docDiv").css("display", "none");
			$("#voiceDiv").css("display", "none");
			$("#videoDiv").css("display", "block");
		}
		
	}
</script>
</body>
</html>
