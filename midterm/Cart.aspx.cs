using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Collections;
using System.Globalization;

namespace Web_Midterm
{
    public partial class Cart : System.Web.UI.Page
    {
        private ArrayList added_cars;
        private List<Product> products;
        private int total_price;
        private OleDbConnection connection;
        private bool match;
        protected void Page_Load(object sender, EventArgs e)
        {
            //default pageden cart listesini al.
            added_cars = new ArrayList();
            added_cars = (ArrayList)Session["added_cars"];
            //database ile bağlantı kuruldu
            connection = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + AppDomain.CurrentDomain.BaseDirectory + "web_midterm_data.accdb");
            //select * bütün tabloyu seçti
            connection.Open();
            OleDbDataReader reader = null;
            OleDbCommand command = new OleDbCommand("SELECT * from Product", connection);
            reader = command.ExecuteReader();
            //product tablosunun bütün satırlarını okuyup list container'ına saklar
            products = new List<Product>();
            while (reader.Read())
            {
                products.Add(new Product(reader[0].ToString(), reader[1].ToString(), reader[2].ToString(),
                    reader[3].ToString(), reader[4].ToString(), reader[5].ToString(), reader[6].ToString(), reader[7].ToString()
                    ));
            }
            //Sessiondan gelen araba listesini bütün ürünlerin idleriyle karşılaştır
            //Eşleşme bulununca bilgileri update eder.
            
            match = false;
            List<Image> cars = new List<Image>();
            if (added_cars != null)
            {
                for (int i = 0; i < products.Count; i++)
                {
                    for(int j = 0; j < added_cars.Count; j++)
                    {
                        cars.Add(new Image());
                        if (added_cars[j].ToString() == products[i].ProductID)
                        {
                            match = true;
                            cars[j].ImageUrl = products[i].Productlmage;
                            cars[j].ID = products[i].ProductID;
                            image_container.Controls.Add(cars[j]);
                            total_price += Int32.Parse(products[i].ProductPrice);
                            
                        }
                    }                   
                }
            }
            // eğer eşleşme bulunamamışsa error mesajı verir.
            if(!match)
            {
                title.Text = "Sepetinizde Ürün Bulunmamaktadır!";
                title.ForeColor = System.Drawing.Color.Red;
            }
            price.Text = "Total Price : " + total_price.ToString() + "₺";
            connection.Close();
        }
        //deafult page geri döner
        protected void return_Click(object sender, EventArgs e)
        {
            Session["added_cars"] = added_cars;
            Response.Redirect("Default.aspx");
        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            //Session["customer_id"]
            if(match)
            {
                // insert into Orders table
                connection.Open();
                string sql = "INSERT INTO Orders (OrderTotalPrice, CustomerID)VALUES('" + total_price + "','" + (int)Session["customer_id"] + "')";
                OleDbCommand cmd = new OleDbCommand(sql, connection);
                cmd.ExecuteNonQuery();
                connection.Close();
                Response.Redirect("Default.aspx");
            }
        }
    }
}