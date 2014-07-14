using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GreendaleContactList
{
    public partial class contactlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblConfirmation.Text = "Thank you. Your request has been submitted.";
            txtMEID.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtMajorId.Text = "";
            txtEmail.Text = "";
            txtPhoneNumber.Text = "";
            txtMEID.Focus();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            lblConfirmation.Text = "";
            txtMEID.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtMajorId.Text = "";
            txtEmail.Text = "";
            txtPhoneNumber.Text = "";
            txtMEID.Focus();
        }

        protected void txtPhoneNumber_TextChanged(object sender, EventArgs e)
        {
              
        }

    }
}