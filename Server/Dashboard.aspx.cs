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
            disp_StateTable();
            disp_DescTable();

        }

        public void disp_data()
        {
            //Creates a command for the SQL query
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            string query = " SELECT processing_date AS 'Processing Date' ," +
                " CONCAT('$', amount) AS Amount ," +
                " CONCAT('$', balance) AS Balance ," +
                " Action ," +
                " Description ," +
                " State FROM CustomerData" +
                " WHERE STATE IN ( SELECT Description" +
                "                    FROM TRIGGERS ) " +
                " UNION " +
                " SELECT processing_date AS 'Processing Date' ," +
                " CONCAT('$', amount) AS Amount ," +
                " CONCAT('$', balance) AS Balance ," +
                " Action ," +
                " Description ," +
                " State FROM CustomerData" +
                " WHERE Description IN ( SELECT Description" +
                "                       FROM TRIGGERS);";

            cmd.CommandText = query;





            /*
            SELECT processing_date AS 'Processing Date',
                CONCAT('$', amount) AS Amount,
                CONCAT('$', balance) AS Balance,
                Action,
                Description,
                State
        FROM CustomerData
        WHERE STATE IN (
            SELECT Description 
            FROM TRIGGERS)
        UNION
        SELECT processing_date AS 'Processing Date',
                CONCAT('$', amount) AS Amount,
                CONCAT('$', balance) AS Balance,
                Action, 
                Description,
                State FROM CustomerData
        WHERE Description IN (
        SELECT Description FROM TRIGGERS);

            */

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

        public void disp_StateTable()
        {
            //Creates a command for the SQL query
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            string query = " SELECT processing_date AS 'Processing Date' ," +
                                " CONCAT('$', amount) AS Amount ," +
                                " CONCAT('$', balance) AS Balance ," +
                                " Action ," +
                                " Description ," +
                                " State FROM CustomerData" +
                                " WHERE STATE IN ( SELECT Description" +
                                "                    FROM TRIGGERS ); ";

            cmd.CommandText = query;

            //Executes the SQL query
            cmd.ExecuteNonQuery();

            //Data Table Read from sql server
            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            //Fills the SQL Data by the Data Table
            da.Fill(dt);

            //Gets the Data from the data table and places it into the HTML
            StateTable.DataSource = dt;
            StateTable.DataBind();
        }

        public void disp_DescTable()
        {
            //Creates a command for the SQL query
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            /*
            string query = " SELECT processing_date AS 'Processing Date' ," +
                                " CONCAT('$', amount) AS Amount ," +
                                " CONCAT('$', balance) AS Balance ," +
                                " Action ," +
                                " Description , " +
                                " State FROM CustomerData" +
                                " WHERE Description IN ( SELECT Description" +
                                "                       FROM TRIGGERS);";
            */

            string query = " SELECT processing_date AS 'Processing Date', " +
                    " CONCAT('$', amount) AS Amount, " +
                    " CONCAT('$', balance) AS Balance, " +
                    " Action, " +
                    " Description, " +
                    " State FROM CustomerData " +
            " WHERE Description IN( " +
            " SELECT Description FROM TRIGGERS); ";

            cmd.CommandText = query;

            //Executes the SQL query
            cmd.ExecuteNonQuery();

            //Data Table Read from sql server
            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            //Fills the SQL Data by the Data Table
            da.Fill(dt);

            //Gets the Data from the data table and places it into the HTML
            DescriptionTable.DataSource = dt;
            DescriptionTable.DataBind();
        }
    }

}