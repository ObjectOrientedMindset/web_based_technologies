using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_Midterm
{
    public class Customer
    {
        public string CustomerID;
        public string CustomerName;
        public string CustomerPassword;

        public Customer(string customer_id, string customer_name, string customer_password)
        {
            CustomerName = customer_name;
            CustomerPassword = customer_password;
            CustomerID = customer_id;
        }
    }
}