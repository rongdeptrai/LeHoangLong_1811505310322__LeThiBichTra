using ModelEF.Model;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelEF.DAO
{
    public class CategoryDao
    {
        private LeHoangLongContext db;
        public CategoryDao()
        {
            db = new LeHoangLongContext();

        }

  
        public List<Category> ListAll()
        {
            return db.Categories.ToList();
        }
     
    }
}
