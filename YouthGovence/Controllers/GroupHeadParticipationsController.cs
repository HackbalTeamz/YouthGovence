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
    public class GroupHeadParticipationsController : Controller
    {
        private Entities db = new Entities();

        // GET: GroupHeadParticipations
        public ActionResult Index()
        {
            long UserID = Convert.ToInt64(GlobalVariables.GlobelUserId);
            var groupHeadParticipations = db.GroupHeadParticipations.Include(g => g.GrpEvent).Include(g => g.Student).Where(x => x.TeamHeadID == UserID);
            return View(groupHeadParticipations.ToList());
        }

        // GET: GroupHeadParticipations/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GroupHeadParticipation groupHeadParticipation = db.GroupHeadParticipations.Find(id);
            if (groupHeadParticipation == null)
            {
                return HttpNotFound();
            }
            return View(groupHeadParticipation);
        }

        // GET: GroupHeadParticipations/Create
        public ActionResult Create()
        {
            if (Session["Role"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            ViewBag.GrpEvtID = new SelectList(db.GrpEvents, "GrpEvtID", "Name");
            ViewBag.TeamHeadID = new SelectList(db.Students, "StudID", "RegID");
            return View();
        }

        // POST: GroupHeadParticipations/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(GroupHeadParticipation groupHeadParticipation)
        {
            if (ModelState.IsValid)
            {
                groupHeadParticipation.TeamHeadID = Convert.ToInt64(GlobalVariables.GlobelUserId);
                groupHeadParticipation.EnteredOn = DateTime.UtcNow;
                groupHeadParticipation.UpdatedOn = DateTime.UtcNow;
                db.GroupHeadParticipations.Add(groupHeadParticipation);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.GrpEvtID = new SelectList(db.GrpEvents, "GrpEvtID", "Name", groupHeadParticipation.GrpEvtID);
            ViewBag.TeamHeadID = new SelectList(db.Students, "StudID", "RegID", groupHeadParticipation.TeamHeadID);
            return View(groupHeadParticipation);
        }

        // GET: GroupHeadParticipations/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GroupHeadParticipation groupHeadParticipation = db.GroupHeadParticipations.Find(id);
            if (groupHeadParticipation == null)
            {
                return HttpNotFound();
            }
            ViewBag.GrpEvtID = new SelectList(db.GrpEvents, "GrpEvtID", "Name", groupHeadParticipation.GrpEvtID);
            ViewBag.TeamHeadID = new SelectList(db.Students, "StudID", "RegID", groupHeadParticipation.TeamHeadID);
            return View(groupHeadParticipation);
        }

        // POST: GroupHeadParticipations/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(GroupHeadParticipation groupHeadParticipation)
        {
            if (ModelState.IsValid)
            {
                groupHeadParticipation.TeamHeadID = Convert.ToInt64(GlobalVariables.GlobelUserId);
                groupHeadParticipation.UpdatedOn = DateTime.UtcNow;
                db.Entry(groupHeadParticipation).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.GrpEvtID = new SelectList(db.GrpEvents, "GrpEvtID", "Name", groupHeadParticipation.GrpEvtID);
            ViewBag.TeamHeadID = new SelectList(db.Students, "StudID", "RegID", groupHeadParticipation.TeamHeadID);
            return View(groupHeadParticipation);
        }

        // GET: GroupHeadParticipations/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GroupHeadParticipation groupHeadParticipation = db.GroupHeadParticipations.Find(id);
            if (groupHeadParticipation == null)
            {
                return HttpNotFound();
            }
            return View(groupHeadParticipation);
        }

        // POST: GroupHeadParticipations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            GroupHeadParticipation groupHeadParticipation = db.GroupHeadParticipations.Find(id);
            db.GroupHeadParticipations.Remove(groupHeadParticipation);
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
