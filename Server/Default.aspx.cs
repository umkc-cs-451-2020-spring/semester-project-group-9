﻿using System;
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

            //Display the Data Table
            //disp_data();
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


        //// Exports data from table to xlsx format
        //// Reference:
        //// https://www.aspsnippets.com/Articles/Write-data-to-Excel-file-xls-and-xlsx-in-ASPNet.aspx
        //protected void export_to_xls(object sender, EventArgs e)
        //{
        //    //Creates a command for the SQL query
        //    SqlCommand cmd = con.CreateCommand();
        //    cmd.CommandType = CommandType.Text;
        //    cmd.CommandText = "select processing_date as 'Processing Date'," +
        //        " balance as Balance," +
        //        " Action," +
        //        " Description " +
        //        "from CustomerData";

        //    //Executes the SQL query
        //    cmd.ExecuteNonQuery();

        //    //Data Table Read from sql server
        //    DataTable dt = new DataTable();

        //    SqlDataAdapter da = new SqlDataAdapter(cmd);

        //    da.Fill(dt);

        //    // Create the workbook
        //    XLWorkbook workbook = new XLWorkbook();

        //    // Adds a tab to the Excel file
        //    workbook.Worksheets.Add(dt, "Transactions");

        //    // Prepare the response
        //    HttpResponse httpResponse = Response;
        //    httpResponse.Clear();
        //    httpResponse.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
        //    httpResponse.AddHeader("content-disposition", "attachment;filename=\"TransactionData.xlsx\"");

        //    // Flush the workbook to the Response.OutputStream
        //    using (MemoryStream memoryStream = new MemoryStream())
        //    {
        //        workbook.SaveAs(memoryStream);
        //        memoryStream.WriteTo(httpResponse.OutputStream);
        //        memoryStream.Close();
        //    }

        //    httpResponse.End();
        //}



    }
}