<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reviews.aspx.cs" Inherits="Reviews" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Reviews</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Reviews</h2>
<asp:Label ID="lblReview1" runat="server"></asp:Label><br />
<asp:Label id="lblSource1" runat="server"></asp:Label><br /><br />
<asp:Label ID="lblReview2" runat="server"></asp:Label><br />
<asp:Label id="lblSource2" runat="server"></asp:Label><br /><br />
    &nbsp;<asp:Button ID="btnRefresh" runat="server" Text="Refresh" OnClick="btnRefresh_Click" />
</asp:Content>

