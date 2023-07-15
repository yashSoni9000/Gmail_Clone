using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class compose : System.Web.UI.Page
{
        SqlCommand cmd;
    SqlConnection con;
    SqlDataAdapter ad;
    protected void Page_Load(object sender, EventArgs e)
    {
        string path = ConfigurationManager.ConnectionStrings["connect"].ToString();
        con = new SqlConnection(path);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sfrom = Request.Cookies["email"].Value;
        string sto = TextBox1.Text;
        string subject = TextBox2.Text;
        string message = TextBox3.Text;
        DateTime now = DateTime.Now;
        string time= now.ToShortTimeString();
        string s = "insert into compose values('"+sfrom+"' ,'" + sto + "','" + subject + "','" + message + "','" + time + "')";
        cmd = new SqlCommand(s, con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Email Sent!!')</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
            
    }
}