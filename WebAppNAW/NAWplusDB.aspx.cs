using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebAppNAW
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LeviConnectionString"].ConnectionString);
                conn.Open();

                string checkuser = "select count (*) from [Table] where UserName = '" + TextBoxUN.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if(temp == 1)
                {
                    Response.Write("User already Exists");
                }

                
                conn.Close();
            } 
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LeviConnectionString"].ConnectionString);
                conn.Open();

                //string insertQuery = "insert into [Table] (UserName,Email,Password,Country) values (@UnameLVG ,@emailLVG ,@passwordLVG ,@countryLVG)";
                string insertQuery = "insert into [Table] (UserName,Email,Password,Country) values (@UnameLVG ,@emailLVG ,@passwordLVG ,@countryLVG)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@UnameLVG", TextBoxUN.Text);
                com.Parameters.AddWithValue("@emailLVG", TextBoxEmail.Text);
                com.Parameters.AddWithValue("@passwordLVG", TextBoxPass.Text);
                com.Parameters.AddWithValue("@countryLVG", DropDownListCtry.SelectedItem.ToString());

                com.ExecuteNonQuery();
                Response.Redirect("leviManager.aspx");
                Response.Write("Registration is successful, LVG");

                conn.Close();

                //Response.Write("Your Registration is Succesfull");
            }
                catch(Exception ex)
            {
                Response.Write("ErrorLVG:" +ex.ToString());
            }
        }
    }
}