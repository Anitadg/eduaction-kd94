using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class course1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);
        CON.Open();
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "select * FROM  COURSE";
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = CMD;
        DataSet DS = new DataSet();
        DA.Fill(DS);
        Image1.ImageUrl = DS.Tables[0].Rows[0].ItemArray[3].ToString();
        Label2.Text= DS.Tables[0].Rows[0].ItemArray[1].ToString();
        Label3.Text = DS.Tables[0].Rows[0].ItemArray[2].ToString();
        Label4.Text = DS.Tables[0].Rows[0].ItemArray[6].ToString();
        Label5.Text = DS.Tables[0].Rows[0].ItemArray[5].ToString();

        Image2.ImageUrl = DS.Tables[0].Rows[1].ItemArray[3].ToString();
        Label6.Text = DS.Tables[0].Rows[1].ItemArray[1].ToString();
        Label7.Text = DS.Tables[0].Rows[1].ItemArray[2].ToString();
        Label8.Text = DS.Tables[0].Rows[1].ItemArray[6].ToString();
        Label9.Text = DS.Tables[0].Rows[1].ItemArray[5].ToString();

        Image3.ImageUrl = DS.Tables[0].Rows[2].ItemArray[3].ToString();
        Label10.Text = DS.Tables[0].Rows[2].ItemArray[1].ToString();
        Label11.Text = DS.Tables[0].Rows[2].ItemArray[2].ToString();
        Label12.Text = DS.Tables[0].Rows[2].ItemArray[6].ToString();
        Label13.Text = DS.Tables[0].Rows[2].ItemArray[5].ToString();

        Image4.ImageUrl = DS.Tables[0].Rows[3].ItemArray[3].ToString();
        Label14.Text = DS.Tables[0].Rows[3].ItemArray[1].ToString();
        Label15.Text = DS.Tables[0].Rows[3].ItemArray[2].ToString();
        Label16.Text = DS.Tables[0].Rows[3].ItemArray[6].ToString();
        Label17.Text = DS.Tables[0].Rows[3].ItemArray[5].ToString();

        Image5.ImageUrl = DS.Tables[0].Rows[4].ItemArray[3].ToString();
        Label18.Text = DS.Tables[0].Rows[4].ItemArray[1].ToString();
        Label19.Text = DS.Tables[0].Rows[4].ItemArray[2].ToString();
        Label20.Text = DS.Tables[0].Rows[4].ItemArray[6].ToString();
        Label21.Text = DS.Tables[0].Rows[4].ItemArray[5].ToString();

        Image6.ImageUrl = DS.Tables[0].Rows[5].ItemArray[3].ToString();
        Label22.Text = DS.Tables[0].Rows[5].ItemArray[1].ToString();
        Label23.Text = DS.Tables[0].Rows[5].ItemArray[2].ToString();
        Label24.Text = DS.Tables[0].Rows[5].ItemArray[6].ToString();
        Label25.Text = DS.Tables[0].Rows[5].ItemArray[5].ToString();
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       
        Session["COURSENAME"] = Label2.Text;
        Response.Redirect("lesson1.aspx");

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["COURSENAME"] = Label6.Text;
        Response.Redirect("lesson1.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["COURSENAME"] = Label10.Text;
        Response.Redirect("lesson1.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["COURSENAME"] = Label14.Text;
        Response.Redirect("lesson1.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Session["COURSENAME"] = Label18.Text;
        Response.Redirect("lesson1.aspx");
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Session["COURSENAME"] = Label22.Text;
        Response.Redirect("lesson1.aspx");
    }
}