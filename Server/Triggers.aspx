<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Triggers.aspx.cs" Inherits="CommerceBank.Triggers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Triggers - Commerce Bank</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table>
                <tr>
                    <!-- Trigger Date -->
                    <td>Date</td>
                    <td><asp:TextBox ID="Date" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <!-- Trigger Category -->
                    <td>Category</td>
                    <td><asp:TextBox ID="Category" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <!-- Trigger Description -->
                    <td>Description</td>
                    <td><asp:TextBox ID="Description" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                        
                        <!-- Insert -->
                        <asp:button ID="Insert" runat="server" Text="Insert" OnClick="Insert_Click" />

                        <!-- Delete -->
                        <asp:button ID="Delete" runat="server" Text="Delete" OnClick="Delete_Click" />

                        <!-- Update -->
                        <asp:button ID="Update" runat="server" Text="Update" />

                        <!-- Probably don't need view, delete later -->
                        <!--<asp:button ID="View" runat="server" Text="View" />-->
                    </td>
                </tr>

            </table>

            <br/>
            <asp:GridView ID="TriggerTable" AlternatingRowStyle-CssClass="Grid" runat="server" OnSelectedIndexChanged="TriggerTable_SelectedIndexChanged"></asp:GridView>


        </div>
    </form>
</body>
</html>
