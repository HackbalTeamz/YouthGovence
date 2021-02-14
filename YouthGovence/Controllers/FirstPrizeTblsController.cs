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
    public class FirstPrizeTblsController : BaseController
    {
        //private Entities db = new Entities();

        // GET: FirstPrizeTbls
        public ActionResult Index()
        {
            var firstPrizeTbls = db.FirstPrizeTbls.Include(f => f.Volunteer).Include(f => f.Volunteer1).Include(f => f.EventWiseResult);
            return View(firstPrizeTbls.ToList());
        }

        // GET: FirstPrizeTbls/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FirstPrizeTbl firstPrizeTbl = db.FirstPrizeTbls.Find(id);
            if (firstPrizeTbl == null)
            {
                return HttpNotFound();
            }
            return View(firstPrizeTbl);
        }

        // GET: FirstPrizeTbls/Create
        public ActionResult Create()
        {
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name");
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name");
            ViewBag.EventID = new SelectList(db.EventWiseResults, "EvntID", "EventName");
            return View();
        }

        // POST: FirstPrizeTbls/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "FIrstPrizeID,EventID,StudName,StudCollege,EnteredOn,EnteredBy,UpdatedOn,UpdatedBy")] FirstPrizeTbl firstPrizeTbl)
        {
            if (ModelState.IsValid)
            {
                db.FirstPrizeTbls.Add(firstPrizeTbl);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", firstPrizeTbl.EnteredBy);
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", firstPrizeTbl.UpdatedBy);
            ViewBag.EventID = new SelectList(db.EventWiseResults, "EvntID", "EventName", firstPrizeTbl.EventID);
            return View(firstPrizeTbl);
        }

        // GET: FirstPrizeTbls/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FirstPrizeTbl firstPrizeTbl = db.FirstPrizeTbls.Find(id);
            if (firstPrizeTbl == null)
            {
                return HttpNotFound();
            }
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", firstPrizeTbl.EnteredBy);
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", firstPrizeTbl.UpdatedBy);
            ViewBag.EventID = new SelectList(db.EventWiseResults, "EvntID", "EventName", firstPrizeTbl.EventID);
            return View(firstPrizeTbl);
        }

        // POST: FirstPrizeTbls/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "FIrstPrizeID,EventID,StudName,StudCollege,EnteredOn,EnteredBy,UpdatedOn,UpdatedBy")] FirstPrizeTbl firstPrizeTbl)
        {
            if (ModelState.IsValid)
            {
                db.Entry(firstPrizeTbl).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", firstPrizeTbl.EnteredBy);
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", firstPrizeTbl.UpdatedBy);
            ViewBag.EventID = new SelectList(db.EventWiseResults, "EvntID", "EventName", firstPrizeTbl.EventID);
            return View(firstPrizeTbl);
        }

        // GET: FirstPrizeTbls/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FirstPrizeTbl firstPrizeTbl = db.FirstPrizeTbls.Find(id);
            if (firstPrizeTbl == null)
            {
                return HttpNotFound();
            }
            return View(firstPrizeTbl);
        }

        // POST: FirstPrizeTbls/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            FirstPrizeTbl firstPrizeTbl = db.FirstPrizeTbls.Find(id);
            db.FirstPrizeTbls.Remove(firstPrizeTbl);
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
