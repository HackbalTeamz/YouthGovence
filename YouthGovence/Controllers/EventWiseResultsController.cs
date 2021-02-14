using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using YouthGovence.AppCode;
using YouthGovence.Models;

namespace YouthGovence.Controllers
{
    [Authorized(Roles = Constants.NewsUpdater)]
    public class EventWiseResultsController : Controller
    {
        private Entities db = new Entities();

        // GET: EventWiseResults
        public ActionResult Index()
        {
            var eventWiseResults = db.EventWiseResults.Include(e => e.Volunteer).Include(e => e.Volunteer1);
            return View(eventWiseResults.ToList());
        }

        // GET: EventWiseResults/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EventWiseResult eventWiseResult = db.EventWiseResults.Find(id);
            if (eventWiseResult == null)
            {
                return HttpNotFound();
            }
            return View(eventWiseResult);
        }

        // GET: EventWiseResults/Create
        public ActionResult Create()
        {
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name");
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name");
            return View();
        }

        // POST: EventWiseResults/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "EvntID,EventName,FStudChestNumber,FStudName,FStudCollege,SStudChestNumber,SStudName,SStudCollege,TStudChestNumber,TStudName,TStudCollege,EnteredOn,UpdatedOn,UpdatedBy,EnteredBy")] EventWiseResult eventWiseResult)
        {
            if (ModelState.IsValid)
            {
                db.EventWiseResults.Add(eventWiseResult);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", eventWiseResult.UpdatedBy);
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", eventWiseResult.EnteredBy);
            return View(eventWiseResult);
        }

        // GET: EventWiseResults/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EventWiseResult eventWiseResult = db.EventWiseResults.Find(id);
            if (eventWiseResult == null)
            {
                return HttpNotFound();
            }
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", eventWiseResult.UpdatedBy);
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", eventWiseResult.EnteredBy);
            return View(eventWiseResult);
        }

        // POST: EventWiseResults/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "EvntID,EventName,FStudChestNumber,FStudName,FStudCollege,SStudChestNumber,SStudName,SStudCollege,TStudChestNumber,TStudName,TStudCollege,EnteredOn,UpdatedOn,UpdatedBy,EnteredBy")] EventWiseResult eventWiseResult)
        {
            if (ModelState.IsValid)
            {
                db.Entry(eventWiseResult).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", eventWiseResult.UpdatedBy);
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", eventWiseResult.EnteredBy);
            return View(eventWiseResult);
        }

        // GET: EventWiseResults/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EventWiseResult eventWiseResult = db.EventWiseResults.Find(id);
            if (eventWiseResult == null)
            {
                return HttpNotFound();
            }
            return View(eventWiseResult);
        }

        // POST: EventWiseResults/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            EventWiseResult eventWiseResult = db.EventWiseResults.Find(id);
            db.EventWiseResults.Remove(eventWiseResult);
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
