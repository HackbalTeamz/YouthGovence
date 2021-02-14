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
    public class GroupMemParticiapationsController : Controller
    {
        private Entities db = new Entities();

        // GET: GroupMemParticiapations
        public ActionResult Index()
        {
            var groupMemParticiapations = db.GroupMemParticiapations.Include(g => g.GroupHeadParticipation).Include(g => g.Student);
            return View(groupMemParticiapations.ToList());
        }

        // GET: GroupMemParticiapations/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GroupMemParticiapation groupMemParticiapation = db.GroupMemParticiapations.Find(id);
            if (groupMemParticiapation == null)
            {
                return HttpNotFound();
            }
            return View(groupMemParticiapation);
        }

        // GET: GroupMemParticiapations/Create
        public ActionResult Create()
        {
            if (Session["Role"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            ViewBag.GrpPartID = new SelectList(db.GroupHeadParticipations, "GrpPartID", "GrpPartID");
            ViewBag.TeamMemID = new SelectList(db.Students, "StudID", "RegID");
            return View();
        }

        // POST: GroupMemParticiapations/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(GroupMemParticiapation groupMemParticiapation)
        {
            if (ModelState.IsValid)
            {
                groupMemParticiapation.TeamMemID = Convert.ToInt64(GlobalVariables.GlobelUserId);
                db.GroupMemParticiapations.Add(groupMemParticiapation);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.GrpPartID = new SelectList(db.GroupHeadParticipations, "GrpPartID", "GrpPartID", groupMemParticiapation.GrpPartID);
            ViewBag.TeamMemID = new SelectList(db.Students, "StudID", "RegID", groupMemParticiapation.TeamMemID);
            return View(groupMemParticiapation);
        }

        // GET: GroupMemParticiapations/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GroupMemParticiapation groupMemParticiapation = db.GroupMemParticiapations.Find(id);
            if (groupMemParticiapation == null)
            {
                return HttpNotFound();
            }
            ViewBag.GrpPartID = new SelectList(db.GroupHeadParticipations, "GrpPartID", "GrpPartID", groupMemParticiapation.GrpPartID);
            ViewBag.TeamMemID = new SelectList(db.Students, "StudID", "RegID", groupMemParticiapation.TeamMemID);
            return View(groupMemParticiapation);
        }

        // POST: GroupMemParticiapations/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(GroupMemParticiapation groupMemParticiapation)
        {
            if (ModelState.IsValid)
            {
                groupMemParticiapation.TeamMemID = Convert.ToInt64(GlobalVariables.GlobelUserId);
                db.Entry(groupMemParticiapation).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.GrpPartID = new SelectList(db.GroupHeadParticipations, "GrpPartID", "GrpPartID", groupMemParticiapation.GrpPartID);
            ViewBag.TeamMemID = new SelectList(db.Students, "StudID", "RegID", groupMemParticiapation.TeamMemID);
            return View(groupMemParticiapation);
        }

        // GET: GroupMemParticiapations/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GroupMemParticiapation groupMemParticiapation = db.GroupMemParticiapations.Find(id);
            if (groupMemParticiapation == null)
            {
                return HttpNotFound();
            }
            return View(groupMemParticiapation);
        }

        // POST: GroupMemParticiapations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            GroupMemParticiapation groupMemParticiapation = db.GroupMemParticiapations.Find(id);
            db.GroupMemParticiapations.Remove(groupMemParticiapation);
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
