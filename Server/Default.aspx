<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CommerceBank.transaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<!-- Change to login page later down the line -->
<head runat="server">
    <title>Login - Commerce Bank</title>
        
    <link rel="stylesheet" type="text/css" href="CSS/StyleSheet.css"/>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" type="text/css" href="CSS/styling.css"/>
    <link rel="stylesheet" href="CSS/bootstrap.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
<body>

    <!-- Navigation bar -->
    <div id="logo" class = "nav-bar">
        <div>
            <img src="Images/Headers/Commerce_Bank.png">
        </div>
    </div>


    <!-- Login -->
    <div style="text-align:center" class="center login-box">
        <div class="login-field">
            <div>
                <h1 class="commerce-color welcome">
                  Login to your online 
                    <br />bank account
                </h1>
            </div>

            <div class="pb-sm-4 text-fields">

                <asp:TextBox type="text" id="account_number" name="account_number_textfield" placeholder="Account Number" runat="server" ></asp:TextBox>
                    </div>

            <div class="pb-sm-4 text-fields">
                <asp:TextBox type="password" id="password" name="password_textfield" placeholder="Password" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="errorMessage" runat="server" Text="Incorrect User Credentials"></asp:Label>
            </div>

            <div id="login-button" class="text-fields">
                <asp:button ID="login_button" text="Login" OnClick="Login" runat="server">
                </asp:button>
            </div>

        </div>
    </div>

        <footer class="footer" runat="server">
            Sign in today to check your balance
        </footer>

</body>
    </form>
</body>
</html>
