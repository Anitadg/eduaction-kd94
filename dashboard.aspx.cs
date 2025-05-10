using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);

        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "select COUNT(COURSEID) FROM  COURSE";
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = CMD;
        DataSet DS = new DataSet();
        DA.Fill(DS);

        //Label5.Text = Session["UserName"].ToString();
        Label1.Text = DS.Tables[0].Rows[0].ItemArray[0].ToString();



        SqlCommand CMD1 = new SqlCommand();
        CMD1.Connection = CON;
        CMD1.CommandText = "select COUNT(ROLLNO) FROM  REGISTRATION";
        SqlDataAdapter DA1 = new SqlDataAdapter();
        DA1.SelectCommand = CMD1;
        DataSet DS1 = new DataSet();
        DA1.Fill(DS1);

        Label2.Text = DS1.Tables[0].Rows[0].ItemArray[0].ToString();


        SqlCommand CMD2 = new SqlCommand();

        CMD2.Connection = CON;
        CMD2.CommandText = "select COUNT(ENQUIRYNO) FROM  ENQUIRY";

        SqlDataAdapter DA2 = new SqlDataAdapter();
        DA2.SelectCommand = CMD2;
        DataSet DS2 = new DataSet();
        DA2.Fill(DS2);

        Label3.Text = DS2.Tables[0].Rows[0].ItemArray[0].ToString();



        SqlCommand CMD3 = new SqlCommand();
        CMD3.Connection = CON;
        CMD3.CommandText = "select COUNT(ROLLNO) FROM  REGISTRATION";
        SqlDataAdapter DA3 = new SqlDataAdapter();
        DA3.SelectCommand = CMD3;
        DataSet DS3 = new DataSet();
        DA3.Fill(DS3);

        Label4.Text = DS3.Tables[0].Rows[0].ItemArray[0].ToString();
    }
}