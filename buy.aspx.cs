using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MidWebsite
{
    public partial class buy : System.Web.UI.Page
    {
       
        public List<product> allproduct;
        protected void Page_Load(object sender, EventArgs e)
        {
            allproduct = new List<product>();
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["bs"].ConnectionString);
                conn.Open();
                String checkuser = "select * from Client_Table";
                SqlCommand com = new SqlCommand(checkuser, conn);
                SqlDataReader reader = com.ExecuteReader();
                while (reader.Read())
                {
                    product product = new product();

                    product.Id = Convert.ToInt32(reader["Id"]);
                    product.Name = (reader["Name"].ToString());
                    product.CType = (reader["CType"].ToString());
                    product.ChanceToClose = (reader["ChanceToClose"].ToString());
                    product.EBudget = (reader["EBudget"].ToString());
                    product.Description = (reader["Description"].ToString());

                    allproduct.Add(product);



                }
                reader.Close();
            }
            catch (Exception)
            {
                throw;
            }
                    }
    }
}