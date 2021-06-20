﻿using ModelEF.Model;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelEF.DAO
{
    public class ProductDao
    {
        private LeHoangLongContext db;
        public ProductDao()
        {
            db = new LeHoangLongContext();

        }

        public int Insert(Product product)
        {
            db.Products.Add(product);
            db.SaveChanges();
            return product.ProductID;
        }
        public List<Product> ListAll()
        {
            return db.Products.OrderBy(p=>p.Quantity).ThenByDescending(p=>p.UnitCost).ToList();
        }
        public IEnumerable<Product> ListWhereAll(string keysearch, int page, int pagesize)
        {
            IQueryable<Product> model = db.Products;
            if (!string.IsNullOrEmpty(keysearch))
            {
                model = model.Where(x => x.ProductName.Contains(keysearch));
            }

            return model.OrderBy(x => x.ProductName).ToPagedList(page, pagesize);
        }
        public Product Find(int productID)
        {
            return db.Products.Find(productID);
        }
        public bool Delete(int productid)
        {
            try
            {
                var product = db.Products.Find(productid);
                db.Products.Remove(product);
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
      
    }
}
