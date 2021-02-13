using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using YouthFestival.App_Code;
using YouthFestival.Models;

namespace YouthFestival.Controllers
{
    [Authorized(Roles = Constants.SuperAdmin)]
    public class SingleEventsController : Controller
    {
        private Entities db = new Entities();

        // GET: SingleEvents
        public ActionResult Index()
        {
            return View(db.SingleEvents.ToList());
        }

        // GET: SingleEvents/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SingleEvent singleEvent = db.SingleEvents.Find(id);
            if (singleEvent == null)
            {
                return HttpNotFound();
            }
            return View(singleEvent);
        }

        // GET: SingleEvents/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: SingleEvents/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "SinEvtID,Name,EnteredBy,EnteredOn,UpdatedOn")] SingleEvent singleEvent)
        {
            if (ModelState.IsValid)
            {
                db.SingleEvents.Add(singleEvent);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(singleEvent);
        }

        // GET: SingleEvents/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SingleEvent singleEvent = db.SingleEvents.Find(id);
            if (singleEvent == null)
            {
                return HttpNotFound();
            }
            return View(singleEvent);
        }

        // POST: SingleEvents/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "SinEvtID,Name,EnteredBy,EnteredOn,UpdatedOn")] SingleEvent singleEvent)
        {
            if (ModelState.IsValid)
            {
                db.Entry(singleEvent).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(singleEvent);
        }

        // GET: SingleEvents/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SingleEvent singleEvent = db.SingleEvents.Find(id);
            if (singleEvent == null)
            {
                return HttpNotFound();
            }
            return View(singleEvent);
        }

        // POST: SingleEvents/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            SingleEvent singleEvent = db.SingleEvents.Find(id);
            db.SingleEvents.Remove(singleEvent);
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
