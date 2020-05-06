<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="CommerceBank.Triggers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Settings - Commerce Bank</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">

                    <!--     Navigation Bar     -->
    <div class = "nav-bar row" style="padding-top: 0px;">


        <!--     Commerce Bank Logo     -->
        <div id="logo" class="col">
            <a href="transaction.aspx" title="Commerce Bank"><img src="Images/Headers/Commerce_Bank.png"/></a>
        </div>  
        
        
        <!--     Navigation Bar Cells     -->
        <ul id="navigation-bar" style="float:right" class="col row">

            <!--     Transaction Cell    -->
            <li id="transaction-cell" class="col-md-3 nav-bar-selected navBarCell">
                
                    <a href="transaction.aspx">
                    <span class="nav-bar-selected" style="font-family:Cera-Pro-Bold;font-size: 16px">
                        <img src="Images/Icons/Group_96@2x.png" />
                        Transaction
                    </span>
                </a>
            </li>

            <!--     Dashboard Cell     -->
            <li id="dashboard-cell" class="col-md-3 navBarCell">
                <a href="dashboard.aspx">
                    <span class="nav-bar-unselected" style="font-family:Cera-Pro;font-size: 16px">
                        <img src="Images/Icons/Dashboard@2x.png"/>
                        Dashboard
                    </span>
                </a>
            </li>

            <!--     Setting     -->
            <li id="setting-cell" class="col-md-3 navBarCell">
                <a href="settings.aspx">
                    <span class="nav-bar-unselected" style="font-family:Cera-Pro;font-size: 16px">
                        <img src="Images/Icons/Settings@2x.png"/>
                        Settings
                    </span>
                </a>
            </li>

            <!--     User     -->
                    <li id="user-cell" class="col-md-3 navBarCell" style="font-family:Cera-Pro;font-size: 16px">
                        <div class="dropdown">
                        <a>
                            <span class="nav-bar-unselected" style="font-family: Cera-Pro">
                                <img src="Images/Icons/User@2x.png"/>
                                User
                            </span>
                            
                        </a>
                        <div class="dropdown-content">
                            Logout
                        </div>
                        </div>
                    </li>

            </ul>
        </div>

    <div class="body-size">

      <div id="welcome-message"   class="welcome-message row center">
            <div id="welcome" class="commerce-color" >
              <p>Notifications</p>
            </div> 
            <br/>
            
        </div>
        
        <!--      Horizontal Line     -->
        <hr />
    </div>
        


            <div class="body-size row">
                <div class="welcome-message">
                    All Notifications
                </div>
            </div>
            <div class="body-size row">
                <div class="row ">
                    <asp:GridView ID="TriggerTable" AlternatingRowStyle-CssClass="Grid" runat="server" ></asp:GridView>
                </div>
                <hr />
            </div>
            
            
            <div class="body-size row">
                <div class="welcome-message">
                    State Notifications
                </div>
            </div>
            <div class="body-size">
                <div class="row">
                    <asp:GridView ID="StateTable" AlternatingRowStyle-CssClass="Grid" runat="server"></asp:GridView>
                </div>
                <hr />
            </div>

            <div class="body-size row">
                <div class="welcome-message">
                    Description Notifications
                </div>
            </div>

            <div class="body-size">
                <div class="row">
                    <asp:GridView ID="DescriptionTable" AlternatingRowStyle-CssClass="Grid" runat="server"></asp:GridView>
                </div>
            </div>
    </form>
</body>
</html>
