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
    public partial class ProductInfo : System.Web.UI.Page
    {
        ArrayList added_cars;
        protected void Page_Load(object sender, EventArgs e)
        {   //default pageden cart listesini al.
            added_cars = new ArrayList();
            added_cars = (ArrayList)Session["added_cars"];
            //database ile bağlantı kuruldu
            OleDbConnection connection = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + AppDomain.CurrentDomain.BaseDirectory + "web_midterm_data.accdb");
            //select * bütün tabloyu seçti
            connection.Open();
            OleDbDataReader reader = null;
            OleDbCommand command = new OleDbCommand("SELECT * from Product", connection);
            reader = command.ExecuteReader();
            //product tablosunun bütün satırlarını okuyup list container'ına saklar
            List<Product> products = new List<Product>();
            while (reader.Read())
            {
                products.Add(new Product(reader[0].ToString(), reader[1].ToString(), reader[2].ToString(),
                    reader[3].ToString(), reader[4].ToString(), reader[5].ToString(), reader[6].ToString(), reader[7].ToString()
                    ));
            }
            connection.Close();
            //Sessiondan gelen idyi bütün ürünlerin idleriyle karşılaştır
            //Eşleşme bulununca bilgileri update eder.
            if(Session["ProductId"] != null)
            {
                for (int i = 0; i < products.Count; i++)
                {
                    if (Session["ProductId"].ToString() == products[i].ProductID)
                    {
                        image_id.ImageUrl = products[i].Productlmage;
                        title.Text = "Model : " + products[i].ProductName;
                        category.Text = "Category : " + products[i].ProductCategoryName;
                        brand.Text = "Brand : " + products[i].ProductBrand;
                        quality.Text = "Quality : " + products[i].ProductQuantity;
                        description.Text = "Description : " + products[i].ProductDecription;
                        price.Text = "Price : " + products[i].ProductPrice + "₺";
                    }
                }
            }// eğer eşleşme bulunamamışsa error mesajı verir.
            else 
            {
                title.Text = "Invalid product id return to login!";
                title.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void return_Click(object sender, EventArgs e)
        {   // return back to default page

            Session["added_cars"] = added_cars;
            Response.Redirect("Default.aspx");
        }
        //add car to cart
        protected void Unnamed1_Click(object sender, EventArgs e)
        {   //seçilen araba listede varmı kontrol ediliyo varsa hata mesajı verir
            bool match = false;
           for(int i = 0; i < added_cars.Count; i++)
            {
                if(added_cars[i].ToString() == Session["ProductId"].ToString())
                {
                    match = true;
                }
            }
            if (!match)
            {
                added_cars.Add(Session["ProductId"].ToString());
                Session["added_cars"] = added_cars;
            }
            else
            {
                title.Text = "Seçilen Araba listede mevcut !";
                title.ForeColor = System.Drawing.Color.Red;
            }

        }
        //go to cart
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}