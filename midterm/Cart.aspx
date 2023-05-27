<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Web_Midterm.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart Page</title>
    <style type="text/css">
       body{
           
            font-family: 'Poppins',sans-serif;
            background-color:midnightblue;
        }
        .label{
            text-align:center;
            color:white;
            margin-top:10px;
        }
        .Title{
            font-size:x-large;
            text-align:center;
            color:white;
            margin-top:10px;
        }
        h1{
            text-align:center;
            color:white;
        }
        .main_container{
            display:flex;
            flex-direction:row;
            align-items: center;
            justify-content: center;
        }
        .img_container{
            box-shadow: 0 0 40px rgba(8,7,16,0.6);
            backdrop-filter: blur(10px);
            margin-left:-400px;
        }
        .details{
            box-shadow: 0 0 40px rgba(8,7,16,0.6);
            backdrop-filter: blur(10px);
            display:flex;
            flex-direction:column;           
        }
        .main_page{
            color:red;
            margin-top:10px;
        }
        .confirm_{
            color:green;
            margin-top:10px;
        }
    </style>
</head>
<body>
    <div class="title">
        <h1>Selected Cars</h1>
    </div>
    <form class="main_container" runat="server">
        <div id="image_container" class="img_container" runat="server">
        </div>
        <div id="detail_container" class="details" runat="server">
            <asp:Label CssClass="Title" ID="title" runat="server"></asp:Label>
            <asp:Label CssClass="label" ID="category" runat="server"></asp:Label>
            <asp:Label CssClass="label" ID="brand" runat="server"></asp:Label>
            <asp:Label CssClass="label" ID="quality" runat="server"></asp:Label>
            <asp:Label CssClass="label" ID="description" runat="server"></asp:Label>
            <asp:Label CssClass="label" ID="price" runat="server"></asp:Label>
            <asp:Button ID="return" CssClass="main_page" runat="server" Text="Return to Main Page" OnClick="return_Click" />
            <asp:Button ID="confirm" CssClass="confirm_" runat="server" Text="Confirm" OnClick="confirm_Click" />
        </div>
    </form>
</body>
</html>
