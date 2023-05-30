using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Data;
using System.IO;

namespace WebBasedTechnologiesHW5
{
    public partial class JsonData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch(Request.Cookies["lang"].Value)
            {
                case "en":
                    GridView1.DataSource = null;
                    GridView1.DataBind();
                    GridView1.DataSource = jsondatadisplayen();
                    GridView1.DataBind();
                    break;
                case "tr":
                    GridView1.DataSource = null;
                    GridView1.DataBind();
                    GridView1.DataSource = jsondatadisplaytr();
                    GridView1.DataBind();
                    break;
                default:
                    GridView1.DataSource = null;
                    GridView1.DataBind();
                    GridView1.DataSource = jsondatadisplaytr();
                    GridView1.DataBind();
                    break;
            }
        }

        public DataTable jsondatadisplayen()
        {
            StreamReader sr = new StreamReader(Server.MapPath("./JsonData/jsondataEn.json"));
            string json = sr.ReadToEnd();
            var table = JsonConvert.DeserializeObject<DataTable>(json);
            return table;
        }
        public DataTable jsondatadisplaytr()
        {
            StreamReader sr = new StreamReader(Server.MapPath("./JsonData/jsondata.json"));
            string json = sr.ReadToEnd();
            var table = JsonConvert.DeserializeObject<DataTable>(json);
            return table;
        }
        protected override void InitializeCulture()
        {
            base.InitializeCulture();

            if (Session["lang"].ToString() == "en")
            {
                Page.Culture = Page.UICulture = "en-US";
            }
            else
            {
                Page.Culture = Page.UICulture = "tr-TR";
            }
        }

        protected void lnkChangeLanguage_Click(object sender, EventArgs e)
        {
            string cookieLang = "en";
            switch (lnkChangeLanguage.Text)
            {
                case "English":
                    // Convert to English:
                    cookieLang = "en";
                    break;
                case "Türkçe":
                    // Convert to Turkish:
                    cookieLang = "tr";
                    break;
                default:
                    cookieLang = "tr";
                    break;
            }

            // Save changes into Session:
            Session["lang"] = cookieLang;

            // Save changes into cookies:
            HttpCookie cookie = new HttpCookie("lang", cookieLang);
            cookie.Expires = DateTime.Now.AddDays(14);
            Response.Cookies.Add(cookie);

            // Reload the page to reflect the changes:
            Response.Redirect(Request.Url.ToString());
        }

        protected void ChangeLanguageTurkish_Click(object sender, EventArgs e)
        {
            string cookieLang = "tr";
            switch (ChangeLanguageTurkish.Text)
            {
                case "English":
                    // Convert to English:
                    cookieLang = "en";
                    break;
                case "Türkçe":
                    // Convert to Turkish:
                    cookieLang = "tr";
                    break;
                default:
                    cookieLang = "tr";
                    break;
            }

            // Save changes into Session:
            Session["lang"] = cookieLang;

            // Save changes into cookies:
            HttpCookie cookie = new HttpCookie("lang", cookieLang);
            cookie.Expires = DateTime.Now.AddDays(14);
            Response.Cookies.Add(cookie);

            // Reload the page to reflect the changes:
            Response.Redirect(Request.Url.ToString());
        }
    }
}