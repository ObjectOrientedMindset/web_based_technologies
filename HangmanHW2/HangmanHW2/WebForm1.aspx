<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HangmanHW2.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">

</script>
    <link rel="Stylesheet" href="StyleSheet1.css" />
</head>
<body style="height: 335px">
    <form id="Form1" runat="server">
  <p><b> <h1>HANGMAN GAME</h1></b></p>
  <p>
       
    <asp:Button CssClass="butt" ID="A" runat="server" onclick="LetterGuessed" Text="A" />
    <asp:Button CssClass="butt" ID="B" runat="server" onclick="LetterGuessed" Text="B" />
    <asp:Button CssClass="butt" ID="C" runat="server" onclick="LetterGuessed" Text="C" />
    <asp:Button CssClass="butt" ID="Ç" runat="server" onclick="LetterGuessed" Text="Ç" />
    <asp:Button CssClass="butt" ID="D" runat="server" onclick="LetterGuessed" Text="D" />
    <asp:Button CssClass="butt" ID="E" runat="server" onclick="LetterGuessed" Text="E" />
    <asp:Button CssClass="butt" ID="F" runat="server" onclick="LetterGuessed" Text="F" />
    <asp:Button CssClass="butt" ID="G" runat="server" onclick="LetterGuessed" Text="G" />
    <asp:Button CssClass="butt" ID="Ğ" runat="server" onclick="LetterGuessed" Text="Ğ" />
    <asp:Button CssClass="butt" ID="H" runat="server" onclick="LetterGuessed" Text="H" />
    <asp:Button CssClass="butt" ID="I" runat="server" onclick="LetterGuessed" Text="I" />
    <asp:Button CssClass="butt" ID="İ" runat="server" onclick="LetterGuessed" Text="İ" />
    <asp:Button CssClass="butt" ID="J" runat="server" onclick="LetterGuessed" Text="J" />
    <asp:Button CssClass="butt" ID="K" runat="server" onclick="LetterGuessed" Text="K" />
    <asp:Button CssClass="butt" ID="L" runat="server" onclick="LetterGuessed" Text="L" />
    <asp:Button CssClass="butt" ID="M" runat="server" onclick="LetterGuessed" Text="M" />
    <asp:Button CssClass="butt" ID="N" runat="server" onclick="LetterGuessed" Text="N" />
    <asp:Button CssClass="butt" ID="O" runat="server" onclick="LetterGuessed" Text="O" />
    <asp:Button CssClass="butt" ID="Ö" runat="server" onclick="LetterGuessed" Text="Ö" />
    <asp:Button CssClass="butt" ID="P" runat="server" onclick="LetterGuessed" Text="P" />
    <asp:Button CssClass="butt" ID="Q" runat="server" onclick="LetterGuessed" Text="Q" />
    <asp:Button CssClass="butt" ID="R" runat="server" onclick="LetterGuessed" Text="R" />
    <asp:Button CssClass="butt" ID="S" runat="server" onclick="LetterGuessed" Text="S" />
    <asp:Button CssClass="butt" ID="T" runat="server" onclick="LetterGuessed" Text="T" />
    <asp:Button CssClass="butt" ID="U" runat="server" onclick="LetterGuessed" Text="U" />
    <asp:Button CssClass="butt" ID="Ü" runat="server" onclick="LetterGuessed" Text="Ü" />
    <asp:Button CssClass="butt" ID="V" runat="server" onclick="LetterGuessed" Text="V" />
    <asp:Button CssClass="butt" ID="W" runat="server" onclick="LetterGuessed" Text="W" />
    <asp:Button CssClass="butt" ID="X" runat="server" onclick="LetterGuessed" Text="X" />
    <asp:Button CssClass="butt" ID="Y" runat="server" onclick="LetterGuessed" Text="Y" />
    <asp:Button CssClass="butt" ID="Z" runat="server" onclick="LetterGuessed" Text="Z" />
  </p>

    <asp:Button ID="Button1" runat="server" Text="Start a new Game" onclick="Button1_Click" />
 
    <p>
        
    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="word"></asp:Label>
 
    <p>
    <p>
        <asp:Label ID="Hint1" runat="server" CssClass="attempts">Hint :</asp:Label>
    </p>
    <p> 
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Asset/hangman01.png"/> 

    </p>
    <asp:Label ID="Label2" runat="server" CssClass="attempts">Number of Attempts Left :</asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="word"></asp:Label>
    
    <p>
    <asp:Label ID="Label4" runat="server" CssClass="word"></asp:Label>
    </p>

 
</form>
    </body>
</html>
