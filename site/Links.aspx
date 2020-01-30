<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Links.aspx.cs" Inherits="Links" Title="Untitled Page" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Links</h2>
        <asp:DataList id="lstLinks" runat="server"
          BorderColor="black"
          BorderWidth="1"
          GridLines="Both"
          CellPadding="4"
          CellSpacing="0"
          >
            <HeaderTemplate>
                <table>
            </HeaderTemplate>

            <ItemTemplate>
                <tr>
                    <td><a href="<%# ((DictionaryEntry)Container.DataItem).Value %>"><%# ((DictionaryEntry)Container.DataItem).Key %></a></td> 
                </tr>
            </ItemTemplate>
        
            <FooterTemplate>
            </table>
            </FooterTemplate>

        </asp:DataList>
</asp:Content>

