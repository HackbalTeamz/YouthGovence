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
    public class CollegeResultsController : BaseController
    {

        // GET: CollegeResults
        public ActionResult Index()
        {
            if (Session["Role"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            var collegeResults = db.CollegeResults.Include(c => c.Volunteer).Include(c => c.Volunteer1);
            return View(collegeResults.ToList());
        }

        // GET: CollegeResults/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CollegeResult collegeResult = db.CollegeResults.Find(id);
            if (collegeResult == null)
            {
                return HttpNotFound();
            }
            return View(collegeResult);
        }

        // GET: CollegeResults/Create
        public ActionResult Create()
        {
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name");
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name");
            return View();
        }

        // POST: CollegeResults/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ColgID,CollegeName,CollegePoint,EnteredOn,UpdatedOn,EnteredBy,UpdatedBy")] CollegeResult collegeResult)
        {
            if (ModelState.IsValid)
            {
                db.CollegeResults.Add(collegeResult);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", collegeResult.UpdatedBy);
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", collegeResult.EnteredBy);
            return View(collegeResult);
        }

        // GET: CollegeResults/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CollegeResult collegeResult = db.CollegeResults.Find(id);
            if (collegeResult == null)
            {
                return HttpNotFound();
            }
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", collegeResult.UpdatedBy);
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", collegeResult.EnteredBy);
            return View(collegeResult);
        }

        // POST: CollegeResults/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ColgID,CollegeName,CollegePoint,EnteredOn,UpdatedOn,EnteredBy,UpdatedBy")] CollegeResult collegeResult)
        {
            if (ModelState.IsValid)
            {
                db.Entry(collegeResult).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.UpdatedBy = new SelectList(db.Volunteers, "VolID", "Name", collegeResult.UpdatedBy);
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", collegeResult.EnteredBy);
            return View(collegeResult);
        }

        // GET: CollegeResults/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CollegeResult collegeResult = db.CollegeResults.Find(id);
            if (collegeResult == null)
            {
                return HttpNotFound();
            }
            return View(collegeResult);
        }

        // POST: CollegeResults/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            CollegeResult collegeResult = db.CollegeResults.Find(id);
            db.CollegeResults.Remove(collegeResult);
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
