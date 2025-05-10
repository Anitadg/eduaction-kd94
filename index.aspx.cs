using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            
            Label2.Text =  Session["UserName"].ToString();
            Button1.Visible = false;
            Button2.Visible = true;
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            LinkButton3.Visible = true;
           
        }
        else {
            Label2.Text = "Welcome to Our Website!";
            Button1.Visible = true;
            Button2.Visible = false;
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
        }
       
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click2(object sender, EventArgs e)
    {
        
        String UT = Session["USERTYPE"].ToString();
       if (Session["USERTYPE"].ToString() == "ADMIN")
        {
            Response.Redirect("dashboard.aspx");
        }
       else if (Session["USERTYPE"].ToString() == "USER")
        {
            Response.Redirect("userdashboard.aspx");
        }

    }

    

    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        String UT = Session["USERTYPE"].ToString();
        if (Session["USERTYPE"].ToString() == "ADMIN")
        {
            Response.Redirect("index.aspx");
        }
        else if (Session["USERTYPE"].ToString() == "USER")
        {
            Session["UserName"] = Label2.Text;
            Response.Redirect("registration.aspx");
        }
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        String UT = Session["USERTYPE"].ToString();
        if (Session["USERTYPE"].ToString() == "ADMIN")
        {
            Response.Redirect("course1.aspx");
        }
        else if (Session["USERTYPE"].ToString() == "USER")
        {
            Session["UserName"] = Label2.Text;
            Response.Redirect("course1.aspx");
        }
    }
}