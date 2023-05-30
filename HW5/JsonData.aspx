<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JsonData.aspx.cs" Inherits="WebBasedTechnologiesHW5.JsonData" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="lnkChangeLanguage" runat="server"  OnClick="lnkChangeLanguage_Click">English</asp:LinkButton>
            <asp:LinkButton ID="ChangeLanguageTurkish" runat="server"  OnClick="ChangeLanguageTurkish_Click">Türkçe</asp:LinkButton>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
