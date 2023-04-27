using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IMDbApiLib; // install nuGet package IMDbApiLib
using IMDbApiLib.Models;
using System.Threading.Tasks;

namespace IMDBClone
{
    public partial class WebForm1 : System.Web.UI.Page
    {        


        protected void Page_Load(object sender, EventArgs e)
        {
            getData();
        }   

        private async Task getData()
        {
            var apiLib = new ApiLib("k_fgap013y");
            var data = await apiLib.Top250MoviesAsync();

            GridView1.DataSource = data.Items;
            GridView1.DataBind();
        }




        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}