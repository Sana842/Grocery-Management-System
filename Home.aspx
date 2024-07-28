<%@ Page Title="" Language="C#" MasterPageFile="~/GrocerySite.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            float: left;
            width: 297px;
            height: 310px;
        }
    .auto-style3 {
        float: right;
        width: 965px;
        height: 380px;
        margin-left: 5px;
        margin-top: 0px;
        margin-bottom: 3px;
    }
    .auto-style4 {
        float: left;
        width: 452px;
        height: auto;
        margin-left: auto;
        margin-right: auto;
        margin-top: 0px;
        margin-bottom: auto;
        background-color: #FFFFFF;
    }
    .auto-style5 {
        height: 165px;
        width: 315px;
    }
    .auto-style6 {
        width: 459px;
        height: 369px;
        float: left;
        font-size: 16px; /*background-color:#ededed;*/;
        background: url('/Images/left_content_bg.gif') repeat-x 50% top;
        margin-left: 13px;
    }
    .auto-style7 {
        height: 163px;
        width: 332px;
    }
    .auto-style9 {
        width: 315px;
    }
    .auto-style10 {
        width: 312px;
        height: 164px;
    }
    .auto-style11 {
        height: 149px;
        width: 324px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <br />
        <asp:Image ID="Image1" runat="server" Height="437px" Width="1491px" />
        <cc1:SlideShowExtender ID="SlideShowExtender" runat="server" TargetControlID="Image1"
            SlideShowServiceMethod="GetImages" ImageTitleLabelID="lblImageTitle" ImageDescriptionLabelID="lblImageDescription"
            AutoPlay="true" PlayInterval="2000" Loop="true">
        </cc1:SlideShowExtender>
    </div>
    <div>
        <div style="margin-right: 0px;" class="auto-style4">
            <div class="auto-style6">
                <div class="welcome">Welcome To Fresho Fruit Mart</div>
                <p>
                    At Fresho Fruit Mart our goal is to provide you with the wide varieties of Fruits and Vegetables.
                </p>
                <table>
                    <tr>
                        <td>UserName
                        </td>
                        <td style="width: 140px">
                            <asp:TextBox ID="txtUserName" runat="server" CssClass="textLogin" />
                        </td>
                        <td style="font-size: 11px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Name" ControlToValidate="txtUserName" ForeColor="#990000"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Password
                        </td>
                        <td>
                            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="textLogin" />
                        </td>
                        <td style="font-size: 11px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtPassword" ForeColor="#990000" CssClass="font"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button" OnClick="btnLogin_Click" />&nbsp;&nbsp;
                            <asp:LinkButton ID="lnkRegister" runat="server" Text="New Registration" PostBackUrl="~/Registration.aspx" CausesValidation="False" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2">
                            <asp:Label ID="lblResult" runat="server" />
                        </td>
                    </tr>
                </table>
                <br />
                <div class="contact_informatin">
                    <div class="welcome">Contact Us</div>
                    <table class="call">
                        <tr>
                            <td>
                                <img src="images/phone_icon.gif" alt="" title="" class="icon">
                            </td>
                            <td>98787687463</td>
                        </tr>
                        <tr>
                            <td>
                                <img src="images/contact_icon.gif" alt="" title="" class="icon">
                            </td>
                            <td>grocery@gmail.com</td>
                        </tr>
                    </table>

                </div>
            </div>
            <br />

        </div>

        <div class="auto-style3">
            <div class="welcome">Our Products</div>
            <img src="Images/wet2.jpg" class="auto-style9" /><img src="Images/wet1.jpg" class="auto-style9" />
            <img src="Images/2.jpg" class="auto-style11" /><img src="Images/wet3.jpg" class="auto-style10" />
            <img src="Images/2.jpg" class="auto-style5" /><img src="Images/2.jpg" class="auto-style7" /></div>
    </div>
</asp:Content>

