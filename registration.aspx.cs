using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      if(!IsPostBack)
       { 
        String AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "select distinct coursename from COURSE"; 
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = CMD;
        DataSet DS = new DataSet();
        DA.Fill(DS);
        DropDownList4.Items.Clear();
        for (int I=0;I< DS.Tables[0].Rows.Count;I++)
        {
                Label22.Text = Session["UserName"].ToString();
                DropDownList4.Items.Add(DS.Tables[0].Rows[I].ItemArray[0].ToString());         
        }

        
       }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String PHOTOPATH = "~/IMAGE/" + TextBox1.Text + ".jpg";

        String AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);
        CON.Open();
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "insert into REGISTRATION(FirstName,LastName,PhoneNumber,Email,Dob,Gender,photo,Address,State,city,pincode,courseName,ENROLLMENTNO,fee,duration,DOAdmission,RollNO,Username)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList1.SelectedItem.Text + "','" + PHOTOPATH + "','" + TextBox6.Text + "','"+ DropDownList2.SelectedItem.Text +"','" + DropDownList3.SelectedItem.Text + "','" + TextBox7.Text + "', '" + DropDownList4.SelectedItem.Text +"','" + TextBox8.Text + "','" + TextBox9.Text +"','" + TextBox10.Text +"','" + TextBox11.Text + "','" + Label21.Text + "','"+Label22.Text+"')";
        CMD.ExecuteNonQuery();
        FileUpload1.PostedFile.SaveAs(Server.MapPath(PHOTOPATH));
        CON.Close();

        Response.Redirect("index.aspx");
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        String AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "select MAX(ROLLNO) +1 from REGISTRATION where coursename='" + DropDownList4.SelectedItem.Text + "'";
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = CMD;
        DataSet DS = new DataSet();
        DA.Fill(DS);
        if (DBNull.Value.Equals( DS.Tables[0].Rows[0].ItemArray[0]))
        {

            Label21.Text = "1";
            TextBox8.Text = "SU/" + DateTime.Now.Year.ToString() + "/" + DropDownList4.SelectedItem.Text + "/001";
            
        }
        else
        {
            string TT = "";
            Label21.Text = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            if (Label21.Text.Length == 1)
            {
                TT = "00" + Label21.Text;
            }
            else if (Label21.Text.Length == 2)
            {
                TT = "0" + Label21.Text;
            }
            else if (Label21.Text.Length == 1)
            {
                TT = Label21.Text;
            }
            TextBox8.Text = "SU/" + DateTime.Now.Year.ToString() + "/" + DropDownList4.SelectedItem.Text + "/" + TT;
        }

        SqlCommand CMD1 = new SqlCommand();
        CMD1.Connection = CON;
        CMD1.CommandText = "select FEE,DURATION from COURSE where coursename='"+ DropDownList4.SelectedItem.Text + "'";
        SqlDataAdapter DA1 = new SqlDataAdapter();
        DA1.SelectCommand = CMD1;
        DataSet DS1 = new DataSet();
        DA1.Fill(DS1);

        if (DS1.Tables[0].Rows.Count > 0)
        {

            TextBox9.Text = DS1.Tables[0].Rows[0].ItemArray[0].ToString();
            TextBox10.Text = DS1.Tables[0].Rows[0].ItemArray[1].ToString();
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);
        CON.Open();
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "select * from REGISTRATION where GENDER='" + DropDownList1.SelectedItem.Text + "'";
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = CMD;
        DataSet DS = new DataSet();
        DA.Fill(DS);
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        String AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "select DISTINCT CITY from STATES where STATE='" + DropDownList2.SelectedItem.Text + "'";
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = CMD;
        DataSet DS = new DataSet();
        DA.Fill(DS);
        DropDownList3.Items.Clear();
        for (int I=0;I< DS.Tables[0].Rows.Count;I++)
        {

            DropDownList3.Items.Add(DS.Tables[0].Rows[I].ItemArray[0].ToString());
            
        }
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        //String AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        //SqlConnection CON = new SqlConnection(AA);
        //SqlCommand CMD = new SqlCommand(" select [ENROLLMENTNO] from Enquiry Where contact ='" + TextBox3.Text + "'", CON);
        //SqlDataAdapter DA = new SqlDataAdapter(CMD);
        //DataSet DS = new DataSet();
        //DA.Fill(DS);
        //if (DS.Tables[0].Rows.Count > 0)
        //{
        //    TextBox8.Text = DS.Tables[0].Rows[0].ItemArray[0].ToString();
        //}

    }
}