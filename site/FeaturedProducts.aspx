<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FeaturedProducts.aspx.cs" Inherits="FeaturedProducts" Title="Untitled Page" Trace="true"%>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Featured Products</title> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Featured Products</h2>
    <asp:DataList 
        id="dlFeatured" 
        runat="server" 
        Width="505px"
        BorderColor="black" 
        BorderWidth="1" 
        GridLines="Both" 
        CellPadding="3" 
        CellSpacing="0">

        <HeaderTemplate>
            <table width="100%">
                <tr style="background-color=9999FF">
                    <th><b>Product Name</b></th>
                    <th><b>Description</b></th>
                    <th><b>Price</b></th>
                </tr>
        
        </HeaderTemplate>
        <ItemTemplate>
            <tr style="background-color=FFFFCC">
                <td><a href="ProductInfo.aspx?ProductName=<%# DataBinder.Eval(Container.DataItem, "Product Name") %>"><%# DataBinder.Eval(Container.DataItem, "Product Name") %></a></td>
                <td><%# DataBinder.Eval(Container.DataItem, "Description") %></td>
                <td><%# DataBinder.Eval(Container.DataItem, "Price") %></td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr "background-color=CCCCFF">
                <td><a href="ProductInfo.aspx?ProductName=<%# DataBinder.Eval(Container.DataItem, "Product Name") %>"><%# DataBinder.Eval(Container.DataItem, "Product Name") %></td>
                <td><%# DataBinder.Eval(Container.DataItem, "Description") %></td>
                <td><%# DataBinder.Eval(Container.DataItem, "Price") %></td>
            </tr>        
        </AlternatingItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:DataList>
    <br />
    [<b>start time:</b> <asp:Label id="lblStartTime" runat="server"></asp:Label>]
    [<b>execution time:</b> <asp:Label id="lblExecutionTime" runat="server"></asp:Label> seconds]
</asp:Content>

