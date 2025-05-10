using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class lessongrid : System.Web.UI.Page
{
    static SqlConnection CON = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
    if (!IsPostBack)
    {
            string AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
            CON = new SqlConnection(AA);
            LOADGRID();
        }
    }
    protected void LOADGRID()
    {

        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "select * FROM  LESSON";
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = CMD;
        DataSet DS = new DataSet();
        DA.Fill(DS);
        GridView1.DataSource = DS.Tables[0];
        GridView1.DataBind();

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        LOADGRID();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow ROW = GridView1.Rows[e.RowIndex];
        string ID = ROW.Cells[0].Text;
        CON.Open();
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "delete FROM LESSON where ChapterNO='" + ID + "'";
        CMD.ExecuteNonQuery();
        CON.Close();
        LOADGRID();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow ROW = GridView1.Rows[e.RowIndex];
        string ID = ROW.Cells[0].Text;

        TextBox CourseNAme = (TextBox)ROW.Cells[1].Controls[0];
        TextBox Chapter = (TextBox)ROW.Cells[2].Controls[0];
        TextBox Title = (TextBox)ROW.Cells[3].Controls[0];
        TextBox FType = (TextBox)ROW.Cells[4].Controls[0];
        TextBox File = (TextBox)ROW.Cells[5].Controls[0];
        TextBox URL = (TextBox)ROW.Cells[6].Controls[0];
        GridView1.EditIndex = -1;
        CON.Open();
        SqlCommand cmd = new SqlCommand("update Lesson Set COURSENAME = '" + CourseNAme.Text + "',CHAPTER='" + Chapter.Text + "',TITLE='" + Title.Text + "',FILETYPE='" + FType.Text + "',LFILE='" + File.Text + "',URL='" + URL.Text + "' where CHAPTERNO='" + ID + "'", CON);
        cmd.ExecuteNonQuery();
        CON.Close();
        LOADGRID();
    }  

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        LOADGRID();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}