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
    public class GrpEventsController : Controller
    {
        private Entities db = new Entities();

        // GET: GrpEvents
        public ActionResult Index()
        {
            var grpEvents = db.GrpEvents.Include(g => g.Volunteer);
            return View(grpEvents.ToList());
        }

        // GET: GrpEvents/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GrpEvent grpEvent = db.GrpEvents.Find(id);
            if (grpEvent == null)
            {
                return HttpNotFound();
            }
            return View(grpEvent);
        }

        // GET: GrpEvents/Create
        public ActionResult Create()
        {
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name");
            return View();
        }

        // POST: GrpEvents/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "GrpEvtID,Name,GrpPartcCount,EnteredBy,EnteredOn,UpdatedOn")] GrpEvent grpEvent)
        {
            if (ModelState.IsValid)
            {
                db.GrpEvents.Add(grpEvent);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", grpEvent.EnteredBy);
            return View(grpEvent);
        }

        // GET: GrpEvents/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GrpEvent grpEvent = db.GrpEvents.Find(id);
            if (grpEvent == null)
            {
                return HttpNotFound();
            }
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", grpEvent.EnteredBy);
            return View(grpEvent);
        }

        // POST: GrpEvents/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "GrpEvtID,Name,GrpPartcCount,EnteredBy,EnteredOn,UpdatedOn")] GrpEvent grpEvent)
        {
            if (ModelState.IsValid)
            {
                db.Entry(grpEvent).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.EnteredBy = new SelectList(db.Volunteers, "VolID", "Name", grpEvent.EnteredBy);
            return View(grpEvent);
        }

        // GET: GrpEvents/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GrpEvent grpEvent = db.GrpEvents.Find(id);
            if (grpEvent == null)
            {
                return HttpNotFound();
            }
            return View(grpEvent);
        }

        // POST: GrpEvents/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            GrpEvent grpEvent = db.GrpEvents.Find(id);
            db.GrpEvents.Remove(grpEvent);
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
