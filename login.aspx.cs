using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(RadioButton1.Checked==false && RadioButton2.Checked==false)
        {
            Label6.Text="Please Select Admin or User ";
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
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;      
        CMD.CommandText = "select * from SignUp where UserName='" + TextBox1.Text + "' and UserPassword='" + TextBox2.Text + "' and UserType='"+USERTYPE+"'";
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = CMD;
        DataSet DS = new DataSet();
        DA.Fill(DS);
        if (DS.Tables[0].Rows.Count > 0)
        {
            Session["UserName"] = TextBox1.Text;
            Session["USERTYPE"]= DS.Tables[0].Rows[0].ItemArray[4].ToString();
            Response.Redirect("index.aspx");
        }
        else
        {
            Label6.Text = "INVALID USER NAME AND PASSWORD";
            return;
        }

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
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
        CMD.CommandText = "insert into SignUp(UserName,UserPassword,usertype,userid)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + USERTYPE + "','" + Label4.Text + "')";
        CMD.ExecuteNonQuery();
        CON.Close();
    }


    protected void RadioButton1_CheckedChanged1(object sender, EventArgs e)
    {

    }
}