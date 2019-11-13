
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>    
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <!--<title>我的邀请</title>-->
    <title></title>
    
	<link href="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/css/global/reset.css" rel="stylesheet">	
    <link href="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/css/global/style.css" rel="stylesheet">
    <script src="https://free-plan.oss-cn-shenzhen.aliyuncs.com/js/new_file.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
<!--页面-top-->
<div class="top white bor-bot" style="background: linear-gradient(to left, rgba(32,147,231,1) 0%, #3671c3 50%, #0b0be4 100%);">
	<div class="fh"><a href="/user/personCenter.do" ></a></div>
    <div class="top-title" style="color:white">我的邀请</div>
</div>
<div class="wrap m-top90">
	<div class="wd-sou fix" style="font-size:30px">
        <span style="position: inherit;">我的推荐码:<i style="font-weight: 600;font-style: initial;color: blue;padding: 10px;"></i><p style="float: right;color: brown;font-weight: 600;" id="fuzhi">复制</p></span>
        
    </div>
    <div class="wd-td-list bor-top20">
    	<ul>
        	<li>
                <div class="txt-box" style="height:200px">
                	<span class="name"><i style="font-style: unset"> </i>
                	<i style="font-style: unset;    float: right;padding-right: 10%;">团队总业绩:0 </i> </span> 
                    <span class="id"> 2019-11-13 14:49 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;团队总人数：0</span>
                    <span class="id">0x7451d353...5e5cac1187<i style="font-style: unset;margin-left: 3%;font-weight: 600;color: #56b4f8;" id="fuzhiaddress">复制</i></span>
      			</div>
            </li>
        </ul>
    </div>
    <div class="wd-td-list bor-top20">
    	<ul>
				<div class="gao-list bor-top20">
	        			<div class="gao-txt">
					            <p style="text-align: center;">暂无数据</p>
					        </div>
					 </div> 
        </ul>
    </div>
</div>
<input type="hidden" id="userCenterCode" value=""></input>
<input type="hidden" id="userAddress" value="0x7451d353867655ce1a5601b0acecdf5e5cac1187"></input>
<!--js-基本.js-->
<script src="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/js/global/jquery-1.8.3.min.js"></script>
<script src="https://xtglobal.oss-cn-shenzhen.aliyuncs.com/js/global/clipboard.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$("#search").click(function() {
		var userMobile = $("#userMobile").val();
		//if (userMobile == '' || userMobile == null || userMobile == undefined) {
		//	alert("请输入搜索内容");
		//	return false;
		//}
		window.location.href = "/user/userRecommendList.do?userId=" + userMobile
		
	})
	
	$("#fuzhi").click(function() {
		var url = $("#userCenterCode").val();
		var clipboard = new ClipboardJS('#fuzhi', {
	        text: function() {
	            return url;
	        }
	    });
	
	    clipboard.on('success', function(e) {
	        alert("复制成功");
	    });
	
	    clipboard.on('error', function(e) {
	        alert("复制失败");
	    });
	})
	
	$("#fuzhiaddress").click(function() {
		var url = $("#userAddress").val();
		var clipboard = new ClipboardJS('#fuzhiaddress', {
	        text: function() {
	            return url;
	        }
	    });
	
	    clipboard.on('success', function(e) {
	        alert("复制成功");
	    });
	
	    clipboard.on('error', function(e) {
	        alert("复制失败");
	    });
	})
	
	function copyAddress(order) {
		var url = $("#addressUrl" + order).val();
		var clipboard = new ClipboardJS('#copy' + order, {
	        text: function() {
	            return url;
	        }
	    });
	
	    clipboard.on('success', function(e) {
	        alert("复制成功");
	    });
	
	    clipboard.on('error', function(e) {
	        alert("复制失败");
	    });
	}

</script>
</body>
</html>
