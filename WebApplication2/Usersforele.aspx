<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Usersforele.aspx.cs" Inherits="WebApplication2.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderTop" runat="server">
     <style>
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
         </style>
     <div class="w3-row w3-padding-64" id="menu">
    <div class="w3-col l6 w3-padding-large">
    <asp:Button ID="Button2" runat="server" Text="View" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Text="Edit" OnClick="Button3_Click" />
    <br /><br /><div>
           <asp:TextBox runat="server" ID="txtSearch" AutoCompleteType="Disabled"/>
           <asp:Button runat="server" ID="btnSearchBar" Style="background-color: #c9302c;" CssClass="btn btn-danger" Text="Search" OnClientClick="javascipt: return confirm('are you sure want to search ?');" OnClick="btnSearchBar_Click" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

       </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="UserId"  ForeColor="Black" Width="16px" style="margin-right: 0px; margin-left: 5px;" Height="317px">
    <Columns>
        <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
        <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
        <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
        <asp:BoundField DataField="Accesstype" HeaderText="Accesstype" SortExpression="Accesstype" />
        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ArtistManagementConnectionString %>" SelectCommand="SELECT [UserId], [Firstname], [Lastname], [Accesstype], [Department] FROM [Users]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ArtistManagementConnectionString %>" SelectCommand="SELECT [UserId], [Firstname], [Lastname], [Accesstype], [Department], [Email] FROM [Users]"></asp:SqlDataSource>
   </div>
         </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderTest" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBottom" runat="server">
</asp:Content>
