<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adduser.aspx.cs" Inherits="WebApplication2.WebForm2" %>
<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h3>ADD USER</h3>
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="UserId"></asp:Label>     <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label4" runat="server" Text="AccessType"></asp:Label> <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" >Regular User</asp:TextBox><br />
    <asp:Label ID="Label5" runat="server" Text="Department"></asp:Label> <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True">Filled By Admin</asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label> <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label> <asp:TextBox ID="TextBox7" runat="server" ></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Must be same as Password"></asp:CompareValidator>
    <asp:Label ID="Label13" runat="server" Text="(*Must be Same as Password)"></asp:Label>
    <br />
    <asp:Label ID="Label9" runat="server" Text="Date Of Birth"></asp:Label> <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <a href="javascript:OpenPopupPage('calendar.aspx','<%= TextBox8.ClientID %>','<%= Page.IsPostBack %>');">
                        <img src="images/calendar-icon.jpg" style="height: 25px; width: 36px" /></a>
    <br />
    <asp:Label ID="Label10" runat="server" Text="Phone Number"></asp:Label> <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label11" runat="server" Text="Address"></asp:Label> <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox><br />
    <p class="prompt">
        <label for="CaptchaCodeTextBox">Retype the characters from the picture:</label>
      </p>
      <cc1:WebFormsCaptcha ID="ExampleCaptcha" runat="server" />

      <div class="validationDiv">
    <asp:TextBox ID ="txtCaptcha" runat ="server"></asp:TextBox>
 <cc1:CaptchaValidator ID="ExampleCaptchaValidator" runat="server"
          ControlToValidate="CaptchaCodeTextBox" CaptchaControl="ExampleCaptcha"
          ErrorMessage="Retype the characters exactly as they appear in the picture"
          EnableClientScript="true" SetFocusOnError="true">Incorrect CAPTCHA code </cc1:CaptchaValidator>
    <br />
        <asp:Label ID="ValidationPassedLabel" runat="server" CssClass="correct" 
        Visible="False" Text="Validation passed!" />

        <br />
   <asp:Button ID="Button1" runat="server" Text="SignUp!" OnClick="Button1_Click" />
          </div>
        </form>
</body>
</html>
