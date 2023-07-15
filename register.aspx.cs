using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class register : System.Web.UI.Page
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
        string s = "select * from register where email='" + TextBox3.Text + "'";
        ad = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            string c = "insert into register values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "' ) ";
            cmd = new SqlCommand(c, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("login.aspx");
        }
        else
        {
            Response.Write("<script>alert('User Already Exist!!')</script>");
        }
    }
}