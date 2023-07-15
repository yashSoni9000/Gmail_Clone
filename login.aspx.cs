using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter ad;
    protected void Page_Load(object sender, EventArgs e)
    {
        string path = ConfigurationManager.ConnectionStrings["connect"].ToString();
        con = new SqlConnection(path);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string password, email, tempPass;
        tempPass = TextBox2.Text;
        string s = "select * from register where email='"+TextBox1.Text+"' ";
        ad = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            password = ds.Tables[0].Rows[0][3].ToString();
            if (password == tempPass)
            {
                Response.Cookies["email"].Value = TextBox1.Text;
                Response.Redirect("inbox.aspx");
            }
            else Response.Write("<script>alert('Incorrect Password!!')</script>");
        }
        else Response.Write("<script>alert('Register Please!!')</script>");
    }
}