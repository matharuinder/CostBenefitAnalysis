using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PA
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginRegistrationConnectionString"].ConnectionString);

            conn.Open();

            string cmd = "select count(*) from registration where username = '" + tbusername.Text + "'";
            SqlCommand chkuser = new SqlCommand(cmd, conn);

            int temp = Convert.ToInt32(chkuser.ExecuteScalar().ToString());

            if (temp == 1)
            {
                string cmd2 = "select password from registration where username ='" + tbusername.Text + "'";
                SqlCommand pass = new SqlCommand(cmd2, conn);
                string password = pass.ExecuteScalar().ToString();
                conn.Close();
                if (password.Equals(tbpassword.Text))
                {
                    Label1.Text = "Successfully login";
                    Session["New"] = tbusername.Text;
                    Response.Redirect("Profile.aspx");//Enter URL

                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Worng Password";
                }
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
