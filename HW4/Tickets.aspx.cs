using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Airline_HW4
{
    public partial class Tickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FlightNo.Text = Session["FlightNo"].ToString();
            From.Text = Session["From"].ToString();
            To.Text = Session["To"].ToString();
            DepartureDate.Text = Session["DepartureDate"].ToString();
            Time.Text = Session["Time"].ToString();
            Capacity.Text = Session["Capacity"].ToString();
        }
    }
}