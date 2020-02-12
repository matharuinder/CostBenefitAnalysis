using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace PA
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginRegistrationConnectionString"].ConnectionString);

            conn.Open();
            string cmdstring = "select  count(*) from registration where username = '" + tbusername.Text + "'";
            SqlCommand userexist = new SqlCommand(cmdstring, conn);

            int tempo = Convert.ToInt32(userexist.ExecuteScalar().ToString());
            conn.Close();

            if (tempo == 1)
            {
                lblRegister.Text = "User already exist";
                return;
            }

            try
            {
                //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginRegistrationConnectionString"].ConnectionString);

                conn.Open();
                string insertString = "insert into registration (username,password,email,firstname,lastname) values (@username,@password,@email,@firstname,@lastname)";
                SqlCommand insertUser = new SqlCommand(insertString, conn);

                insertUser.Parameters.AddWithValue("@username", tbusername.Text);
                insertUser.Parameters.AddWithValue("@password", tbpassword.Text);
                insertUser.Parameters.AddWithValue("@email", tbemail.Text);
                insertUser.Parameters.AddWithValue("@firstname", tbfirstname.Text);
                insertUser.Parameters.AddWithValue("@lastname", tblastname.Text);

                insertUser.ExecuteNonQuery();
                lblRegister.Text = "Registration Succesfull";
                conn.Close();


            }
            catch (Exception ex)
            {
                lblRegister.Text = "Registration UnSuccesfull";
                lblRegister.Text = ex.ToString();


            }
        }
    }
}