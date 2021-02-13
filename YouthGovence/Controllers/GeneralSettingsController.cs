using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using YouthFestival.Models;

namespace YouthFestival.Controllers
{
    public class GeneralSettingsController : BaseController
    {

        // GET: GeneralSettings
        public ActionResult Index()
        {
            return View(db.GeneralSettings.ToList());
        }

        // GET: GeneralSettings/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GeneralSetting generalSetting = db.GeneralSettings.Find(id);
            if (generalSetting == null)
            {
                return HttpNotFound();
            }
            return View(generalSetting);
        }

        // GET: GeneralSettings/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: GeneralSettings/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "GenSetID,EnteredOn,UpdatedOn")] GeneralSetting generalSetting)
        {
            if (ModelState.IsValid)
            {
                db.GeneralSettings.Add(generalSetting);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(generalSetting);
        }

        // GET: GeneralSettings/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GeneralSetting generalSetting = db.GeneralSettings.Find(id);
            if (generalSetting == null)
            {
                return HttpNotFound();
            }
            return View(generalSetting);
        }

        // POST: GeneralSettings/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "GenSetID,EnteredOn,UpdatedOn")] GeneralSetting generalSetting)
        {
            if (ModelState.IsValid)
            {
                db.Entry(generalSetting).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(generalSetting);
        }

        // GET: GeneralSettings/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GeneralSetting generalSetting = db.GeneralSettings.Find(id);
            if (generalSetting == null)
            {
                return HttpNotFound();
            }
            return View(generalSetting);
        }

        // POST: GeneralSettings/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            GeneralSetting generalSetting = db.GeneralSettings.Find(id);
            db.GeneralSettings.Remove(generalSetting);
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
