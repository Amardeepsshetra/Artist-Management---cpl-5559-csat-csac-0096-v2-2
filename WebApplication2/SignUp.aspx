﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication2.SignUp" %>

<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        
         @import url(https://fonts.googleapis.com/css?family=Open+Sans);
.btn { display: inline-block; *display: inline; *zoom: 1; padding: 4px 10px 4px; margin-bottom: 0; font-size: 13px; line-height: 18px; color: #333333; text-align: center;text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); vertical-align: middle; background-color: #f5f5f5; background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6); background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6)); background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6); background-image: -o-linear-gradient(top, #ffffff, #e6e6e6); background-image: linear-gradient(top, #ffffff, #e6e6e6); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0); border-color: #e6e6e6 #e6e6e6 #e6e6e6; border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25); border: 1px solid #e6e6e6; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); cursor: pointer; *margin-left: .3em; }
.btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] { background-color: #e6e6e6; }
.btn-large { padding: 9px 14px; font-size: 15px; line-height: normal; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px; }
.btn:hover { color: #333333; text-decoration: none; background-color: #e6e6e6; background-position: 0 -15px; -webkit-transition: background-position 0.1s linear; -moz-transition: background-position 0.1s linear; -ms-transition: background-position 0.1s linear; -o-transition: background-position 0.1s linear; transition: background-position 0.1s linear; }
.btn-primary, .btn-primary:hover { text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); color: #ffffff; }
.btn-primary.active { color: rgba(255, 255, 255, 0.75); }
.btn-primary { background-color: #4a77d4; background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4); background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#6eb6de), to(#4a77d4)); background-image: -webkit-linear-gradient(top, #6eb6de, #4a77d4); background-image: -o-linear-gradient(top, #6eb6de, #4a77d4); background-image: linear-gradient(top, #6eb6de, #4a77d4); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de, endColorstr=#4a77d4, GradientType=0);  border: 1px solid #3762bc; text-shadow: 1px 1px 1px rgba(0,0,0,0.4); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5); }
.btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] { filter: none; background-color: #4a77d4; }
.btn-block { width: 100%; display:block; }

* { -webkit-box-sizing:border-box; -moz-box-sizing:border-box; -ms-box-sizing:border-box; -o-box-sizing:border-box; box-sizing:border-box; }

html { width: 100%; height:140%; overflow:scroll; }

body { 
    width: 100%;
    height:100%;
    color:white;
    font-family: 'Open Sans', sans-serif;
    background: #092756;
    background: -moz-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%),-moz-linear-gradient(top,  rgba(57,173,219,.25) 0%, rgba(42,60,87,.4) 100%), -moz-linear-gradient(-45deg,  #670d10 0%, #092756 100%);
    background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -webkit-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -webkit-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
    background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), linear-gradient(to bottom,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), linear-gradient(135deg,  #670d10 0%,#092756 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3E1D6D', endColorstr='#092756',GradientType=1 );
   
}

.login { 
    position: absolute;
    top: 40%;
    left: 30%;
    margin: -150px 0 0 0px;
    width:700px;
    height:300px;
}
.login h1 { color: #fff; text-shadow: 0 0 10px rgba(0,0,0,0.3); letter-spacing:1px; text-align:center; }
input { 
    width: 100%; 
    margin-bottom: 10px; 
    background: rgba(0,0,0,0.3);
    border: none;
    outline: none;
    padding: 10px;
    font-size: 13px;
    color: #fff;
    border: 1px solid rgba(0,0,0,0.3);
    border-radius: 4px;
    box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
    -webkit-transition: box-shadow .5s ease;
    -moz-transition: box-shadow .5s ease;
    -o-transition: box-shadow .5s ease;
    -ms-transition: box-shadow .5s ease;
    transition: box-shadow .5s ease;
}
input:focus { box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2); }

    </style>
</head>
<body>
    <h1 style="font-size:200%;position:center;color:white;text-align:center">ADD USER</h1>
    <form id="form1" runat="server">
        <div class="login">
    <asp:Label ID="Label1" runat="server" Text="UserId" ></asp:Label>     <asp:TextBox ID="TextBox11" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />
    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label> <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />
    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label> <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />
    <asp:Label ID="Label4" runat="server" Text="AccessType"></asp:Label> <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" AutoCompleteType="Disabled" >Regular User</asp:TextBox><br />
    <asp:Label ID="Label5" runat="server" Text="Department"></asp:Label> <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" AutoCompleteType="Disabled">Filled By Admin</asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label> <asp:TextBox ID="TextBox5" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />
    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label> <asp:TextBox ID="TextBox6" runat="server" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox><br />
    <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label> <asp:TextBox ID="TextBox7" runat="server" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Label ID="Label9" runat="server" Text="Date Of Birth"></asp:Label> <asp:TextBox ID="TextBox8" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
    &nbsp;<br />
    <asp:Label ID="Label10" runat="server" Text="Phone Number"></asp:Label> <asp:TextBox ID="TextBox9" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />
    <asp:Label ID="Label11" runat="server" Text="Address"></asp:Label> <asp:TextBox ID="TextBox10" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />
    <p class="prompt">
        <label for="CaptchaCodeTextBox">Retype the characters from the picture:</label>
      </p>
      <cc1:WebFormsCaptcha ID="ExampleCaptcha" runat="server" />

         <div class="validationDiv">
    <asp:TextBox ID ="txtCaptcha" runat ="server" AutoCompleteType="Disabled"></asp:TextBox>
 <cc1:CaptchaValidator ID="ExampleCaptchaValidator" runat="server"
          ControlToValidate="CaptchaCodeTextBox" CaptchaControl="ExampleCaptcha"
          ErrorMessage="Retype the characters exactly as they appear in the picture"
          EnableClientScript="true" SetFocusOnError="true">Incorrect CAPTCHA code </cc1:CaptchaValidator>
    <br />
        <asp:Label ID="ValidationPassedLabel" runat="server" CssClass="correct" 
        Visible="False" Text="Validation passed!" />

        <br />
   <asp:Button ID="Button1" runat="server" Text="SignUp!" class="btn btn-primary btn-block btn-large" OnClick="Button1_Click" />
          </div>
       </div>
        </form>
</body>
</html>

