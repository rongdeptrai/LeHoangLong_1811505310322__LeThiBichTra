using ModelEF.DAO;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApp.Controllers
{
    public class HomeShopController : Controller
    {
        // GET: HomeShop
        public ActionResult Index(int page = 1, int pagesize = 12)
        {
            var product = new ProductDao();
            var model = product.ListAll();
            return View(model.ToPagedList(page, pagesize));
        }
        public ActionResult Detail()
        {
            var product = new ProductDao();
            var model = product.ListAll();
            return View(model);
        }
        
        [HttpGet]
        public ActionResult Detail(int productID)
        {
            var dao = new ProductDao();
            var result = dao.Find(productID);
            if (result != null)
                return View(result);
            return View();
        }

    }
}