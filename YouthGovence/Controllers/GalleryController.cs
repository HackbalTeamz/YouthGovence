using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;
using System.Web;
using System.Web.Mvc;

namespace YouthGovence.Controllers
{
    public class GalleryController : BaseController
    {
        // GET: Gallery
        public ActionResult Index()
        {
            var imageGalleries = db.ImageGalleries.Include(i => i.Volunteer).OrderByDescending(x=>x.UpdatedOn);
            return View(imageGalleries.ToList());
        }
    }
}