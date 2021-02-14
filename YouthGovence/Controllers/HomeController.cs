using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using YouthGovence.Models;

namespace YouthGovence.Controllers
{
    public class HomeController : BaseController
    {
        // GET: Home //test///test
        public ActionResult Index()
        {
            HomePageModel hompgm = new HomePageModel();
            hompgm.newslist = db.News.OrderByDescending(x=>x.UpdatedOn).ToList();
            hompgm.imglist = db.ImageGalleries.OrderByDescending(x=>x.UpdatedOn).Take(5).ToList();
            return View(hompgm);
        }
        
    }
}
