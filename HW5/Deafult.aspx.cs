using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBasedTechnologiesHW5
{
    public partial class Deafult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SafeService login = new SafeService();
            AuthHeader authheader = new AuthHeader();
            authheader.UserName = username.Text;
            authheader.Password = password.Text;
            login.header = authheader;
            bool info = login.checkLogin();

            if(info)
            {
                Response.Redirect("JsonData.aspx");
            }
        }
    }
}