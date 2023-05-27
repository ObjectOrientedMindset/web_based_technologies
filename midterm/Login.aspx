<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_Midterm.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">  
    <title>Login Page</title>  
    <style type="text/css">
        body{
    background-color:midnightblue;
}
.background{
    width: 430px;
    height: 520px;
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 50%;
}
form{
    height: 520px;
    width: 400px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 50px 35px;
}
form *{
    font-family: 'Poppins',sans-serif;
    color: #ffffff;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
}
form h3{
    font-size: 32px;
    font-weight: 500;
    line-height: 42px;
    text-align: center;
}

label{
    display: block;
    margin-top: 30px;
    font-size: 16px;
    font-weight: 500;
}
input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 8px;
    font-size: 14px;
    font-weight: 300;
}
::placeholder{
    color: #e5e5e5;
}
.button{
    margin-top: 50px;
    width: 100%;
    background-color: #ffffff;
    color: limegreen;
    padding: 15px 0;
    font-size: 18px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
}
.warning{
    color:red;
    margin-left:100px;
}
    </style>  
</head>  
<body>  
    <form runat="server">
        <h3>Welcome!</h3>

        <label for="username">First Name</label>
        <asp:TextBox placeholder="Mithat" id="first_name" runat="server"/>
        <label for="password">Password</label>
        <asp:TextBox placeholder="123" id="password" runat="server"/>
        <asp:Button ID="login_button" CssClass="button" runat="server" Text="Login" OnClick="login_button_Click"/> 
        <asp:Label CssClass="warning" ID="warning_text" runat="server"></asp:Label>
    </form>
</body>  
</html>  
