using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using ClosedXML.Excel;
using System.IO;

// https://github.com/ClosedXML/ClosedXML

namespace CommerceBank
{
    public partial class transaction : System.Web.UI.Page
    {

        //Connects SQL to the file directory
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");


        //SQL Connection on Page Load
        protected void Page_Load(object sender, EventArgs e)
        {
            //Connection is open, close the current connection.
            if(con.State == ConnectionState.Open)
            {
                con.Close();
            }
            //Open new connection
            con.Open();

            errorMessage.Visible = false;

            //Display the Data Table
            //disp_data();
        }

        protected void Login(object sender, EventArgs e)
        {
            string query = "Select COUNT(1) FROM UserCred WHERE username=@username AND password=@password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", account_number.Text.Trim());
            cmd.Parameters.AddWithValue("@password", password.Text.Trim());
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            Console.WriteLine(count);
            if(count == 1)
            {
                Session["username"] = account_number.Text.Trim();
                Response.Redirect("Transaction.aspx");
            }
            else
            {
                errorMessage.Visible = true;
            }
        }



    }
}