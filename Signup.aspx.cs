using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MidWebsite
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SalesConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("insert into Users_Table (UserName,Pwd,Role,CreatedUserId) values (@email,@password,@role,@lUserid)", conn);

                cmd.Parameters.AddWithValue("@email", Email.Value);
                cmd.Parameters.AddWithValue("@password", UserPassword.Value);
                cmd.Parameters.AddWithValue("@role", "Sales");
                cmd.Parameters.AddWithValue("@lUserid", "");
                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                   
                   
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    conn.Close();
                }


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }



        }
    }
}