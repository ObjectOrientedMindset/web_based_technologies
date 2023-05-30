<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deafult.aspx.cs" Inherits="WebBasedTechnologiesHW5.Deafult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        UserName:
        <asp:TextBox ID="username" placeholder="username" runat="server"></asp:TextBox>
        <br />
        Password:
        <asp:TextBox ID="password" placeholder="password" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Login" />
    
    </div>
    </form>
</body>
</html>

