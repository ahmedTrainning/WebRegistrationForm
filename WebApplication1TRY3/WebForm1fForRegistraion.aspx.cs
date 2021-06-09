using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.EntityFrameworkCore;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace WebApplication1TRY3
{
    public partial class WebForm1fForRegistraion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(Object sender, EventArgs e)
        {

        SqlConnection sqlcon = new SqlConnection(@"server =.\SQLEXPRESS;database=saveVariablesDataBase;Integrated Security=true");
            {
                SqlCommand cmd = new SqlCommand("insert into logintbl values (,,,,) ", sqlcon);

                cmd.Parameters.AddWithValue("name", TextBox1.Text);
                cmd.Parameters.AddWithValue("pass", TextBox2.Text);
                cmd.Parameters.AddWithValue("city", TextBox3.Text);
                cmd.Parameters.AddWithValue("gender", TextBox4.Text);
                cmd.Parameters.AddWithValue("mail", TextBox5.Text);

                cmd.ExecuteNonQuery();
                TextBox1.Text = "";
                sqlcon.Close();
            }
            }
}



                