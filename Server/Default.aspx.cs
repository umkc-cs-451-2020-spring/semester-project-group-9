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
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            string query = "Select COUNT(1) FROM UserCred WHERE username=@username AND password=@password";
            SqlCommand cmd = new SqlCommand(query, con);
            //cmd.CommandText = "Select COUNT(1) FROM User WHERE username=@username AND password=@password";
            //cmd.ExecuteNonQuery();
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

        //Displays the current table
        //public void disp_data()
        //{
        //    //Creates a command for the SQL query
        //    SqlCommand cmd = con.CreateCommand();
        //    cmd.CommandType = CommandType.Text;

        //cmd.CommandText = "select processing_date as 'Processing Date'," +
        //" balance as Balance," +
        //" Action," +
        //" Description " +
        //"from CustomerData";


        //cmd.CommandText = "SELECT processing_date AS 'Processing Date'," +
        //    "case dbo.CustomerData.action" +
        //    " when ' CR' then CONCAT('$',Amount)" +
        //    " when ' DR' then CONCAT('-$',Amount)" +
        //    " end as Amount,Description,State,CONCAT('$',Balance)" +
        //    " FROM CustomerData " +
        //    "ORDER BY processing_date desc;";

        ////Executes the SQL query
        //cmd.ExecuteNonQuery();

        ////Data Table Read from sql server
        //DataTable dt = new DataTable();

        //SqlDataAdapter da = new SqlDataAdapter(cmd);

        ////Fills the SQL Data by the Data Table
        //da.Fill(dt);

        ////Gets the Data from the data table and places it into the HTML
        //TransactionTable.DataSource = dt;
        //TransactionTable.DataBind();
        //}

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}



    }
}