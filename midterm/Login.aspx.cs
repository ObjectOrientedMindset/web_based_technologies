using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Midterm
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_button_Click(object sender, EventArgs e)
        {
            // first name ve last name bilgisini defaulta gönderir.
            
            if (first_name.Text != "" && last_name.Text != "")
            {
                Session["first_name"] = first_name.Text;
                Session["last_name"] = last_name.Text;
                Response.Redirect("Default.aspx");
            }else
            {
                warning_text.Text = "lütfen textboxları doldurunuz !";
            }
                
        }
    }
}