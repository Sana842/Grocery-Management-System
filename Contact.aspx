<%@ Page Title="" Language="C#" MasterPageFile="~/GrocerySite.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 1375px;
        }
        .auto-style4 {
            float: left;
            width: 98%;
        }
        .auto-style5 {
            width: 599px;
            height: 437px;
        }
        .auto-style6 {
            width: 626px;
            float: right;
            height: 466px;
            font-size:23px;
        }
        .auto-style7 {
            height: 387px;
        }
        .auto-style8 {
            width: 449px;
        }
        .auto-style9 {
            height: 483px;
            width: 610px;
        }
        .auto-style10 {
            height: 86px;
            width: 163px;
        }
        .auto-style11 {
            width: 449px;
            height: 86px;
        }
        .auto-style12 {
            width: 163px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="auto-style4">
        <fieldset class="fieldsetmain">
            <legend style="font-size: 20px;">Our Location
            </legend>
            <div class="auto-style3">
                   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3780.005984501137!2d73.790096978786!3d18.663727437226335!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2b9d54f3dfdbd%3A0xe67bc929e9cf96b3!2sKasturi%20Market%20Rd%2C%20Chinchwad%2C%20Pimpri-Chinchwad%2C%20Maharashtra%20411019!5e0!3m2!1sen!2sin!4v1708164289249!5m2!1sen!2sin" frameborder="0" style="border: 0" class="auto-style5"></iframe>              
                <%--<img src="Images/map.png" alt="map" />--%>

                <div style="border-left-style: none; border-left-color: inherit; border-left-width: 300px;" class="auto-style6">
                    <fieldset style="margin: 0px; " class="auto-style7">
                        <legend>Query
                        </legend>
                        <table class="auto-style9">
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="txtname" runat="server" Height="27px" Width="294px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Rf33" runat="server" ErrorMessage="Required" ControlToValidate="txtname" ForeColor="#990000" />
                                </td>

                            </tr>
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="lblEmail" runat="server" Text="Email ID"></asp:Label></td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="txtemail" runat="server" Height="26px" Width="291px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Rf2" runat="server" ForeColor="#990000" ErrorMessage="Required" ControlToValidate="txtEmail" />
                                </td>

                            </tr>
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="lblContact" runat="server" Text="Contact Number"></asp:Label></td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="txtContact" runat="server" Height="30px" Width="292px"></asp:TextBox>
                                    <asp:RequiredFieldValidator  runat="server" ForeColor="#990000" ErrorMessage="Required" ControlToValidate="txtContact" />
                                </td>

                            </tr>
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="lblMessage" runat="server" Text="Massage"></asp:Label></td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="txtMessage" runat="server" Height="95px" TextMode="MultiLine" Width="316px"></asp:TextBox></td>

                            </tr>
                            <tr align="center">
                                <td class="auto-style10"></td>
                                <td class="auto-style11">
                                    <span style="float: left; text-align: left;">
                                        <asp:Button ID="btnSendMsg" runat="server" Text="Send Message" CssClass="button" OnClick="btnSendMsg_Click" Height="41px" Width="175px" /><br />
                                        &nbsp;
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtemail" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" runat="server" ForeColor="#990000" ErrorMessage="Email not valid" Display="Dynamic"></asp:RegularExpressionValidator><br />
                                        <asp:RequiredFieldValidator ID="Rf1" runat="server" ForeColor="#990000" ErrorMessage="Message Required" ControlToValidate="txtMessage" /><br />
                                        <asp:Label ID="lblresp" runat="server" CssClass="lblresponse" />
                                    </span>
                                </td>


                            </tr>
                        </table>
                    </fieldset>
                </div>
            </div>

            <div>
                <div style="width: 290px; float: left;">
                    <fieldset style="margin: 0px; height: 100px;font-size:15px;">
                        <legend>Address
                        </legend>
                        <b>Phone : 98787687463</b>
                        <p>
                            Kasturi Market near , Thermax Chowk </p>
                        <p>
                            India</p>
                        <p>
                            2120</p>
                    </fieldset>
                </div>
                <div style="width: 280px; float: left">
                    <fieldset style="height: 100px;font-size:15px;">
                        <legend>Contact Information
                        </legend>

                        <p>
                            <b>Email :</b> grocery@gmail.com<br />
                            <b>Owner Name :</b> Muskan Sutar<br />
                        </p>
                    </fieldset>
                </div>
            </div>
        </fieldset>
    </div>
</asp:Content>

