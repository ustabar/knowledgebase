<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CompanyInformation.aspx.cs" Inherits="CompanyInformation" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Company Information</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Company Information</h2>
    <p>Buggy Bits was established in 1994 as a one-man company delivering really buggy software and t-shirts noone would ever wear.</p>
    <p>Since then it has grown into a large organization with over 1754 employees and the main focus for the 
    company today is to sell worthless products at horribly high
        prices.</p>
    <p></p>
    <p><b>Send us a mesasge</b></p>
    <asp:TextBox runat="server" ID="txtMessage"></asp:TextBox><br />
    <asp:Button id="btnContact" Text="Send" runat="server" OnClick="btnContact_Click" />
</asp:Content>

