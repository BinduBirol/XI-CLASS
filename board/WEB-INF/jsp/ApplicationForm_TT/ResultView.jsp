<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=10">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script charset="UTF-8" type="text/javascript">
"undefined"==typeof jQuery&&document.write('<script charset="UTF-8" type="text/javascript" src="/board/resources/js/jquery.min.js"><\/script>');function clearSscInfo(){clearField("ssc_roll","user_captcha"),document.getElementById("ssc_reg")&&clearField("ssc_reg");var e=["ssc_year","ssc_board"];setSBoxFirstOption.apply(this,e)}function setSBoxFirstOption(){for(var e=0;e<arguments.length;e++)$("#"+arguments[e]).val("")}function clearField(){for(var e=0;e<arguments.length;e++)$("#"+arguments[e]).val("")}function enableField(){for(var e=0;e<arguments.length;e++)$("#"+arguments[e]).attr("disabled",!1)}function scrollToBottom(){$("html, body").animate({scrollTop:$(document).height()},"slow")}function scrollToTop(){$("html, body").animate({scrollTop:0},"slow")}function clearHtml(){for(var e=0;e<arguments.length;e++)$("#"+arguments[e]).html("")}function validateField(){for(var e,a=!0,r=0;r<arguments.length;r++)(e=$("#"+arguments[r]))&&""==$.trim(e.val())?(cbColor(e,"e"),a=!1):cbColor(e,"v");return a}function cbColor(e,a){"e"==a?e.css("border","2px solid red"):"v"==a&&e.css("border","1px solid #add9e4")}function disableField(){for(var e=0;e<arguments.length;e++)$("#"+arguments[e]).attr("disabled",!0)}function myTrim(e){return void 0!==e?e.replace(/^\s+|\s+$/gm,""):""}function reloadYear(e){$("#ssc_year").children("option").remove(),$("#ssc_year").append($("<option></option>").attr("value","").text("Select Year"));var a=[];a=19==e?arrBTEByear:20==e?arrYearBOU:arrYear;for(var r=0;r<a.length;r++)20==e?2015==a[r]?$("#ssc_year").append($("<option selected></option>").attr("value",a[r]).text(a[r])):$("#ssc_year").append($("<option></option>").attr("value",a[r]).text(a[r])):2019==a[r]?$("#ssc_year").append($("<option selected></option>").attr("value",a[r]).text(a[r])):$("#ssc_year").append($("<option></option>").attr("value",a[r]).text(a[r]))}function validateSscInfo(){enableField("submitButton"),$("#submitButton").css("background-color","buttonface"),clearHtml("result_info_div"),1!=validateField("ssc_roll","ssc_board","ssc_year","ssc_reg","user_captcha")||currentlyRequestProcessing||($("#response_div").fadeToggle(100),currentlyRequestProcessing=1,$.ajax({url:"/board/showResult_2019",type:"POST",data:{ssc_roll:myTrim($("#ssc_roll").val()),ssc_board:$("#ssc_board").val(),ssc_year:$("#ssc_year").val(),ssc_reg:myTrim($("#ssc_reg").val()),user_captcha:myTrim($("#user_captcha").val()),java_captcha:$("#java_captcha").val()},success:function(e){$("#response_div").fadeToggle(18),$("#captchaImg").addClass("reloadImage").attr("src","resources/reloadCaptcha1.gif"),clearField("user_captcha"),"Captcha Error"==e?($("#result_info_div").html(e),scrollToBottom(),currentlyRequestProcessing=0,$("#user_captcha").css("border","2px solid red")):($("#result_info_div").html(e),disableField("submitButton"),scrollToBottom(),currentlyRequestProcessing=0)},error:function(e){$("#response_div").fadeToggle(18),clearCaptcha()}}))}function clearCaptcha(){var e=new Date;$("#captchaImg").attr("src","/board/captcha?"+e.getTime()),clearField("user_captcha")}function clearButton(){document.getElementById("finalResultDiv").style.visibility="hidden",enableField("submitButton");var e=new Date;$("#captchaImg").attr("src","/board/captcha?"+e.getTime()),clearField("ssc_roll","ssc_reg","ssc_board","ssc_year","user_captcha"),scrollToTop(),$("#result_info_div").html("")}var arrYear=[2019,2018,2017],arrYearBOU=[2019,2018,2017,2016],arrBTEByear=[2019,2018,2017],testVar="",currentlyRequestProcessing=0;$(document).ready(function(){$(document).on("click",".reloadImage",function(){$(this).removeClass("reloadImage"),clearCaptcha()})});
 </script>
 <title>XI Class Admission Online Result</title>
 <link rel="icon" type="image/x-icon" href="/board/resources/_images/favicon.ico"/>
 <link rel="shortcut icon" type="image/x-icon" href="/board/resources/_images/favicon.ico" /> 
 <style>
 @charset "utf-8";
 body{font-family:Arial,'Helvetica Neue',Helvetica,sans-serif}input,select{padding-top:3px;padding-bottom:3px;padding-left:2px;border:1px solid #7f9db9}.box_header,.box_header_inc{filter:progid : DXImageTransform.Microsoft.gradient ( 
 startColorstr = 
 '#d4e4ef', endColorstr = '#97c0eb', GradientType = 0 );color:#10257f;padding-left:5px;text-align:left;font-style:normal;font-variant:normal;font-weight:700;padding-top:4px}label{display:inline-block;text-align:left;font-size:14px}.box_header{height:24px;background:rgba(212,228,239,1);background:-moz-linear-gradient(top,rgba(212,228,239,1) 0,rgba(151,192,235,1) 100%);background:-webkit-gradient(left top,left bottom,color-stop(0,rgba(212,228,239,1)),color-stop(100%,rgba(151,192,235,1)));background:-webkit-linear-gradient(top,rgba(212,228,239,1) 0,rgba(151,192,235,1) 100%);background:-o-linear-gradient(top,rgba(212,228,239,1) 0,rgba(151,192,235,1) 100%);background:-ms-linear-gradient(top,rgba(212,228,239,1) 0,rgba(151,192,235,1) 100%);background:linear-gradient(to bottom,rgba(212,228,239,1) 0,rgba(151,192,235,1) 100%);font-size:13px}.alignleft{float:left}.alignright{float:right}.box_header_inc{height:30px;background:rgba(212,228,239,1);background:-moz-linear-gradient(top,rgba(212,228,239,1) 0,rgba(151,192,235,1) 100%);background:-webkit-gradient(left top,left bottom,color-stop(0,rgba(212,228,239,1)),color-stop(100%,rgba(151,192,235,1)));background:-webkit-linear-gradient(top,rgba(212,228,239,1) 0,rgba(151,192,235,1) 100%);background:-o-linear-gradient(top,rgba(212,228,239,1) 0,rgba(151,192,235,1) 100%);background:-ms-linear-gradient(top,rgba(212,228,239,1) 0,rgba(151,192,235,1) 100%);background:linear-gradient(to bottom,rgba(212,228,239,1) 0,rgba(151,192,235,1) 100%);font-size:16px}table#selection_header_table th,table#selection_row_table th{color:#10257f;font-weight:600}.box_body{background-color:#eff7fd;padding:0}.box_footer{height:28px;padding-top:2px;padding-right:15px;background:rgba(212,228,239,1);background:-moz-linear-gradient(45deg,rgba(212,228,239,1) 0,rgba(154,194,236,1) 100%);background:-webkit-gradient(left bottom,right top,color-stop(0,rgba(212,228,239,1)),color-stop(100%,rgba(154,194,236,1)));background:-webkit-linear-gradient(45deg,rgba(212,228,239,1) 0,rgba(154,194,236,1) 100%);background:-o-linear-gradient(45deg,rgba(212,228,239,1) 0,rgba(154,194,236,1) 100%);background:-ms-linear-gradient(45deg,rgba(212,228,239,1) 0,rgba(154,194,236,1) 100%);background:linear-gradient(45deg,rgba(212,228,239,1) 0,rgba(154,194,236,1) 100%);filter:progid : DXImageTransform.Microsoft.gradient ( 
 startColorstr = 
 '#d4e4ef', endColorstr = '#9ac2ec', GradientType = 1 );text-align:right}.box_container{width:900px;border:1px solid #7f9db9}.readonly{width:170px;height:20px;border:1px solid grey;padding:1px 2px;font-size:14px}.box_row{margin-top:10px;height:28px}.selection_row{width:245px;margin-top:5px;height:28px;padding-top:2px;padding-bottom:4px}.selection_row label{width:70px}.selection_row input,select{width:150px}table#selection_header_table tr,td{border:1px solid grey;font-size:13px}table#selection_row_table tr,td{font-size:13px}table#selection_row_table{border:1px solid grey;border-collapse:collapse;margin-left:2px;margin-top:2px}.baner,.info_div{margin-top:5px}table#selection_row_table th{padding-top:2px;padding-bottom:2px}.baner{width:900px;background:rgba(255,255,255,1);background:-moz-radial-gradient(center,ellipse cover,rgba(255,255,255,1) 0,rgba(246,246,246,1) 47%,rgba(237,237,237,1) 100%);background:-webkit-gradient(radial,center center,0,center center,100%,color-stop(0,rgba(255,255,255,1)),color-stop(47%,rgba(246,246,246,1)),color-stop(100%,rgba(237,237,237,1)));background:-webkit-radial-gradient(center,ellipse cover,rgba(255,255,255,1) 0,rgba(246,246,246,1) 47%,rgba(237,237,237,1) 100%);background:-o-radial-gradient(center,ellipse cover,rgba(255,255,255,1) 0,rgba(246,246,246,1) 47%,rgba(237,237,237,1) 100%);background:-ms-radial-gradient(center,ellipse cover,rgba(255,255,255,1) 0,rgba(246,246,246,1) 47%,rgba(237,237,237,1) 100%);background:radial-gradient(ellipse at center,rgba(255,255,255,1) 0,rgba(246,246,246,1) 47%,rgba(237,237,237,1) 100%);filter:progid : DXImageTransform.Microsoft.gradient ( 
 startColorstr = 
 '#ffffff', endColorstr = '#ededed', GradientType = 1 );border-radius:10px;-moz-border-radius:10px;-webkit-border-radius:10px;border:0 solid #000}.msg_div,.response_div{background-color:#eff7fd;width:720px;margin-top:15px;text-align:left;padding:10px;font-size:15.5px;line-height:145%;color:#111}.response_div{border-radius:10px;-moz-border-radius:10px;-webkit-border-radius:10px;border:2px solid #deecf6;display:none}.msg_div{border-radius:10px;-moz-border-radius:10px;-webkit-border-radius:10px;border:2px solid #deecf6}.sLabel{font-weight:700;font-size:18px}.htmlReportBtn{-moz-box-shadow:inset 0 1px 0 0 #e184f3;-webkit-box-shadow:inset 0 1px 0 0 #e184f3;box-shadow:inset 0 1px 0 0 #e184f3;background:-webkit-gradient(linear,left top,left bottom,color-stop(.05,#c123de),color-stop(1,#a20dbd));background:-moz-linear-gradient(top,#c123de 5%,#a20dbd 100%);background:-webkit-linear-gradient(top,#c123de 5%,#a20dbd 100%);background:-o-linear-gradient(top,#c123de 5%,#a20dbd 100%);background:-ms-linear-gradient(top,#c123de 5%,#a20dbd 100%);background:linear-gradient(to bottom,#c123de 5%,#a20dbd 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#c123de', endColorstr='#a20dbd', GradientType=0);background-color:#c123de;-moz-border-radius:6px;-webkit-border-radius:6px;border-radius:6px;border:1px solid #a511c0;display:inline-block;cursor:pointer;color:#fff;font-family:Arial;font-size:15px;font-weight:700;padding:6px 24px;text-decoration:none;text-shadow:0 1px 0 #9b14b3}.htmlReportBtn:hover{background:-webkit-gradient(linear,left top,left bottom,color-stop(.05,#a20dbd),color-stop(1,#c123de));background:-moz-linear-gradient(top,#a20dbd 5%,#c123de 100%);background:-webkit-linear-gradient(top,#a20dbd 5%,#c123de 100%);background:-o-linear-gradient(top,#a20dbd 5%,#c123de 100%);background:-ms-linear-gradient(top,#a20dbd 5%,#c123de 100%);background:linear-gradient(to bottom,#a20dbd 5%,#c123de 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#a20dbd', endColorstr='#c123de', GradientType=0);background-color:#a20dbd}.htmlReportBtn:active{position:relative;top:1px}
 .errorPromptDiv,.msg_div,.response_div,.resultRedNoteDiv,.successResultMessage{text-align:center}.CollegeDetailsTable{border-collapse:collapse;width:724px;margin-bottom:21px}.CollegeDetailsTable th{background-color:#5093D2;color:#141D62}body{font-size:13px;font-family:Arial,"Helvetica Neue",Helvetica,sans-serif,Times,"Times New Roman",SolaimanLipi,AdorshoLipi,Vrinda,"Siyam Rupali","Shonar bangla",serif!important}html body center div.baner div h3{color:#0003AB;font-weight:700;font-size:19px}html body center div.baner{color:#8E0507;font-weight:700}html body center div.box_container div.before_you_start_content{//padding-top:15px;padding-left:9px;//padding-bottom:15px}html body div.box_container div.box_body{padding-top:12px;padding-bottom:15px;display:block;overflow:auto}div.box_row.sub_box_header{padding-top:6px!important;padding-bottom:3px!important;position:relative!important}div.box_row.sub_box_container{overflow:visible!important;position:relative!important}html body #college_selection_div.box_container div.box_body{padding-bottom:0}.box_footer,.sub_box_header,html body div.box_container,html body div.sub_box_container{clear:both}#warningMessage{font-size:13px;max-height:192px;overflow:auto;color:#99070A;font-weight:700;margin-top:12px;background-color:#FECACB;border:2px solid #FECACB;border-radius:5px;padding:6px}#college_selection_div,div#personal_info_div div#personal_info_div.box_container div.box_footer{clear:both!important}div#selected_box_edit table#selection_row_table.rounded-corner tbody tr#header th{border:1px inset #000677}p#TransactionError{padding-left:15px!important}.msg_div{font-weight:700;font-size:18px}.CollegeDetailsTableDiv{max-height:229px;overflow:auto;margin-bottom:9px}.errorPromptDiv .promptDivIcon{font-size:36px;font-weight:bolder;color:#B60205;margin-bottom:12px}#mobileinfo,.merit_row,.myButton,.securityCode,.successMessage{font-weight:700}.errorPromptDiv .promptDivMessage{border:2px dashed #CB070A;background-color:#FEA8AA;font-size:18px;padding:10px}.successMessageDiv{background-color:#cfc;padding:10px;border:2px solid #cfc;border-radius:5px}.successMessageDiv.red{background:#FFB7B7;border:2px solid #FFB7B7}.successMessage{color:#01700A}.securityCode{background-color:#4B97FF;color:#01106A;border:2px solid #142EC9;padding:10px}.merit_row{background-color:#AADAFF;color:#001F96;padding:8px;border:2px dashed #3B82FF;border-radius:5px;margin:10px}#mobileinfo{color:#C70E11}.headerDivApp{border-color:#646464;border-radius:6px;border-style:outset inset inset outset;border-width:1px;box-shadow:0 0 8px #888;padding-bottom:24px}.sHeading{font-size:16px;margin-bottom:20px}.myButton{-moz-box-shadow:inset 0 1px 0 0 #e184f3;-webkit-box-shadow:inset 0 1px 0 0 #e184f3;box-shadow:inset 0 1px 0 0 #e184f3;background:-webkit-gradient(linear,left top,left bottom,color-stop(.05,#c123de),color-stop(1,#a20dbd));background:-moz-linear-gradient(top,#c123de 5%,#a20dbd 100%);background:-webkit-linear-gradient(top,#c123de 5%,#a20dbd 100%);background:-o-linear-gradient(top,#c123de 5%,#a20dbd 100%);background:-ms-linear-gradient(top,#c123de 5%,#a20dbd 100%);background:linear-gradient(to bottom,#c123de 5%,#a20dbd 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#c123de', endColorstr='#a20dbd', GradientType=0);background-color:#c123de;-moz-border-radius:6px;-webkit-border-radius:6px;border-radius:6px;border:1px solid #a511c0;display:inline-block;cursor:pointer;color:#fff;font-family:Arial;font-size:15px;padding:6px 24px;text-decoration:none;text-shadow:0 1px 0 #9b14b3;margin-top:3px;margin-bottom:3px}.myButton.blue{-moz-box-shadow:inset 0 1px 0 0 #458EF3;-webkit-box-shadow:inset 0 1px 0 0 #458EF3;box-shadow:inset 0 1px 0 0 #458EF3;background:-webkit-gradient(linear,left top,left bottom,color-stop(.05,#006BFD),color-stop(1,#0050BB));background:-moz-linear-gradient(top,#006BFD 5%,#0050BB 100%);background:-webkit-linear-gradient(top,#006BFD 5%,#0050BB 100%);background:-o-linear-gradient(top,#006BFD 5%,#0050BB 100%);background:-ms-linear-gradient(top,#006BFD 5%,#0050BB 100%);background:linear-gradient(to bottom,#006BFD 5%,#0050BB 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#006BFD', endColorstr='#0050BB', GradientType=0);background-color:#006BFD;border:1px solid #0D4EA6}.myButton:hover{background:-webkit-gradient(linear,left top,left bottom,color-stop(.05,#a20dbd),color-stop(1,#c123de));background:-moz-linear-gradient(top,#a20dbd 5%,#c123de 100%);background:-webkit-linear-gradient(top,#a20dbd 5%,#c123de 100%);background:-o-linear-gradient(top,#a20dbd 5%,#c123de 100%);background:-ms-linear-gradient(top,#a20dbd 5%,#c123de 100%);background:linear-gradient(to bottom,#a20dbd 5%,#c123de 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#a20dbd', endColorstr='#c123de', GradientType=0);background-color:#a20dbd}.myButton.blue:hover{background:-webkit-gradient(linear,left top,left bottom,color-stop(.05,#0050BB),color-stop(1,#006BFD));background:-moz-linear-gradient(top,#0050BB 5%,#006BFD 100%);background:-webkit-linear-gradient(top,#0050BB 5%,#006BFD 100%);background:-o-linear-gradient(top,#0050BB 5%,#006BFD 100%);background:-ms-linear-gradient(top,#0050BB 5%,#006BFD 100%);background:linear-gradient(to bottom,#0050BB 5%,#006BFD 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0050BB', endColorstr='#006BFD', GradientType=0);background-color:#0050BB;font-weight:bolder;border:1px solid #0E59BF}.myButton:active{position:relative;top:1px}.resultRedNoteDiv{color:#6B090A;width:800px;margin-top:9px;margin-bottom:9px;border:3px double #CB070A;border-radius:0 10px;background-color:#FFB7B7;font-size:18px;padding:10px;box-shadow:0 0 9px #999;-moz-box-shadow:0 0 9px #999;-webkit-box-shadow:0 0 9px #999}.successResultMessage{font-size:24px;color:maroon;width:750px;margin-top:12px;margin-bottom:12px;border:3px double #007715;border-radius:6px;background-color:#B7FFB7;padding:10px;box-shadow:0 0 9px #999;-moz-box-shadow:0 0 9px #999;-webkit-box-shadow:0 0 9px #999}.successResultMessage.smallSize{width:600px;border:2px ridge #007715;font-size:18px}.successResultMessage.red{border:3px double #D60000;background:#FF7878}#finalResultDiv .CollegeDetailsTable{margin-bottom:0}#finalResultDiv .CollegeDetailsTable th{background-color:#4CAF50;color:#FFF;padding:6px;font-size:16px;font-weight:700}.CollegeDetailsTable td,.CollegeDetailsTable th{border:1px groove #006014;text-align:center;padding:6px;font-size:15px}.CollegeDetailsTable tr.CollegeDetailsTableEvenRows{background-color:#B9D4ED}#finalResultDiv .applicantDetails{font-size:18px}.response_div{background-color:#FFF;border:none}img.reloadImage{opacity:.7;filter:alpha(opacity=70)}img.reloadImage:hover{opacity:1;filter:alpha(opacity=100)}
 </style>
<%@ taglib prefix="s" uri="/struts-tags"%> 
 
 </head>
 <body style="margin:0px; padding:0px;"> <center> <div class="baner headerDivApp" style="display:block;"> <div style="padding-top:5px;"> <h3 class="mHeading"> XI Class Admission System (Session: 2020-2021) </h3> </div> <span class="sHeading"> Result </span> </div> <jsp:include page="ResultSSC.jsp"></jsp:include> <div id="result_info_div"></div> <div id="response_div" class="response_div"> <img src='resources/loading1.gif'/> </div>
<div class="resultRedNoteDiv">
&#2472;&#2495;&#2480;&#2509;&#2476;&#2494;&#2458;&#2495;&#2468; &#2486;&#2495;&#2453;&#2509;&#2487;&#2494;&#2480;&#2509;&#2469;&#2496;&#2470;&#2503;&#2480; &#2536;&#2539;/&#2534;&#2540;/&#2536;&#2534;&#2535;&#2543; &#2489;&#2468;&#2503; &#2536;&#2540;/&#2534;&#2540;/&#2536;&#2534;&#2535;&#2543; &#2468;&#2494;&#2480;&#2495;&#2454;&#2503;&#2480; &#2478;&#2471;&#2509;&#2479;&#2503; &#2478;&#2507;&#2476;&#2494;&#2439;&#2482; &#2476;&#2509;&#2479;&#2494;&#2434;&#2453;&#2495;&#2434; &#2458;&#2494;&#2480;&#2509;&#2460; &#2476;&#2494;&#2470;&#2503; &#2480;&#2503;&#2460;&#2495;&#2488;&#2509;&#2463;&#2509;&#2480;&#2503;&#2486;&#2472; &#2475;&#2495; &#2535;&#2543;&#2539;/= &#2463;&#2494;&#2453;&#2494; ( &#2451;&#2527;&#2503;&#2476;&#2488;&#2494;&#2439;&#2463;&#2503; &#2441;&#2482;&#2509;&#2482;&#2503;&#2454;&#2495;&#2468; &#2437;&#2474;&#2494;&#2480;&#2503;&#2463;&#2480;-&#2447;&#2480; &#2478;&#2494;&#2471;&#2509;&#2479;&#2478;&#2503;) &#2460;&#2478;&#2494; &#2470;&#2495;&#2527;&#2503; &#2477;&#2480;&#2509;&#2468;&#2495;&#2480; &#2474;&#2509;&#2480;&#2494;&#2469;&#2478;&#2495;&#2453; &#2472;&#2495;&#2486;&#2509;&#2458;&#2494;&#2527;&#2472; &#2453;&#2480;&#2468;&#2503; &#2489;&#2476;&#2503;&#2404; &#2478;&#2494;&#2439;&#2455;&#2509;&#2480;&#2503;&#2486;&#2472;&#2503;&#2480; &#2478;&#2494;&#2471;&#2509;&#2479;&#2478;&#2503; &#2472;&#2495;&#2480;&#2509;&#2476;&#2494;&#2458;&#2495;&#2468; &#2486;&#2495;&#2453;&#2509;&#2487;&#2494;&#2480;&#2509;&#2469;&#2496;&#2470;&#2503;&#2480; &#2480;&#2503;&#2460;&#2495;&#2488;&#2509;&#2463;&#2509;&#2480;&#2503;&#2486;&#2472; &#2475;&#2495; &#2535;&#2543;&#2539;/= &#2463;&#2494;&#2453;&#2494; &#2470;&#2503;&#2451;&#2527;&#2494;&#2480; &#2474;&#2509;&#2480;&#2527;&#2507;&#2460;&#2472; &#2472;&#2494;&#2439;&#2404; &#2479;&#2494;&#2480;&#2494; &#2439;&#2468;&#2495;&#2478;&#2471;&#2509;&#2479;&#2503; &#2480;&#2503;&#2460;&#2495;&#2488;&#2509;&#2463;&#2509;&#2480;&#2503;&#2486;&#2472; &#2475;&#2495; &#2535;&#2543;&#2539;/= &#2463;&#2494;&#2453;&#2494; &#2460;&#2478;&#2494; &#2470;&#2495;&#2527;&#2503;&#2459;&#2503;&#2472; &#2468;&#2494;&#2470;&#2503;&#2480; &#2474;&#2497;&#2472;&#2480;&#2494;&#2527; &#2480;&#2503;&#2460;&#2495;&#2488;&#2509;&#2463;&#2509;&#2480;&#2503;&#2486;&#2472; &#2475;&#2495; &#2535;&#2543;&#2539;/= &#2463;&#2494;&#2453;&#2494; &#2470;&#2503;&#2451;&#2527;&#2494;&#2480; &#2474;&#2509;&#2480;&#2527;&#2507;&#2460;&#2472; &#2472;&#2494;&#2439;&#2404; &#2486;&#2495;&#2453;&#2509;&#2487;&#2494; &#2474;&#2509;&#2480;&#2468;&#2495;&#2487;&#2509;&#2464;&#2494;&#2472;&#2503; &#2477;&#2480;&#2509;&#2468;&#2495;&#2480; &#2468;&#2494;&#2480;&#2495;&#2454; &#2536;&#2541;/&#2534;&#2540;/&#2536;&#2534;&#2535;&#2543; &#2489;&#2468;&#2503; &#2537;&#2534;/&#2534;&#2540;/&#2536;&#2534;&#2535;&#2543;&#2404;
 </div>
  <p style="height:50px;"></p> </center> <script type="text/javascript">clearSscInfo();</script><div style="display: none;"><img src="resources/reloadCaptcha1.gif" alt="Captcha Image Preload"></div></body> </html>