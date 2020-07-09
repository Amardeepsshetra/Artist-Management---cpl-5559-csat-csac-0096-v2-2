<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderTop" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Create" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="View" /><asp:Button ID="Button3" runat="server" Text="Edit" OnClick="Button3_Click" />
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="UserId" DataSourceID="SqlDataSource2" ForeColor="Black" Width="16px" style="margin-right: 0px; margin-left: 5px;" Height="317px">
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
   
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderTest" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBottom" runat="server">
</asp:Content>
