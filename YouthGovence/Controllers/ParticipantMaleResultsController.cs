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
    public class ParticipantMaleResultsController : Controller
    {
        private Entities db = new Entities();

        // GET: ParticipantMaleResults
        public ActionResult Index()
        {
            return View(db.ParticipantMaleResults.ToList());
        }

        // GET: ParticipantMaleResults/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ParticipantMaleResult participantMaleResult = db.ParticipantMaleResults.Find(id);
            if (participantMaleResult == null)
            {
                return HttpNotFound();
            }
            return View(participantMaleResult);
        }

        // GET: ParticipantMaleResults/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ParticipantMaleResults/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PartMaleResultID,StudName,CollegeName,StudPoint,EnteredOn,UpdatedOn")] ParticipantMaleResult participantMaleResult)
        {
            if (ModelState.IsValid)
            {
                db.ParticipantMaleResults.Add(participantMaleResult);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(participantMaleResult);
        }

        // GET: ParticipantMaleResults/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ParticipantMaleResult participantMaleResult = db.ParticipantMaleResults.Find(id);
            if (participantMaleResult == null)
            {
                return HttpNotFound();
            }
            return View(participantMaleResult);
        }

        // POST: ParticipantMaleResults/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PartMaleResultID,StudName,CollegeName,StudPoint,EnteredOn,UpdatedOn")] ParticipantMaleResult participantMaleResult)
        {
            if (ModelState.IsValid)
            {
                db.Entry(participantMaleResult).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(participantMaleResult);
        }

        // GET: ParticipantMaleResults/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ParticipantMaleResult participantMaleResult = db.ParticipantMaleResults.Find(id);
            if (participantMaleResult == null)
            {
                return HttpNotFound();
            }
            return View(participantMaleResult);
        }

        // POST: ParticipantMaleResults/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            ParticipantMaleResult participantMaleResult = db.ParticipantMaleResults.Find(id);
            db.ParticipantMaleResults.Remove(participantMaleResult);
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
