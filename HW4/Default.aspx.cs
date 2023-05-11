using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Airline_HW4
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Session["FlightNo"] = "2021";
            Session["From"] = "İstanbul";
            Session["To"] = "Eskişehir";
            Session["DepartureDate"] = "20/10/2017";
            Session["Time"] = "04:30 pm";
            Session["Capacity"] = "200";
            Response.Redirect("Registration.aspx");
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            Session["FlightNo"] = "3500";
            Session["From"] = "İstanbul";
            Session["To"] = "Ankara";
            Session["DepartureDate"] = "20/10/2017";
            Session["Time"] = "04:50 pm";
            Session["Capacity"] = "300";
            Response.Redirect("Registration.aspx");
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            Session["FlightNo"] = "2555";
            Session["From"] = "İstanbul";
            Session["To"] = "Antalya";
            Session["DepartureDate"] = "20/10/2017";
            Session["Time"] = "10:30 pm";
            Session["Capacity"] = "150";
            Response.Redirect("Registration.aspx");
        }
    }
}