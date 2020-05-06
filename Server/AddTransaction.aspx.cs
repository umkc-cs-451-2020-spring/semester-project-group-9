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
    public partial class WebForm3 : System.Web.UI.Page
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

        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into Triggers values(" Acct.Text + Date.Text + "," + Category.Text + "," + Description.Text + ";";
            //cmd.ExecuteNonQuery();


            string dte = Date.Text;
            System.Diagnostics.Debug.WriteLine(dte);
            string state = DropDownListState.SelectedValue;
            System.Diagnostics.Debug.WriteLine(state);
            int amt = Int32.Parse(Amount.Text);
            System.Diagnostics.Debug.WriteLine(amt);
            string categ = Action.SelectedValue;
            System.Diagnostics.Debug.WriteLine(categ);
            string descript = Description.Text;
            System.Diagnostics.Debug.WriteLine(descript);

            /*
            string query = "INSERT INTO CustomerData ( " + Date.Text + " , " +
                Amount + ","
                + Action + " , " +
                " Amount," +
                " Description)" +
                " VALUES('5/10/2020'," +
                    " (SELECT" +
                    " top 1" +
                    " Balance" +
                    " FROM CustomerData" +
                    " Order By Processing_Date" +
                    " DESC) - 50," +
                  " 'CR'," +
                " 50 , " +
                "'I Did something');";
            */
            /*
            string query = "INSERT INTO CustomerData (Processing_Date, Balance, Action, Amount, Description)" +
                " VALUES ( " + Date.Text + " , " +
                "       (SELECT top 1 Balance " +
                                    " FROM CustomerData " +
                                    "Order By Processing_Date DESC) + " + amt + " ,  " +
                categ + " , " +
                amt + " , " +
                descript + " ) ;";

            cmd.CommandText = query;
            cmd.ExecuteNonQuery();
            */



            // Reset Text Fields

            //Date.Text = "";
            //Category.Text = "";
            //Description.Text = "";
            //disp_data();
        }

        protected void Pick_Date(object sender, EventArgs e)
        {
            Calendar.Visible = true;
        }

        protected void Calendar_SelectionChanged(object sender, EventArgs e)
        {
            Date.Text = Calendar.SelectedDate.ToShortDateString();
            Calendar.Visible = false;
        }
    }
}