using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "select Max(UserID) +1 from SIGNUP";
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = CMD;
        DataSet DS = new DataSet();
        DA.Fill(DS);
        if (DBNull.Value.Equals(DS.Tables[0].Rows[0].ItemArray[0]) == true)
        {
            Label5.Text = "1";
            
        }
        else
        {
            Label5.Text = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            
        }
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == false && RadioButton2.Checked == false)
        {
            Label7.Text = "Please Select Admin or User ";
            return;
        }
        string USERTYPE = "";
        if (RadioButton1.Checked == true)
        {
            USERTYPE = "ADMIN";
        }
        else if (RadioButton2.Checked == true)
        {
            USERTYPE = "USER";
        }
        

        string AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);
        CON.Open();
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "insert into SignUp(UserName,UserEmail,UserPassword,usertype,userid)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + USERTYPE + "','" + Label5.Text + "')";
        CMD.ExecuteNonQuery();
        CON.Close();

        //Response.Redirect("login.aspx");
        
    }
}