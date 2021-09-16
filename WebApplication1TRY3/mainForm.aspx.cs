using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1TRY3
{
    //starts the web page backend 
    public partial class mainForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //function for events redirect handeler
        protected void CustomerDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CustomerDDL.Text == "Customers")
            {
                Response.Redirect("showCustomers.aspx");
            }
            else if (CustomerDDL.Text == "Add Customer")
            {
                Response.Redirect("addCustomers.aspx");
            }
            else if (CustomerDDL.Text == "Edit Customers")
            {
                Response.Redirect("showCustomers.aspx");
            }
        }

        protected void mainPbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("mainForm.aspx");
        }
    }
}