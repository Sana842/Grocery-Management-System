<%@ Page Title="" Language="C#" MasterPageFile="~/GrocerySite.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .lblresponse {
            font-size:16px !important;
            color:#851010;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     
    <div style="width: 100%; float: left">
        <fieldset class="fieldsetmain">
            <legend style="font-size: 20px">Your Order</legend>
    <!-- Add any necessary hidden input fields for the form submission -->
    <input id="razorpay_payment_id" type="hidden" name="razorpay_payment_id" />
    <input id="razorpay_signature" type="hidden" name="razorpay_signature" />

   <div align="center" style="height:30px;">
            <asp:Label ID="lblMsg" runat="server" CssClass="lblresponse"/>
        </div>
            <div id="divmain" runat="server">
                 <div style="width: 100%;" align="center">
                <asp:GridView ID="gvorder" runat="server" Width="574px" CaptionAlign="Top"
                    AutoGenerateColumns="False" Height="100px" BackColor="White"
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3"
                    CellSpacing="2" GridLines="Vertical"
                    EmptyDataText="There Are no items in Your Cart">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="imgPd" runat="server" Height="60px"
                                    ImageUrl='<%# Eval("Product_img") %>' Width="60px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Order Number" Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="lblOrderNum" runat="server" Text='<%# Eval("OrderNumber") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product Name">
                            <ItemTemplate>
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Product_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         
                        <asp:TemplateField HeaderText="Qty">
                            <ItemTemplate>
                                <asp:Label ID="lblQty" runat="server" Text='<%# Bind("Qty") %>'></asp:Label>  <asp:Label ID="lblUnit" runat="server" Text='<%# Eval("Unit") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                ₹<asp:Label ID="lblPrice" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="TotalPrice">
                            <ItemTemplate>
                                &nbsp;₹<asp:Label ID="lbltotPriceGv" runat="server" Text='<%#Bind("TotalPrice") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataRowStyle BackColor="#eeeeee" BorderColor="Black"
                        BorderStyle="Solid" BorderWidth="1px" Font-Size="Large" ForeColor="#851010"
                        HorizontalAlign="Center" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#851010" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#851010" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </div>

            <div style="width: 100%; margin-top: 10px" align="center">
                <fieldset style="width: 550px;" align="left">
                    <legend>Shipping Detail</legend>
                    <table style="width: 100%">
                        <tr>
                            <td>Name *</td>
                            <td>
                                                <input  type="text" class="long" placeholder="Name" style="height: 16px; width: 214px;" required/>
   <td>
  </tr>
                        <tr>
                            <td>Phone *</td>
                            <td>
                            <input  type="text" class="long" placeholder="Phone number" style="height: 16px; width: 214px;" required/>
  </td>
                            <td>
                          
                            </td>

                        </tr>

                        <tr>
                            <td>Street Address *
                            </td>
                            <td>
                                                 <input  type="text" class="long" placeholder="Address" style="height: 16px; width: 214px;" required/>
                                </td>
                            <td>
                        </tr>
                        <tr>
                            <td>City *</td>
                            <td>
                                           <input  type="text" class="long" placeholder="City" style="height: 16px; width: 214px;" required/>
        <td>
                       </tr>
                        <tr>
                            <td>State *</td>
                            <td>
                                                    <input  type="text" class="long" placeholder="State" style="height: 16px; width: 214px;" required/>
                            </td>
                            <td>
                          </tr>
                        <tr>
                            <td>Postal Code *
                            </td>
                            <td>
                                <input  type="text" class="long" placeholder="Pincode" style="height: 16px; width: 214px;" required/>
    </td>
                          
                        </tr>
                        <tr>
    <td>Total Price</td>
    <td>
        <input id="lbltotPrice" type="text" class="long"  readonly style="height: 16px; width: 214px;" />
    </td>
</tr>
                    </table>
                </fieldset>
                <div style="width: 574px; margin-top: 10px;">
                    <div style="width: 200px; float: right">
                        <span><asp:Label ID="llb" runat="server" Text=""></asp:Label></span><br />
                       <tr>
    <td align="center">
        <asp:Button ID="rzp_button1"  CssClass="button" Text="PAY TO CLICK" OnClick="rzp_button1_Click" Style="font-weight: bold;" />
                   </td>
                           <button type="submit"  id="rzp-button2"OnClick="rzp_button1_Click" style="background-color:brown;color:white;">PAY TO CLICK</button>
</tr>

             <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        document.getElementById('rzp-button2').addEventListener('click', function (e) {
            e.preventDefault();

            var totalAmount = document.getElementById('lbltotPrice').value;
            var options = {
                "key": "rzp_test_uQXs0CrLs3Mstq",
                "amount": totalAmount * 100,
                "currency": "INR",
                "name": "Grocery store",
                "description": "Tron Legacy",
                "image": "./Images/ge.jpg",
                "prefill": {
                    "name": "Daft Punk",
                    "email": "customer@merchant.com",
                    "contact": "+919999999999"
                },
                "notes": {
                    "address": "Hello World",
                    "merchant_order_id": "12312321"
                },
                "theme": {
                    "color": "#F37254"
                }
            };
            options.handler = function (response) {
                console.log("Payment response:", response);

                var paymentId = response.razorpay_payment_id;
                var signature = response.razorpay_signature;

                console.log("Payment ID:", paymentId);
                console.log("Signature:", signature);

                // Construct the redirect URL with payment information as query parameters
                var redirectUrl = "Home.aspx?payment_id=" + encodeURIComponent(paymentId) + "&signature=" + encodeURIComponent(signature);

                console.log("Redirect URL:", redirectUrl);

                // Redirect the user to the homepage with payment information
                window.location.href = redirectUrl;


          };
            var rzp = new Razorpay(options);
            rzp.open();
        });
    });
</script>
                
                    </div>
                </div>
            </div>
            </div>
           

            <div style="width: 100%;" align="center" id="dvempty" runat="server" visible="false">
                <div>
                    <table cellspacing="2" cellpadding="3" rules="cols" style="background-color: White; border-color: #999999; border-width: 1px; border-style: None; height: 100px; width: 574px;">
                        <tr align="center" style="color: #851010; background-color: #EEEEEE; border-color: Black; border-width: 1px; border-style: Solid; font-size: Large;">
                            <td colspan="6">There Are no items in Your Cart</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div style="width: 100%;" align="center" id="divLogin" runat="server" visible="false">
                <div>
                    <table cellspacing="2" cellpadding="3" rules="cols" style="background-color: White; border-color: #999999; border-width: 1px; border-style: None; height: 100px; width: 574px;">
                        <tr align="center" style="color: #851010; background-color: #EEEEEE; border-color: Black; border-width: 1px; border-style: Solid; font-size: Large;">
                            <td colspan="6">Please Login To Continue...</td>
                        </tr>
                    </table>
                </div>
            </div>
        </fieldset>
    </div>
</asp:Content>
