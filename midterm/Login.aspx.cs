using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Web_Midterm
{
    public partial class Login : System.Web.UI.Page
    {
        private OleDbConnection connection;
        private List<Customer> customers;
        protected void Page_Load(object sender, EventArgs e)
        {
            //database ile bağlantı kuruldu
            connection = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + AppDomain.CurrentDomain.BaseDirectory + "web_midterm_data.accdb");
            //select * bütün tabloyu sorgular
            connection.Open();
            OleDbDataReader reader = null;
            OleDbCommand command = new OleDbCommand("SELECT * from Customer", connection);
            reader = command.ExecuteReader();
            //product tablosunun bütün satırlarını okuyup list container'ına saklar
            customers = new List<Customer>();
            while (reader.Read())
            {
                customers.Add(new Customer(reader[0].ToString(), reader[1].ToString(), reader[2].ToString()));
            }
            connection.Close();
        }

        protected void login_button_Click(object sender, EventArgs e)
        {
            bool match = false;

            if (first_name.Text != "" && password.Text != "")
            {
                foreach (var customer in customers)
                {
                    if (first_name.Text == customer.CustomerName && password.Text == customer.CustomerPassword)
                    {
                        match = true;
                        Session["customer_id"] = Int32.Parse(customer.CustomerID);
                    }
                }
                if (!match)
                {
                    // insert into Customer table
                    connection.Open();
                    string sql = "INSERT INTO Customer (CustomerName, CustomerPassword)VALUES('" + first_name.Text + "','" + Int32.Parse(password.Text) + "')";
                    OleDbCommand cmd = new OleDbCommand(sql, connection);
                    cmd.ExecuteNonQuery();
                    connection.Close();
                    Session["customer_id"] = customers.Count + 1;
                }
                Session["first_name"] = first_name.Text;
                Response.Redirect("Default.aspx");
            }
            else
            {
                warning_text.Text = "lütfen textboxları doldurunuz !";
            }

        }
    }
}