<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductInfo.aspx.cs" Inherits="ProductInfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Product Info</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2><asp:Label ID="ProductName" runat="server"></asp:Label></h2>
<table>
    <tr><td>Distributor: </td><td><asp:Label ID="lblDistributor" runat="server"></asp:Label></td></tr>
    <tr><td>Usually ships in: </td><td><asp:Label ID="lblShips" runat="server"></asp:Label></td></tr>
</table>
</asp:Content>

