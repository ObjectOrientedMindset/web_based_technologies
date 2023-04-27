<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_Midterm.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default Page</title>
    <style type="text/css">
        body{
           
            font-family: 'Poppins',sans-serif;
            background-color:midnightblue;
        }
        
        h1{
            color:white;
            text-align:center;
        }
        .main_container{
            display:flex;
            flex-direction:row;
        }
        .user{  
            position:absolute;
            display:flex;
            flex-direction:column;
            align-items:center;
            background-color:lightseagreen;
            height:260px;
            width: 300px;
            box-shadow: 0 0 40px rgba(8,7,16,0.6);
            backdrop-filter: blur(10px);
        }
        .welcome{       
            text-align:center;
            font-size: 18px;
            font-weight: 600;    
            color:lime;
        }
        .cart {
            margin-top:25px;
        }
        .logout{
            margin-top:25px;
            color:red;
        }
        .cars{
            margin-left:300px;
        }
        .product{
            box-shadow: 0 0 40px rgba(8,7,16,0.6);
            backdrop-filter: blur(10px);
        }
        
        </style>
</head>
<body>
    <div class="title">
        <h1>Cars</h1>
    </div>
    <form id="form" class="main_container" runat="server">
        <div class="user" >
        <asp:Label CssClass="welcome" ID="user_name" runat="server">Welcome Mithat Uçar</asp:Label>
            <asp:ImageButton ID="ImageButton31" CssClass="cart" runat="server" ImageUrl="images/shopping_cart.png" OnClick="ImageButton31_Click" />
        <asp:Button CssClass="logout" runat="server" text="Logout" OnClick="Unnamed1_Click" />           
        </div>
        <div class="cars" id="car_container" runat="server">
            
        </div>
    </form>
    
</body>
</html>
