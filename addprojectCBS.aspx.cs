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
    public partial class addprojectCBS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                //Label1.Text = Session["New"].ToString();
            }
            else
            {
                //Response.Redirect("login.aspx");
            }
        }

        protected void lblogin_Click(object sender, EventArgs e)
        {

        }

        protected void tbyear1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginRegistrationConnectionString"].ConnectionString);

                conn.Open();
                string insertString = "insert into rawcbs (buildcost,mcost1,mcost2,mcost3,mcost4,benefit1,benefit2,benefit3,benefit4,discountfactor) values (@buildcost,@mcost1,@mcost2,@mcost3,@mcost4,@benefit1,@benefit2,@benefit3,@benefit4,@discountfactor)";
                SqlCommand insertUser = new SqlCommand(insertString, conn);

                CostBenefitProject c = new CostBenefitProject();
                
                c.buildCost = Convert.ToDouble(tbbuildcost.Text);
                c.maintainanceCostYear1 = Convert.ToDouble(tbyear1.Text);
                c.maintainanceCostYear2 = Convert.ToDouble(tbyear2.Text);
                c.maintainanceCostYear3 = Convert.ToDouble(tbyear3.Text);
                c.maintainanceCostYear4 = Convert.ToDouble(tbyear4.Text);
                c.benefitYear1 = Convert.ToDouble(tbyear5.Text);
                c.benefitYear2 = Convert.ToDouble(tbyear6.Text);
                c.benefitYear3 = Convert.ToDouble(tbyear7.Text);
                c.discountFactor = Convert.ToInt32(ddldiscountfactor.SelectedValue.ToString());
                c.benefitYear4 = Convert.ToDouble(tbyear8.Text);
                c = c.discountedProject();

                //Response.Write(c.benefitYear3);

                insertUser.Parameters.AddWithValue("@buildcost", Convert.ToDouble(tbbuildcost.Text));
                insertUser.Parameters.AddWithValue("@mcost1", Convert.ToDouble(tbyear1.Text));
                insertUser.Parameters.AddWithValue("@mcost2", Convert.ToDouble(tbyear2.Text));
                insertUser.Parameters.AddWithValue("@mcost3", Convert.ToDouble(tbyear3.Text));
                insertUser.Parameters.AddWithValue("@mcost4", Convert.ToDouble(tbyear4.Text));
                insertUser.Parameters.AddWithValue("@benefit1", Convert.ToDouble(tbyear5.Text));
                insertUser.Parameters.AddWithValue("@benefit2", Convert.ToDouble(tbyear6.Text));
                insertUser.Parameters.AddWithValue("@benefit3", Convert.ToDouble(tbyear7.Text));
                insertUser.Parameters.AddWithValue("@benefit4", Convert.ToDouble(tbyear8.Text));
                insertUser.Parameters.AddWithValue("@discountfactor", Convert.ToInt32(ddldiscountfactor.SelectedValue.ToString()));
                
                insertUser.ExecuteNonQuery();

                CostBenefitProject.addDisCbs(c);
                lblRegister.Text = "Project added!";
                conn.Close();


            }
            catch (Exception ex)
            {
                lblRegister.Text = "Project not added!";
                lblRegister.Text = ex.ToString();


            }
        }
    }
}