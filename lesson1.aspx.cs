using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class lesson1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String cn = Session["COURSENAME"].ToString();
            String AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
            SqlConnection CON = new SqlConnection(AA);
            SqlCommand CMD = new SqlCommand();
            CMD.Connection = CON;
            CMD.CommandText = "select distinct coursename from COURSE where COURSENAME='" + cn + "'";
            SqlDataAdapter DA = new SqlDataAdapter();
            DA.SelectCommand = CMD;
            DataSet DS = new DataSet();
            DA.Fill(DS);
            GridView1.DataSource = DS.Tables[0];
            GridView1.DataBind();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "select * from lesson where CourseName='" + GridView1.SelectedRow.Cells[1].Text + "'";
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = CMD;
        DataSet DS = new DataSet();
        DA.Fill(DS);
        GridView2.DataSource = DS.Tables[0];
        GridView2.DataBind();
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string FPATH = GridView2.SelectedRow.Cells[3].Text.Trim();
        string A = GridView2.SelectedRow.Cells[3].Text.Trim();
        string B = GridView2.SelectedRow.Cells[2].Text.Trim(); ;
        if (FPATH != "" && FPATH != "&nbsp;")
        {
            pdfFrame.Visible = true;
            pdfFrame.Src = FPATH;        
        }
        else
        {
            pdfFrame.Visible = false;
            System.Diagnostics.Process.Start(GridView2.SelectedRow.Cells[4].Text);
        }
    }
}