<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CommerceBank.transaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Commerce Bank - Transaction</title>
        
        <link rel="stylesheet" type="text/css" href="CSS/StyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            <asp:GridView ID="GridView1" AlternatingRowStyle-CssClass="Grid" runat="server"></asp:GridView>


        </div>
    </form>
</body>
</html>
