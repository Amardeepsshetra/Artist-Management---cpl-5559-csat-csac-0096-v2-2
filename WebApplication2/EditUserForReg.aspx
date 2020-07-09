<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="EditUserForReg.aspx.cs" Inherits="WebApplication2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderTop" runat="server">
     <h3>EDIT USER</h3>
     <p>
         <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Show My Data" />
     </p>
    <asp:Label ID="Label1" runat="server" Text="UserId"></asp:Label>     <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label4" runat="server" Text="AccessType"></asp:Label> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label5" runat="server" Text="Department"></asp:Label> <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label> <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label> <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label9" runat="server" Text="Date Of Birth"></asp:Label> <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label10" runat="server" Text="Phone Number"></asp:Label> <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label11" runat="server" Text="Address"></asp:Label> <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" /><br />
    <asp:Button ID="Button2" runat="server" Text="Request Elevated Access" OnClick="Button2_Click" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderTest" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBottom" runat="server">
</asp:Content>
