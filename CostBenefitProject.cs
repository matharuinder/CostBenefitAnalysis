using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace PA
{
    class CostBenefitProject : Project
    {
        public double buildCost { get; set; }

        public double maintainanceCostYear1 { get; set; }
        public double maintainanceCostYear2 { get; set; }
        public double maintainanceCostYear3 { get; set; }
        public double maintainanceCostYear4 { get; set; }

        public double benefitYear1 { get; set; }
        public double benefitYear2 { get; set; }
        public double benefitYear3 { get; set; }

        public double benefitYear4 { get; set; }

        public double discountFactor { get; set; }



        public CostBenefitProject discountedProject()
        {
            CostBenefitProject c = new CostBenefitProject();

            if (discountFactor == 1)
            {
                c.maintainanceCostYear1 = this.maintainanceCostYear1 * 0.99;
                c.maintainanceCostYear2 = this.maintainanceCostYear2 * 0.98;
                c.maintainanceCostYear3 = this.maintainanceCostYear3 * 0.971;
                c.maintainanceCostYear4 = this.maintainanceCostYear4 * 0.961;

                c.benefitYear1 = this.benefitYear1 * 0.99;
                c.benefitYear2 = this.benefitYear2 * 0.98;
                c.benefitYear3 = this.benefitYear3 * 0.971;
                c.benefitYear4 = this.benefitYear4 * 0.961;

            }
            if (discountFactor == 2)
            {
                c.maintainanceCostYear1 = this.maintainanceCostYear1 * 0.98;
                c.maintainanceCostYear2 = this.maintainanceCostYear2 * 0.961;
                c.maintainanceCostYear3 = this.maintainanceCostYear3 * 0.942;
                c.maintainanceCostYear4 = this.maintainanceCostYear4 * 0.924;

                c.benefitYear1 = this.benefitYear1 * 0.98;
                c.benefitYear2 = this.benefitYear2 * 0.961;
                c.benefitYear3 = this.benefitYear3 * 0.942;
                c.benefitYear4 = this.benefitYear4 * 0.924;

            }
            if (discountFactor == 3)
            {
                c.maintainanceCostYear1 = this.maintainanceCostYear1 * 0.971;
                c.maintainanceCostYear2 = this.maintainanceCostYear2 * 0.943;
                c.maintainanceCostYear3 = this.maintainanceCostYear3 * 0.915;
                c.maintainanceCostYear4 = this.maintainanceCostYear4 * 0.888;

                c.benefitYear1 = this.benefitYear1 * 0.971;
                c.benefitYear2 = this.benefitYear2 * 0.943;
                c.benefitYear3 = this.benefitYear3 * 0.915;
                c.benefitYear4 = this.benefitYear4 * 0.888;

            }
            if (discountFactor == 4)
            {
                c.maintainanceCostYear1 = this.maintainanceCostYear1 * 0.962;
                c.maintainanceCostYear2 = this.maintainanceCostYear2 * 0.925;
                c.maintainanceCostYear3 = this.maintainanceCostYear3 * 0.889;
                c.maintainanceCostYear4 = this.maintainanceCostYear4 * 0.855;

                c.benefitYear1 = this.benefitYear1 * 0.962;
                c.benefitYear2 = this.benefitYear2 * 0.925;
                c.benefitYear3 = this.benefitYear3 * 0.889;
                c.benefitYear4 = this.benefitYear4 * 0.855;

            }
            if (discountFactor == 5)
            {
                c.maintainanceCostYear1 = this.maintainanceCostYear1 * 0.952;
                c.maintainanceCostYear2 = this.maintainanceCostYear2 * 0.907;
                c.maintainanceCostYear3 = this.maintainanceCostYear3 * 0.864;
                c.maintainanceCostYear4 = this.maintainanceCostYear4 * 0.823;

                c.benefitYear1 = this.benefitYear1 * 0.952;
                c.benefitYear2 = this.benefitYear2 * 0.907;
                c.benefitYear3 = this.benefitYear3 * 0.864;
                c.benefitYear4 = this.benefitYear4 * 0.823;

            }
            c.buildCost = this.buildCost;
            return c;
        }

        public double getNetPresentValue()
        {
            double npv = 0;

            npv = this.getTotalBenefit() - this.getTotalCost();

            return npv;
        }

        public double getTotalCost()
        {
            return this.buildCost + this.maintainanceCostYear1 + this.maintainanceCostYear2 + this.maintainanceCostYear3 + this.maintainanceCostYear4;

        }

        public double getTotalBenefit()
        {
            return this.benefitYear1 + this.benefitYear2 + this.benefitYear3 + this.benefitYear4;
        }

        public double getReturnOnInvestment()
        {
            return (this.getNetPresentValue() / this.getTotalCost()) * 100;
        }

        public static void addDisCbs(CostBenefitProject c)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginRegistrationConnectionString"].ConnectionString);

                conn.Open();
                string insertString = "insert into disccbs (buildcost,mcost1,mcost2,mcost3,mcost4,benefit1,benefit2,benefit3,benefit4,projectid,npv,roi) values (@buildcost,@mcost1,@mcost2,@mcost3,@mcost4,@benefit1,@benefit2,@benefit3,@benefit4,@projectid,@npv,@roi)";
                SqlCommand insertUser = new SqlCommand(insertString, conn);

                insertUser.Parameters.AddWithValue("@buildcost", c.buildCost);
                insertUser.Parameters.AddWithValue("@mcost1", c.maintainanceCostYear1);
                insertUser.Parameters.AddWithValue("@mcost2", c.maintainanceCostYear2);
                insertUser.Parameters.AddWithValue("@mcost3", c.maintainanceCostYear3);
                insertUser.Parameters.AddWithValue("@mcost4", c.maintainanceCostYear4);
                insertUser.Parameters.AddWithValue("@benefit1", c.benefitYear1);
                insertUser.Parameters.AddWithValue("@benefit2", c.benefitYear2);
                insertUser.Parameters.AddWithValue("@benefit3", c.benefitYear3);
                insertUser.Parameters.AddWithValue("@benefit4", c.benefitYear4);
                insertUser.Parameters.AddWithValue("@projectid", getLastId());
                insertUser.Parameters.AddWithValue("@npv", c.getNetPresentValue());
                insertUser.Parameters.AddWithValue("@roi", c.getReturnOnInvestment());
                //insertUser.Parameters.AddWithValue("@discountfactor", Convert.ToInt32(ddldiscountfactor.SelectedValue.ToString()));

                insertUser.ExecuteNonQuery();
                conn.Close();


            }
            catch (Exception ex)
            {


            }
        }

        public static int getLastId()
        {
            int last = 0;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginRegistrationConnectionString"].ConnectionString);

            conn.Open();

            string cmd = "select max(projectid) from rawcbs";
            SqlCommand chkuser = new SqlCommand(cmd, conn);

            last = Convert.ToInt32(chkuser.ExecuteScalar().ToString());
            conn.Close();
            return last;

        }


    }

}