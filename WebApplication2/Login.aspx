<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="UserName / Email ID"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /> <br />

            <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" /><br /><br />
           
           <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Adduser.aspx">Not Registered?Sign Up!</asp:LinkButton>
        </div>
    </form>
</body>
</html>
