using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class sent : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataAdapter ad;
    protected void Page_Load(object sender, EventArgs e)
    {
        string path = ConfigurationManager.ConnectionStrings["connect"].ToString();
        con = new SqlConnection(path);
        con.Open();
        string email=Request.Cookies["email"].Value;
        string s = "select * from compose where sfrom='" + email + "' order by time desc ";
        ad = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        r1.DataSource=ds;
        r1.DataBind();
    }
    protected void DeleleMail_Btn(object sender, CommandEventArgs e)
    {
            string s = "delete from compose where id='" + e.CommandName.ToString() + "'";
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Deleted Successfully!!!')</script>");
    }
    protected void Del_Btn_Command(object sender, CommandEventArgs e)
    {
        string st = e.CommandName;
        string query = "delete from compose where id='" + st + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("sent.aspx");
    }
}