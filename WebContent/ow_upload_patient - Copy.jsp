<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Upload Patient</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">

function valid()
{


var na3=document.s.pname.value;
if(na3=="")

{
alert("Please Enter Patient Name");
document.s.pname.focus();
return false;
}

var na6=document.s.email.value;
if(na6=="")

{
alert("Please Enter the Email");
document.s.email.focus();
return false;
}

if (na6.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}

if (na6.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}	


var na7=document.s.mobile.value;
if(na7.length!=10)

{
alert("Please Enter Valid Mobile number or Enter 10 Digit number");
document.s.mobile.focus();
return false;
}

if(na7=="")

{
alert("Please Enter  Mobile number");
document.s.mobile.focus();
return false;
}


var na5=document.s.address.value;
if(na5=="")

{
alert("Please Enter Patient Address");
document.s.address.focus();
return false;
}

var na55=document.s.dob.value;
if(na55=="")

{
alert("Please Enter Patient Date of Birth");
document.s.dob.focus();
return false;
}

var na555=document.s.hn.value;
if(na555=="")

{
alert("Please Enter Hospital Name");
document.s.hn.focus();
return false;
}

var dob=document.s.bg.value;
if(dob=="")

{
alert("please Enter Blood Group");
document.s.bg.focus();
return false;
}

var na10=document.s.dis.value;
if(na10=="")

{
alert("Please Enter Patient Disease");
document.s.dis.focus();
return false;
}

var na101=document.s.sym.value;
if(na101=="")

{
alert("Please Write Disease Symptom");
document.s.sym.focus();
return false;
}

var na11=document.s.age.value;
if(na11=="")

{
alert("Please Eneter Age ");
document.s.age.focus();
return false;
}


var na111=document.s.pic.value;
if(na111=="")

{
alert("please Select Picture");
document.s.pic.focus();
return false;
}



var na33=document.s.fn.value;
if(na33=="")

{
alert("Please Enter File Name ");
document.s.fn.focus();
return false;
}

}

function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
      
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 25px;
	color: #33FF99;
}
.style2 {font-size: 25px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1 style2">A Secure and Efficient Cloud-Centric Internet of Medical Things Enabled <br /> Smart Healthcare System with Public Verifiability </a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="owner_login.jsp"><span>IOT Device</span></a></li>
          <li><a href="user_login.jsp"><span>Health Care Center</span></a></li>
          <li><a href="cs_login.jsp"><span>Medical Cloud Servers</span></a></li>
          <li><a href="au_login.jsp"><span>KPS</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center"> Upload Patient Details </h2>
          <p align="center">&nbsp;</p>
		  
		  <form name="s" action="ow_upload_patient1.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">
            
			<span class="style11">
            <label for="name"> <br />
              Patient Name (required)<br />
            </label>
            </span>
            <p class="style4">
                <input id="pname" name="pname" class="text" />
            </p>
                  
                  <span class="style11">
                  <label for="email">Email Id (required)<br />
                  </label>
                  </span>
                  <p class="style4">
                    <input id="email" name="email" class="text" />
                  </p>
				  
                  <span class="style11">
                  <label for="mobile">Mobile Number (required)<br />
                  </label>
                  </span>
                  <p class="style4">
                    <input id="mobile" name="mobile" class="text" />
                  </p>
				  
                  <span class="style11">
                  <label for="address">Patient Address<br />
                  </label>
                  </span>
                  <p class="style4">
                    <textarea name="address" cols="50" id="address"></textarea>
                  </p>
				  
				  <span class="style4">
                  <label for="dob">Date of Birth (required)<br />
                  </label>
                  </span>
                  <p class="style4">
                    <input id="dob" name="dob" class="text" />
                  </p>
				  
				  <span class="style4">
                  <label for="dob">Hospital Name (required)<br />
                  </label>
                  </span>
                  <p class="style4">
                    <input id="hn" name="hn" class="text" />
                  </p>
				  
                  <span class="style11">
                  <label for="dob">Blood Group (required)<br />
                  </label>
                  </span>
                  <p class="style4">
                    <input id="bg" name="bg" class="text" />
                  </p>
				  
				  <span class="style11">
                  <label for="dob">Disease Name (required)<br />
                  </label>
                  </span>
                  <p class="style4">
                    <input id="dis" name="dis" class="text" />
                  </p>
				  
				  <span class="style11">
                  <label for="address">Disease Symptom<br />
                  </label>
                  </span>
                  <p class="style4">
                    <textarea name="sym" cols="50" id="sym"></textarea>
                  </p>
				  
				  <span class="style11">
                  <label for="dob">Age (required)<br />
                  </label>
                  </span>
                  <p class="style4">
                    <input id="age" name="age" class="text" />
                  </p>
				  
				  <span class="style4">
                  <label for="pic">Select Patient Picture (required)</label>
                  </span>
                  <label for="pic"><br />
                  </label>
                  <p>
                    <input type="file" id="pic" name="pic" class="text" />
                  </p>
				  
				  <span class="style11">
                  <label for="dob">Select File<br />
                  </label>
                  </span>
                  <p class="style4">
                    <input name="t42" type="file" id="file"  onchange="loadFileAsText()" required="required" />
                  </p>
				  
				  <span class="style4">
                  <label for="dob">File Name (required)<br />
                  </label>
                  </span>
                  <p class="style4">
                    <input id="fn" name="fn" class="text" />
                  </p>
				  
				  <span class="style4">
                  <label for="dob">Content<br />
                  </label>
                  </span>
                  <p class="style4">
                    <textarea name="text" id="textarea" cols="50" rows="15"></textarea>
                  </p>
				  
				  
				  
  
                  <p>&nbsp; </p>
                  <p>
                    <input name="submit" type="submit" value="Upload" />
                  </p>
          </form>
          
		  
		  
          <p>&nbsp;</p>
		  		         <p align="center"><a href="ow_main.jsp" class="style14">Back</a></p>
		  <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>IOT Device</span> Menu</h2>
          <ul class="sb_menu">
            <li><a href="ow_main.jsp"><span>IOT Device Main</span></a></li>
            <li><a href="owner_login.jsp"><span>Log Out</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
