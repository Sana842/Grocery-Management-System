<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/GSADMIN.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

    <style type="text/css">
        .container {
            width: calc(44.44% - 20px);
            height: 150px;
            border: 1px solid #ccc;
            margin: 10px;
            display: inline-block;
            text-align: center;
            vertical-align: top;
            box-sizing: border-box;
        }

        .count-container {
            font-size: 40px;
            margin-top: 20px;
        }

        .label {
            font-size: 18px;
            margin-top: 10px;
        }

        .icon {
            font-size: 30px;
            margin-top: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <i class="fas fa-shopping-cart icon"></i>
        <span id="orderCountContainer" runat="server" class="count-container"></span>
        <br />
        <span class="label">Orders</span>
    </div>
    <div class="container">
        <i class="fas fa-box icon"></i>
        <span id="productCountContainer" runat="server" class="count-container"></span>
        <br />
        <span class="label">Products</span>
    </div>
    <div class="container">
        <i class="fas fa-star icon"></i>
        <span id="reviewCountContainer" runat="server" class="count-container"></span>
        <br />
        <span class="label">Reviews</span>
    </div>
    <div class="container">
        <i class="fas fa-user icon"></i>
        <span id="registrationCountContainer" runat="server" class="count-container"></span>
        <br />
        <span class="label">Registrations</span>
    </div>
</asp:Content>
