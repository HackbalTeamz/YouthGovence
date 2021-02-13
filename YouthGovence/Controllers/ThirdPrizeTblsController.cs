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
    [Authorized(Roles = Constants.NewsUpdater)]
    public class ThirdPrizeTblsController : BaseController
    {
        //private Entities db = new Entities();

        // GET: ThirdPrizeTbls
        public ActionResult Index()
        {
            var thirdPrizeTbls = db.ThirdPrizeTbls.Include(t => t.Volunteer).Include(t => t.Volunteer1).Include(t => t.EventWiseResult);
            return View(thirdPrizeTbls.ToList());
        }

        // GET: ThirdPrizeTbls/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ThirdPrizeTbl thirdPrizeTbl = db.ThirdPrizeTbls.Find(id);
            if (thirdPrizeTbl == null)
            {
                return HttpNotFound();
            }
            return View(thirdPrizeTbl);
        }

        // GET: ThirdPrizeTbls/Create
        public ActionResult Create()
        {
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name");
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name");
            ViewBag.EventID = new SelectList(db.EventWiseResults, "EvntID", "EventName");
            return View();
        }

        // POST: ThirdPrizeTbls/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ThirdPrizeID,EventID,StudName,StudCollege,EnteredOn,EnteredBy,UpdatedOn,UpdatedBy")] ThirdPrizeTbl thirdPrizeTbl)
        {
            if (ModelState.IsValid)
            {
                db.ThirdPrizeTbls.Add(thirdPrizeTbl);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", thirdPrizeTbl.UpdatedBy);
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", thirdPrizeTbl.EnteredBy);
            ViewBag.EventID = new SelectList(db.EventWiseResults, "EvntID", "EventName", thirdPrizeTbl.EventID);
            return View(thirdPrizeTbl);
        }

        // GET: ThirdPrizeTbls/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ThirdPrizeTbl thirdPrizeTbl = db.ThirdPrizeTbls.Find(id);
            if (thirdPrizeTbl == null)
            {
                return HttpNotFound();
            }
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", thirdPrizeTbl.UpdatedBy);
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", thirdPrizeTbl.EnteredBy);
            ViewBag.EventID = new SelectList(db.EventWiseResults, "EvntID", "EventName", thirdPrizeTbl.EventID);
            return View(thirdPrizeTbl);
        }

        // POST: ThirdPrizeTbls/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ThirdPrizeID,EventID,StudName,StudCollege,EnteredOn,EnteredBy,UpdatedOn,UpdatedBy")] ThirdPrizeTbl thirdPrizeTbl)
        {
            if (ModelState.IsValid)
            {
                db.Entry(thirdPrizeTbl).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", thirdPrizeTbl.UpdatedBy);
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", thirdPrizeTbl.EnteredBy);
            ViewBag.EventID = new SelectList(db.EventWiseResults, "EvntID", "EventName", thirdPrizeTbl.EventID);
            return View(thirdPrizeTbl);
        }

        // GET: ThirdPrizeTbls/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ThirdPrizeTbl thirdPrizeTbl = db.ThirdPrizeTbls.Find(id);
            if (thirdPrizeTbl == null)
            {
                return HttpNotFound();
            }
            return View(thirdPrizeTbl);
        }

        // POST: ThirdPrizeTbls/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            ThirdPrizeTbl thirdPrizeTbl = db.ThirdPrizeTbls.Find(id);
            db.ThirdPrizeTbls.Remove(thirdPrizeTbl);
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
