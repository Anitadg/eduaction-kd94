using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class enquiry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "select MAX(ENQUIRYNO) +1 from ENQUIRY";
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = CMD;
        DataSet DS = new DataSet();
        DA.Fill(DS);
        if (DBNull.Value.Equals(DS.Tables[0].Rows[0].ItemArray[0]))
        {
            TextBox1.Text = "1";

        }
        else
        {

            TextBox1.Text = DS.Tables[0].Rows[0].ItemArray[0].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);
        CON.Open();
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "insert into ENQUIRY(Enquiryno,DoEnquiry,uname,Email,Contact)values('" + TextBox1.Text + "','" + TextBox5.Text + "', '" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        CMD.ExecuteNonQuery();
        CON.Close();
    }

   
          
}