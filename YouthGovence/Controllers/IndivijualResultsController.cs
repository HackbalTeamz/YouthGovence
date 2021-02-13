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
    public class IndivijualResultsController : Controller
    {
        private Entities db = new Entities();

        // GET: IndivijualResults
        public ActionResult Index()
        {
            var indivijualResults = db.IndivijualResults.Include(i => i.Volunteer).Include(i => i.Volunteer1);
            return View(indivijualResults.ToList());
        }

        // GET: IndivijualResults/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            IndivijualResult indivijualResult = db.IndivijualResults.Find(id);
            if (indivijualResult == null)
            {
                return HttpNotFound();
            }
            return View(indivijualResult);
        }

        // GET: IndivijualResults/Create
        public ActionResult Create()
        {
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name");
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name");
            return View();
        }

        // POST: IndivijualResults/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IndvID,StudName,StudPoint,StudCollege,EnteredOn,UpdatedOn,EnteredBy,UpdatedBy")] IndivijualResult indivijualResult)
        {
            if (ModelState.IsValid)
            {
                db.IndivijualResults.Add(indivijualResult);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", indivijualResult.EnteredBy);
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", indivijualResult.UpdatedBy);
            return View(indivijualResult);
        }

        // GET: IndivijualResults/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            IndivijualResult indivijualResult = db.IndivijualResults.Find(id);
            if (indivijualResult == null)
            {
                return HttpNotFound();
            }
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", indivijualResult.EnteredBy);
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", indivijualResult.UpdatedBy);
            return View(indivijualResult);
        }

        // POST: IndivijualResults/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IndvID,StudName,StudPoint,StudCollege,EnteredOn,UpdatedOn,EnteredBy,UpdatedBy")] IndivijualResult indivijualResult)
        {
            if (ModelState.IsValid)
            {
                db.Entry(indivijualResult).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", indivijualResult.EnteredBy);
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", indivijualResult.UpdatedBy);
            return View(indivijualResult);
        }

        // GET: IndivijualResults/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            IndivijualResult indivijualResult = db.IndivijualResults.Find(id);
            if (indivijualResult == null)
            {
                return HttpNotFound();
            }
            return View(indivijualResult);
        }

        // POST: IndivijualResults/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            IndivijualResult indivijualResult = db.IndivijualResults.Find(id);
            db.IndivijualResults.Remove(indivijualResult);
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
