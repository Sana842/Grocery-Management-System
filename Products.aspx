<%@ Page Title="" Language="C#" MasterPageFile="~/GrocerySite.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .imgclass {
            width: 260px;
            height: 272px;
        }
        .auto-style3 {
            border: 2px solid #808080;
            border-radius: 4px 4px;
            padding: 10px 10px;
            margin: 23px 104px 10px 15px;
            min-height: 450px;
            width: 1391px;
            font-size: 18px;
        }
        .auto-style4 {
            height: 51px;
        }
        .auto-style5 {
            font-size: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 120px">
        <fieldset class="auto-style3">
            <legend style="font-size: 20px;">Products</legend>
            <div align="center" class="auto-style4">
                <asp:Label ID="lblMessage" runat="server" CssClass="lblresponse" />
            </div>
            <asp:DataList runat="server" ID="gvProduct" RepeatDirection="Horizontal" RepeatColumns="5" Width="1369px">
                <ItemTemplate>
                    <asp:Label Visible="false" ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                    <br />
                    <asp:Label ID="TypeIdLabel" runat="server" Text='<%# Eval("CategoryId") %>' Visible="false" />
                    <br />
                    <table>
                        <tr>
                            <td style="border-style: dashed; border-width: 1px;">
                                <asp:Image ID="imgPd" CssClass="imgclass" runat="server" ImageUrl='<%#"~/Images/"+Eval("ImageUrl").ToString() %>' /><br />
                                <br />
                                Product Name:
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                                <br />
                                Description:
                                <asp:Label ID="DiscriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                <br />
                                Price:
                                <asp:Label ID="PriceLabel" runat="server" Text='<%#"₹"+ Eval("Price") %>' />
                                <br />
                                Enter The Quantity:&nbsp;
                                <asp:TextBox ID="txtQty" runat="server" Width="30" Height="20" Text="1" style="text-align:center" > </asp:TextBox>
                                <asp:Label ID="UnitLabel" runat="server" Text='<%# Eval("Unit") %>' />
                                <center class="auto-style5" >
                                    <br />
                                    <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" autopostback="true" CssClass="button" onClick="btnAddToCart_Click" causesvalidation="true" style="font-size: 1.2em; padding: 8px 16px;" />
                                </center>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </fieldset>
    </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
