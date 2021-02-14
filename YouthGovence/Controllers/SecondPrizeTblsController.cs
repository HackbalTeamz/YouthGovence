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
    public class SecondPrizeTblsController : BaseController
    {
        //private Entities db = new Entities();

        // GET: SecondPrizeTbls
        public ActionResult Index()
        {
            var secondPrizeTbls = db.SecondPrizeTbls.Include(s => s.Volunteer).Include(s => s.Volunteer1).Include(s => s.EventWiseResult);
            return View(secondPrizeTbls.ToList());
        }

        // GET: SecondPrizeTbls/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SecondPrizeTbl secondPrizeTbl = db.SecondPrizeTbls.Find(id);
            if (secondPrizeTbl == null)
            {
                return HttpNotFound();
            }
            return View(secondPrizeTbl);
        }

        // GET: SecondPrizeTbls/Create
        public ActionResult Create()
        {
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name");
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name");
            ViewBag.EventID = new SelectList(db.EventWiseResults, "EvntID", "EventName");
            return View();
        }

        // POST: SecondPrizeTbls/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "SecondPrizeID,EventID,StudName,StudCollege,EnteredOn,EnteredBy,UpdatedOn,UpdatedBy")] SecondPrizeTbl secondPrizeTbl)
        {
            if (ModelState.IsValid)
            {
                db.SecondPrizeTbls.Add(secondPrizeTbl);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", secondPrizeTbl.EnteredBy);
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", secondPrizeTbl.UpdatedBy);
            ViewBag.EventID = new SelectList(db.EventWiseResults, "EvntID", "EventName", secondPrizeTbl.EventID);
            return View(secondPrizeTbl);
        }

        // GET: SecondPrizeTbls/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SecondPrizeTbl secondPrizeTbl = db.SecondPrizeTbls.Find(id);
            if (secondPrizeTbl == null)
            {
                return HttpNotFound();
            }
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", secondPrizeTbl.EnteredBy);
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", secondPrizeTbl.UpdatedBy);
            ViewBag.EventID = new SelectList(db.EventWiseResults, "EvntID", "EventName", secondPrizeTbl.EventID);
            return View(secondPrizeTbl);
        }

        // POST: SecondPrizeTbls/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "SecondPrizeID,EventID,StudName,StudCollege,EnteredOn,EnteredBy,UpdatedOn,UpdatedBy")] SecondPrizeTbl secondPrizeTbl)
        {
            if (ModelState.IsValid)
            {
                db.Entry(secondPrizeTbl).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", secondPrizeTbl.EnteredBy);
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", secondPrizeTbl.UpdatedBy);
            ViewBag.EventID = new SelectList(db.EventWiseResults, "EvntID", "EventName", secondPrizeTbl.EventID);
            return View(secondPrizeTbl);
        }

        // GET: SecondPrizeTbls/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SecondPrizeTbl secondPrizeTbl = db.SecondPrizeTbls.Find(id);
            if (secondPrizeTbl == null)
            {
                return HttpNotFound();
            }
            return View(secondPrizeTbl);
        }

        // POST: SecondPrizeTbls/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            SecondPrizeTbl secondPrizeTbl = db.SecondPrizeTbls.Find(id);
            db.SecondPrizeTbls.Remove(secondPrizeTbl);
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
