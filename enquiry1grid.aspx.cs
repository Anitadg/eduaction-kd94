using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class enquiry1grid : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);
        CON.Open();
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "select * FROM  ENQUIRY";
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = CMD;
        DataSet DS = new DataSet();
        DA.Fill(DS);
        GridView1.DataSource = DS.Tables[0];
        GridView1.DataBind();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }

}