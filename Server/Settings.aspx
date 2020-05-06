<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="CommerceBank.Settings" %>

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
    <div class = "nav-bar row" style="padding-top: 0px; background-color:#f2f2f2;" >


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

            <!--     Welcome Message     -->
    <div id="information" class="body-size">
      <div id="welcome-message"   class="welcome-message row">
            <div id="welcome" class="commerce-color" >
              <p>Welcome, </p>
                <p>Custom Alert and Notification.</p>
            </div> 
            <br/>
            
        </div>
	</div>

        <!--      Horizontal Line     -->
      
          <hr style="width: 81.2%"/>
		
	 <div id="recNotification" class="body-size">
		<!-- contact -->
        <div id="contact"  >
			<p class="text" style="font-family:Cera-Pro-Bold;color: #006649">Receive notification by:</p>
		</div>
		
		
		<!-- change contact -->
	<div id="change-contact" class="row">
			
			<!-- Text -->
		  <div class=" custom-control custom-switch offset-xl-0 col-xl-1">
  			<input type="checkbox" class="custom-control-input" id="customSwitch1"/>
 			 <label class="custom-control-label font-color" for="customSwitch1" style="font-family:Cera-Pro-Bold;font-size: 17px;">Text</label>
			</div>
			
			
			<!-- Email -->
			<div class="col-md-4 custom-control custom-switch col-xl-1">
 				 <input type="checkbox" class="custom-control-input" id="customSwitch2"/>
 					 <label class="custom-control-label font-color" for="customSwitch2" style="font-family:Cera-Pro-Bold;font-size: 17px;">Email</label>
				</div>
			
			
			<!-- Change -->
			<div class="col-md-4 change col-xl-2">
				<a> 
				<button type="button" class="float-lg-left">Change</button></a>
		
	   		 </div>
		
		</div>
    </div>

    <div class="body-size">
        <!-- Notification setting -->
        <div id="alert-setting"  >
			<p class="text" style="font-family:Cera-Pro-Bold;color: #006649">Notification settings:</p>
            <div>


                <!--     Notification Label Row     -->
                <div class="row">
                    <div class="col">Transaction Out of State </div>
                    <div class="col">Transaction Description</div>
                    <div class="col">Transaction Time-Range</div>
                </div>
                <div class="row">



                    <!-- Out of State -->
                    <div class="col">
                            <asp:DropDownList ID="State" runat="server">
                                <asp:ListItem Value="AL">Alabama</asp:ListItem>
	                            <asp:ListItem Value="AK">Alaska</asp:ListItem>
	                            <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	                            <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	                            <asp:ListItem Value="CA">California</asp:ListItem>
	                            <asp:ListItem Value="CO">Colorado</asp:ListItem>
	                            <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	                            <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	                            <asp:ListItem Value="DE">Delaware</asp:ListItem>
	                            <asp:ListItem Value="FL">Florida</asp:ListItem>
	                            <asp:ListItem Value="GA">Georgia</asp:ListItem>
	                            <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	                            <asp:ListItem Value="ID">Idaho</asp:ListItem>
	                            <asp:ListItem Value="IL">Illinois</asp:ListItem>
	                            <asp:ListItem Value="IN">Indiana</asp:ListItem>
	                            <asp:ListItem Value="IA">Iowa</asp:ListItem>
	                            <asp:ListItem Value="KS">Kansas</asp:ListItem>
	                            <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	                            <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	                            <asp:ListItem Value="ME">Maine</asp:ListItem>
	                            <asp:ListItem Value="MD">Maryland</asp:ListItem>
	                            <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	                            <asp:ListItem Value="MI">Michigan</asp:ListItem>
	                            <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	                            <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	                            <asp:ListItem Value="MO">Missouri</asp:ListItem>
	                            <asp:ListItem Value="MT">Montana</asp:ListItem>
	                            <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	                            <asp:ListItem Value="NV">Nevada</asp:ListItem>
	                            <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	                            <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	                            <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	                            <asp:ListItem Value="NY">New York</asp:ListItem>
	                            <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	                            <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	                            <asp:ListItem Value="OH">Ohio</asp:ListItem>
	                            <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	                            <asp:ListItem Value="OR">Oregon</asp:ListItem>
	                            <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	                            <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	                            <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	                            <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	                            <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	                            <asp:ListItem Value="TX">Texas</asp:ListItem>
	                            <asp:ListItem Value="UT">Utah</asp:ListItem>
	                            <asp:ListItem Value="VT">Vermont</asp:ListItem>
	                            <asp:ListItem Value="VA">Virginia</asp:ListItem>
	                            <asp:ListItem Value="WA">Washington</asp:ListItem>
	                            <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	                            <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	                            <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                            </asp:DropDownList>
                    </div>
                    <div class="col">
                            <asp:Button OnClick="AddTriggerState" ID="AddOutState" Text="+" runat="server" />
                    </div>

                    
                    <!-- Transaction Categories -->
                    <div class="col">
                        <asp:TextBox ID="Description" runat="server"></asp:TextBox>
                    </div>
                    <div class="col">
                            <asp:Button OnClick="AddTriggerCategory" ID="AddTransaction" Text="+" runat="server" />
                    </div>


                    <!-- Time Range -->
                    <div class="col">
                            <asp:DropDownList ID="TimeRange" runat="server">

                            </asp:DropDownList>
                    </div>
                    <div class="col">
                            <asp:Button OnClick="AddTriggerTime" ID="AddTimeRange" Text="+" runat="server" />
                    </div>
                </div>
            </div>

            
            <!-- Notifcation Table-->
            <div id="table">
            </div>



		</div>

    </div>


    </form>
</body>
</html>
