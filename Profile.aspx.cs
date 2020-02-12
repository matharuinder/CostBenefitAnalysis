using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PA
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Label1.Text = Session["New"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}