<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="CommerceBank.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Transaction - Commerce Bank</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
</head>

<!-- Transaction Summary -->

<body>
    <form id="form1" runat="server">

        
    <!--     Navigation Bar     -->
    <div class = "nav-bar row" style="padding-top: 0px; background-color:#f2f2f2;" >


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
   




    <!--     Body     -->

    <!--     Welcome Message     -->
    <div id="information" class="body-size">
      <div id="welcome-message"   class="welcome-message row center">
            <div id="welcome" class="commerce-color" >
              <p>Welcome, </p>
                <p>Here is your transaction summary.</p>
            </div> 
            <br/>
            
        </div>
        
        <!--      Horizontal Line     -->
        <hr />


        <!--      Table Interactions     -->
        <div id="table-interaction" class="row">
            <!--     Search Bar     -->
            
            <div id="text-field" class = "col w-50 searchBar">
                <img src="Images/Icons/Search@2x.png" alt="search" width="25" height="25"/>
                <input class="searchBarTextfield" style="font-family:Cera-Pro;font-size: 14px" type="search" id="search-sort" name="search-sort" placeholder="Enter keyword, amount, or mm/dd/yy" size="35"/>
            </div>


            <!--     Export File     -->
            <div class="col" style="color: #ADD777; font-family:Cera-Pro;font-size: 20px">
                <asp:Button runat="server" ID="ExportButton" CssClass="exportButton" Text="Export" />
            </div>
                               

            <!--     Add Transaction     -->

            <!-- Change this to a button or something later -->
            <div id="transaction-add" class="col" style="font-family:Cera-Pro-Bold; font-size=18px">
                <a href="AddTransaction.aspx">
                    <asp:Button runat="server" text="+ Add Transaction" Cssclass="float-lg-right transactionButton" OnClick="Unnamed3_Click"/>
                </a>
            </div>
      	  </div>

        <div id="table">
            <asp:GridView ID="TransactionTable" CssClass="row" AlternatingRowStyle-CssClass="Grid" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
        </div>
    </div>
    </form>
</body>
</html>
