<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="EditUserForReg.aspx.cs" Inherits="WebApplication2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderTop" runat="server">
     <style>html { width: 100%; height:140%; overflow:scroll; }

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
  <div class="w3-row w3-padding-64" id="menu">
    <div class="w3-col l6 w3-padding-large">
     <h3>EDIT INFORMATION</h3>
     <p>
         <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" class="btn btn-primary btn-block btn-large"  Text="Show My Data" />
         <br />
         <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
     </p>
    <asp:Label ID="Label1" runat="server" Text="UserId"></asp:Label>     <asp:TextBox ID="TextBox11" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />
    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label> <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />
    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label> <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />
    <asp:Label ID="Label4" runat="server" Text="AccessType"></asp:Label> <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />
    <asp:Label ID="Label5" runat="server" Text="Department"></asp:Label> <asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="Disabled" ReadOnly="True">Filled By Admin</asp:TextBox><br />
    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label> <asp:TextBox ID="TextBox5" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />
    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label> <asp:TextBox ID="TextBox6" runat="server" AutoCompleteType="Disabled" ReadOnly="True"></asp:TextBox><br />
    <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label> <asp:TextBox ID="TextBox7" runat="server" AutoCompleteType="Disabled" ReadOnly="True"></asp:TextBox><br />
    <asp:Label ID="Label9" runat="server" Text="Date Of Birth"></asp:Label> <asp:TextBox ID="TextBox8" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />
    <asp:Label ID="Label10" runat="server" Text="Phone Number"></asp:Label> <asp:TextBox ID="TextBox9" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />
    <asp:Label ID="Label11" runat="server" Text="Address"></asp:Label> <asp:TextBox ID="TextBox10" runat="server" AutoCompleteType="Disabled"></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" Text="Edit" class="btn btn-primary btn-block btn-large"  OnClick="Button1_Click" /><br />
        
    <asp:Button ID="Button2" runat="server" Text="Request Elevated Access" class="btn btn-primary btn-block btn-large"  OnClick="Button2_Click" />
        </div>
      </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderTest" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBottom" runat="server">
</asp:Content>
