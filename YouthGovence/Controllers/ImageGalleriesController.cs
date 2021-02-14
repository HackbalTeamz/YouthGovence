using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using YouthGovence.AppCode;
using YouthGovence.Models;

namespace YouthGovence.Controllers
{
    [Authorized(Roles = Constants.GalleryUpdater)]
    public class ImageGalleriesController : Controller
    {
        private Entities db = new Entities();

        // GET: ImageGalleries
        public ActionResult Index()
        {
            var imageGalleries = db.ImageGalleries.Include(i => i.Volunteer);
            return View(imageGalleries.ToList());
        }

        // GET: ImageGalleries/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ImageGallery imageGallery = db.ImageGalleries.Find(id);
            if (imageGallery == null)
            {
                return HttpNotFound();
            }
            return View(imageGallery);
        }

        // GET: ImageGalleries/Create
        public ActionResult Create()
        {
            ViewBag.UploadedBy = new SelectList(db.Volunteers, "VolID", "Name");
            return View();
        }

        // POST: ImageGalleries/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(ImageGallery imageGallery, HttpPostedFileBase ImgURL)
        {
            if (ModelState.IsValid)
            {
                if (ImgURL.ContentLength > 0)
                {
                    string _FileName = Path.GetFileName(ImgURL.FileName);
                    string _path = Path.Combine(Server.MapPath("~/UploadImage"), _FileName);
                    ImgURL.SaveAs(_path);
                    imageGallery.ImgURL = _FileName;
                }
                imageGallery.UploadedBy = Convert.ToInt64(GlobalVariables.GlobelUserId);
                imageGallery.UpdatedOn = DateTime.UtcNow;
                imageGallery.EnteredOn = DateTime.UtcNow;
                db.ImageGalleries.Add(imageGallery);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.UploadedBy = new SelectList(db.Volunteers, "VolID", "Name", imageGallery.UploadedBy);
            return View(imageGallery);
        }

        // GET: ImageGalleries/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ImageGallery imageGallery = db.ImageGalleries.Find(id);
            if (imageGallery == null)
            {
                return HttpNotFound();
            }
            ViewBag.UploadedBy = new SelectList(db.Volunteers, "VolID", "Name", imageGallery.UploadedBy);
            return View(imageGallery);
        }

        // POST: ImageGalleries/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ImGaID,ImgURL,ImgAlt,UploadedBy,EnteredOn,UpdatedOn")] ImageGallery imageGallery)
        {
            if (ModelState.IsValid)
            {
                db.Entry(imageGallery).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.UploadedBy = new SelectList(db.Volunteers, "VolID", "Name", imageGallery.UploadedBy);
            return View(imageGallery);
        }

        // GET: ImageGalleries/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ImageGallery imageGallery = db.ImageGalleries.Find(id);
            if (imageGallery == null)
            {
                return HttpNotFound();
            }
            return View(imageGallery);
        }

        // POST: ImageGalleries/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            ImageGallery imageGallery = db.ImageGalleries.Find(id);
            db.ImageGalleries.Remove(imageGallery);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
