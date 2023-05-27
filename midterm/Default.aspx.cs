using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Collections;

namespace Web_Midterm
{
    public partial class Default : System.Web.UI.Page
    {

        ArrayList added_cars;
        protected void Page_Load(object sender, EventArgs e)
        {   //database ile bağlantı kuruldu
            OleDbConnection connection = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + AppDomain.CurrentDomain.BaseDirectory + "web_midterm_data.accdb");
            //select * bütün tabloyu sorgular
            connection.Open();
            OleDbDataReader reader = null;
            OleDbCommand command = new OleDbCommand("SELECT * from Product", connection);
            reader = command.ExecuteReader();
            //product tablosunun bütün satırlarını okuyup list container'ına saklar
            List<Product> products = new List<Product>();
            while(reader.Read())
            {
                products.Add(new Product(reader[0].ToString(), reader[1].ToString(), reader[2].ToString(),
                    reader[3].ToString(), reader[4].ToString(), reader[5].ToString(), reader[6].ToString(), reader[7].ToString()
                    ));
            }
            //ProductInfo session cart listesi
            added_cars = new ArrayList();
            if (Session["added_cars"] != null)
            {

                added_cars = (ArrayList)Session["added_cars"];
            }
            //imagebuttonları dinamik olarak oluşturur.
            List<ImageButton> cars = new List<ImageButton>();
            for (int i = 0; i < products.Count; i++)
            {
                cars.Add(new ImageButton());
                cars[i].ID = products[i].ProductID;
                cars[i].CssClass = "product";
                cars[i].ImageUrl = products[i].Productlmage;
                //Click eventi oluşturur 
                cars[i].Click += (sd, ev) =>
                {
                    ImageButton me = (ImageButton)sd;
                    Session["ProductId"] = me.ID;
                    Session["added_cars"] = added_cars;
                    Response.Redirect("ProductInfo.aspx");
                };
                car_container.Controls.Add(cars[i]);
            }
            
            connection.Close();

            //Loginden gelen bilgileri kullanarak texti günceller
            if (Session["first_name"] != null)
            {
                user_name.Text = "Welcome " + Session["first_name"].ToString();
            }

        }
        //Cart Button
        protected void ImageButton31_Click(object sender, ImageClickEventArgs e)
        {
            Session["added_cars"] = added_cars;
            Response.Redirect("Cart.aspx");
        }
        //Logout Button
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}