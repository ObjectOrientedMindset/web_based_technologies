using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_Midterm
{
    public class Product
    {
        public string ProductID;
        public string ProductName;
        public string ProductPrice;
        public string Productlmage;
        public string ProductDecription;
        public string ProductBrand;
        public string ProductQuantity;
        public string ProductCategoryName;
        public Product(string ProductID, string ProductName, string ProductPrice,
        string Productlmage, string ProductDecription, string ProductBrand,
        string ProductQuantity, string ProductCategoryName
        )
        {
            this.ProductID = ProductID;
            this.ProductName = ProductName;
            this.ProductPrice = ProductPrice;
            this.Productlmage = Productlmage;
            this.ProductDecription = ProductDecription;
            this.ProductBrand = ProductBrand;
            this.ProductQuantity = ProductQuantity;
            this.ProductCategoryName = ProductCategoryName;
        }

    }
}