using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.EntityFrameworkCore;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1TRY3
{
    public partial class addCustomers : System.Web.UI.Page
    {
        //creating connection string to control the backend database instead of using a outsiders programms
        public string connection = (@"server =.\SQLEXPRESS;database=customerMang;Integrated Security=true");
        SqlConnection sqlcon;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //save button
        protected void savebtn_Click(object sender, EventArgs e)
        {
            save(nametxt.Text, CID.Text, Grouptxt.Text,divisiontxt.Text);
        }

        
        
        protected void showCus_Click(object sender, EventArgs e)
        {
            Response.Redirect("showCustomers.aspx");
        }

        // save function injected to the save button which connect to the server
        public void save(string Name, string ID, string GroupBelong,string Division)
        {
            sqlcon = new SqlConnection(connection);
            cmd = new SqlCommand("insertwebproc", sqlcon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Name", SqlDbType.VarChar, 50).Value = Name;
            cmd.Parameters.Add("@ID", SqlDbType.VarChar, 50).Value = ID;
            cmd.Parameters.Add("@GroupBelong", SqlDbType.VarChar, 50).Value = GroupBelong;
            cmd.Parameters.Add("@Division", SqlDbType.VarChar, 50).Value = Division;
            sqlcon.Open();
            cmd.ExecuteNonQuery();
            MsgBox("saved", this.Page, this);
            sqlcon.Close();
        }

        // message box using main http and js format
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }

        //on alaa
        protected void AddGroupButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }

        protected void nametxt_TextChanged(object sender, EventArgs e)
        {

        }
    }
}