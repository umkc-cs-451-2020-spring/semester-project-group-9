using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

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

            //Display the Data Table
            disp_data();
        }

        //Displays the current table
        public void disp_data()
        {
            //Creates a command for the SQL query
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from CustomerData";

            //Executes the SQL query
            cmd.ExecuteNonQuery();

            //Data Table Read from sql server
            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            //Fills the SQL Data by the Data Table
            da.Fill(dt);

            //Gets the Data from the data table and places it into the HTML
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}