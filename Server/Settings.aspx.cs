using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CommerceBank
{
    public partial class Settings : System.Web.UI.Page
    {
        //Connects SQL to the file directory
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
        }

        protected void AddTriggerState(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            string state = State.SelectedValue;
            cmd.CommandText = " INSERT INTO Triggers " +
                " VALUES('" + state + "');";
            cmd.ExecuteNonQuery();
        }

        protected void AddTriggerCategory(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            string state = State.SelectedValue;
            cmd.CommandText = " INSERT INTO Triggers " +
                " VALUES('" + Description.Text + "');";
            cmd.ExecuteNonQuery();
        }

        protected void AddTriggerTime(object sender, EventArgs e)
        {

        }
    }
}