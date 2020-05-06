<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="CommerceBank.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                
                    <a href="transaction.html">
                    <span class="nav-bar-selected" style="font-family:Cera-Pro-Bold;font-size: 16px">
                        <img src="Images/Icons/Group_96@2x.png" />
                        Transaction
                    </span>
                </a>
            </li>

            <!--     Dashboard Cell     -->
            <li id="dashboard-cell" class="col-md-3 navBarCell">
                <a href="dashboard.html">
                    <span class="nav-bar-unselected" style="font-family:Cera-Pro;font-size: 16px">
                        <img src="Images/Icons/Dashboard@2x.png"/>
                        Dashboard
                    </span>
                </a>
            </li>

            <!--     Setting     -->
            <li id="setting-cell" class="col-md-3 navBarCell">
                <a href="setting.html">
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



        <div>

        </div>
    </form>
</body>
</html>
