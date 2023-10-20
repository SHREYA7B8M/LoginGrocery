using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace LoginGrocery
{
    public partial class UserLogin : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(conStr);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM UserRegistration where UserId ='" + UserId.Text.Trim() + "' AND Password = '" + Password.Text.Trim() + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successful');</script>");
                        Session["UserName"] = dr.GetValue(0).ToString();
                        Session["UserId"] = dr.GetValue(5).ToString();

                        Session["role"] = "user";

                    }
                   // FormsAuthentication.SetAuthCookie(userId, false);

                    Response.Redirect("About.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid User')</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}
