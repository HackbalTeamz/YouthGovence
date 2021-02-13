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
    public class ParticipantFeMaleResultsController : Controller
    {
        private Entities db = new Entities();

        // GET: ParticipantFeMaleResults
        public ActionResult Index()
        {
            return View(db.ParticipantFeMaleResults.ToList());
        }

        // GET: ParticipantFeMaleResults/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ParticipantFeMaleResult participantFeMaleResult = db.ParticipantFeMaleResults.Find(id);
            if (participantFeMaleResult == null)
            {
                return HttpNotFound();
            }
            return View(participantFeMaleResult);
        }

        // GET: ParticipantFeMaleResults/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ParticipantFeMaleResults/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PartFeMaleResultID,StudName,CollegeName,StudPoint,EnteredOn,UpdatedOn")] ParticipantFeMaleResult participantFeMaleResult)
        {
            if (ModelState.IsValid)
            {
                db.ParticipantFeMaleResults.Add(participantFeMaleResult);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(participantFeMaleResult);
        }

        // GET: ParticipantFeMaleResults/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ParticipantFeMaleResult participantFeMaleResult = db.ParticipantFeMaleResults.Find(id);
            if (participantFeMaleResult == null)
            {
                return HttpNotFound();
            }
            return View(participantFeMaleResult);
        }

        // POST: ParticipantFeMaleResults/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PartFeMaleResultID,StudName,CollegeName,StudPoint,EnteredOn,UpdatedOn")] ParticipantFeMaleResult participantFeMaleResult)
        {
            if (ModelState.IsValid)
            {
                db.Entry(participantFeMaleResult).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(participantFeMaleResult);
        }

        // GET: ParticipantFeMaleResults/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ParticipantFeMaleResult participantFeMaleResult = db.ParticipantFeMaleResults.Find(id);
            if (participantFeMaleResult == null)
            {
                return HttpNotFound();
            }
            return View(participantFeMaleResult);
        }

        // POST: ParticipantFeMaleResults/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            ParticipantFeMaleResult participantFeMaleResult = db.ParticipantFeMaleResults.Find(id);
            db.ParticipantFeMaleResults.Remove(participantFeMaleResult);
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
