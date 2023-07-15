using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class inbox : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataAdapter ad;
    string fromEmail;
    protected void Page_Load(object sender, EventArgs e)
    {
        string path = ConfigurationManager.ConnectionStrings["connect"].ToString();
        con = new SqlConnection(path);
        con.Open();
        string email = Request.Cookies["email"].Value;
        string s = "select * from compose where sto='" + email + "' order by time desc ";
        ad = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        ad.Fill(ds);


        if (ds.Tables[0].Rows.Count > 0) {
            fromEmail = ds.Tables[0].Rows[0][1].ToString();
            r1.DataSource = ds;
            r1.DataBind();
        }
    }
    protected void DeleleMail_Btn(object sender, CommandEventArgs e)
    {
        string st = e.CommandName;
        string query = "delete from compose where id='" + st + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("inbox.aspx");
    }
}