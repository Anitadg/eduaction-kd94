using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class lesson : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
            SqlConnection CON = new SqlConnection(AA);
            SqlCommand CMD1 = new SqlCommand();
            CMD1.Connection = CON;
            CMD1.CommandText = "select distinct coursename from COURSE";
            SqlDataAdapter DA1 = new SqlDataAdapter();
            DA1.SelectCommand = CMD1;
            DataSet DS1 = new DataSet();
            DA1.Fill(DS1);
            DropDownList1.Items.Clear();
            for (int I = 0; I < DS1.Tables[0].Rows.Count; I++)
            {
                DropDownList1.Items.Add(DS1.Tables[0].Rows[I].ItemArray[0].ToString());
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "--Please Select--")
        {
            Response.Write("Please Select Course NAme");
            return;
        }
        if (DropDownList2.SelectedItem.Text == "--Please Select--")
        {
            Response.Write("Please Select File Type");
            return;
        }
        string FPATH = "";
        if (DropDownList2.SelectedItem.Text == "PDF")
        {
            FPATH = "~/PDF/" + TextBox2.Text + ".pdf";
        }
        else
        {
            FPATH = "";
        }

        string AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);
        CON.Open();
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "insert into lesson(CourseName,Chapter,Title,Filetype,LFILE,URL)values('" + DropDownList1.SelectedItem.Text + "' ,'" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList2.SelectedItem.Text + "','" + FPATH + "','" + TextBox3.Text + "')";
        CMD.ExecuteNonQuery();

        if (FileUpload1.HasFile)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath(FPATH));
        }

        CON.Close();
        TextBox1.Text = "";

        TextBox2.Text = "";
        TextBox3.Text = "";
    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        string AA = ConfigurationManager.ConnectionStrings["ABC"].ConnectionString;
        SqlConnection CON = new SqlConnection(AA);
        SqlCommand CMD = new SqlCommand();
        CMD.Connection = CON;
        CMD.CommandText = "select MAX(CHAPTER)+1 from LESSON where coursename='" + DropDownList1.SelectedItem.Text + "'";
        SqlDataAdapter DA = new SqlDataAdapter();
        DA.SelectCommand = CMD;
        DataSet DS = new DataSet();
        DA.Fill(DS);
        if (DBNull.Value.Equals(DS.Tables[0].Rows[0].ItemArray[0]) == true)
        {
            Label10.Text = "1";
            TextBox1.Text = "1";
        }
        else
        {
            Label10.Text = DS.Tables[0].Rows[0].ItemArray[0].ToString();
            TextBox1.Text = DS.Tables[0].Rows[0].ItemArray[0].ToString();
        }
    }

    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedItem.Text == "PDF")
        {
            FileUpload1.Enabled = true;
            TextBox3.Enabled = false;
        }
        else if (DropDownList2.SelectedItem.Text == "URL")
        {
            FileUpload1.Enabled = false;
            TextBox3.Enabled = true;
        }
    }
}
