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
    public partial class Triggers : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            //Connection is open, close the current connection.
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            //Open new connection
            con.Open();

            //Display the Data Table
            disp_data();
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Triggers values(" + Date.Text + "," + Category.Text + "," + Description.Text + ";";
            cmd.ExecuteNonQuery();

            // Reset Text Fields
            Date.Text = "";
            Category.Text = "";
            Description.Text = "";
            disp_data();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from Triggers where Date=" + Date.Text;
            cmd.ExecuteNonQuery();

            // Reset Text Fields
            Date.Text = "";
            Category.Text = "";
            Description.Text = "";
            disp_data();
        }

        public void disp_data()
        {
            //Creates a command for the SQL query
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select ID as 'Trigger ID'," +
                " Date," +
                " Category," +
                " State " +
                "from [Trigger]";

            //Executes the SQL query
            cmd.ExecuteNonQuery();

            //Data Table Read from sql server
            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            //Fills the SQL Data by the Data Table
            da.Fill(dt);

            //Gets the Data from the data table and places it into the HTML
            TriggerTable.DataSource = dt;
            TriggerTable.DataBind();
        }

        protected void TriggerTable_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}