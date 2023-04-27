<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductInfo.aspx.cs" Inherits="Web_Midterm.ProductInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ProductInfo Page</title>
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
        .title{
            color:white;
            text-align:center;
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
        .add{
            color:green;
            margin-top:10px;
        }
        .main_page{
            color:red;
            margin-top:10px;
        }
        .cart{
            margin-top:10px;
        }
        </style>
</head>
<body>
    <div class="title">
        <h1>Car Details</h1>
    </div>
    <form class="main_container" runat="server">
        <div class="img_container">
            <asp:Image ID="image_id" CssClass="image" runat="server" ImageUrl="images/cars/b_serisi_fl-2.png" />
        </div>
        <div class="details">
            <asp:Label CssClass="Title" ID="title" runat="server"></asp:Label>
            <asp:Label CssClass="label" ID="category" runat="server"></asp:Label>
            <asp:Label CssClass="label" ID="brand" runat="server"></asp:Label>
            <asp:Label CssClass="label" ID="quality" runat="server"></asp:Label>
            <asp:Label CssClass="label" ID="description" runat="server"></asp:Label>
            <asp:Label CssClass="label" ID="price" runat="server"></asp:Label>
            <asp:Button CssClass="add" runat="server" Text="Add to Cart" OnClick="Unnamed1_Click" />
            <asp:Button CssClass="cart" runat="server" Text="Go to Cart" OnClick="Unnamed2_Click" />
            <asp:Button ID="return" CssClass="main_page" runat="server" Text="Return to Main Page" OnClick="return_Click" />
        </div>
    </form>
</body>
</html>
