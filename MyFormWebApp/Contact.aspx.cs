using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFormWebApp
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //divMessage.Visible = false;
            divMessage.Attributes.Add("style", "color:blue;");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string message = string.Format("You said your name is {0} and your age is {1}.  Your favorite color is {2}", txtName.Text, txtAge.Text, ddlColor.SelectedValue);
            ltMessage.Text = message;
        }
    }
}