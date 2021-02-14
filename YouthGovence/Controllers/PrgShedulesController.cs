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
    public class PrgShedulesController : Controller
    {
        private Entities db = new Entities();

        // GET: PrgShedules
        public ActionResult Index()
        {
            if (Session["Role"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            var prgShedules = db.PrgShedules.Include(p => p.Volunteer).Include(p => p.Volunteer1);
            return View(prgShedules.ToList());
        }

        // GET: PrgShedules/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PrgShedule prgShedule = db.PrgShedules.Find(id);
            if (prgShedule == null)
            {
                return HttpNotFound();
            }
            return View(prgShedule);
        }

        // GET: PrgShedules/Create
        public ActionResult Create()
        {
            if (Session["Role"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name");
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name");
            return View();
        }

        // POST: PrgShedules/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "SheduleID,EventName,EventCode,SheduleDate,StartingTime,EndingTime,Stage,CollegeName,CoOrdinatorName,CoOrdinatorNumber,UpdatedOn,UpdatedBy,EnteredOn,EnteredBy")] PrgShedule prgShedule)
        {
            if (ModelState.IsValid)
            {
                db.PrgShedules.Add(prgShedule);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", prgShedule.UpdatedBy);
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", prgShedule.EnteredBy);
            return View(prgShedule);
        }

        // GET: PrgShedules/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PrgShedule prgShedule = db.PrgShedules.Find(id);
            if (prgShedule == null)
            {
                return HttpNotFound();
            }
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", prgShedule.UpdatedBy);
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", prgShedule.EnteredBy);
            return View(prgShedule);
        }

        // POST: PrgShedules/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "SheduleID,EventName,EventCode,SheduleDate,StartingTime,EndingTime,Stage,CollegeName,CoOrdinatorName,CoOrdinatorNumber,UpdatedOn,UpdatedBy,EnteredOn,EnteredBy")] PrgShedule prgShedule)
        {
            if (ModelState.IsValid)
            {
                db.Entry(prgShedule).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", prgShedule.UpdatedBy);
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", prgShedule.EnteredBy);
            return View(prgShedule);
        }

        // GET: PrgShedules/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PrgShedule prgShedule = db.PrgShedules.Find(id);
            if (prgShedule == null)
            {
                return HttpNotFound();
            }
            return View(prgShedule);
        }

        // POST: PrgShedules/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            PrgShedule prgShedule = db.PrgShedules.Find(id);
            db.PrgShedules.Remove(prgShedule);
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
