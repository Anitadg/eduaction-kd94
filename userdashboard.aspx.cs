using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class userdashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);
        CON.Open();
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        if(Session["USERTYPE"].ToString() =="ADMIN")
        {
            CMD.CommandText = "select * FROM  REGISTRATION";
        }
        else if(Session["USERTYPE"].ToString() =="USER")
        {
            String UNAME = Session["USERNAME"].ToString();
            CMD.CommandText = "select * FROM  REGISTRATION where UserName= '" + UNAME + "'";
        }
       
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = CMD;
        DataSet DS = new DataSet();
        DA.Fill(DS);
        GridView1.DataSource = DS.Tables[0];
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}