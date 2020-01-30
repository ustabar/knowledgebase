<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateAccount.aspx.cs" Inherits="CreateAccount" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Create User Account</title> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Create a new user account</h2>
    <table>
        <tr><td>First Name:</td><td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td></tr>
        <tr><td>Last Name:</td><td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td></tr>
        <tr><td>User Name:</td><td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td></tr>
        <tr><td></td><td><asp:Button id="btnOK" runat="server" Text="OK" OnClick="btnOK_Click"/></td></tr>
    </table>
    <br />
    <br />
    <br />
    <asp:Label ID="lblResult" runat="server"></asp:Label>
</asp:Content>

