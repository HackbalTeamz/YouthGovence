using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace YouthGovence
{
    public class RegistrationModel
    {
        [Required(ErrorMessage = "Please Enter Email")]
        [EmailAddress]
        public string Email { get; set; }
        [Required(ErrorMessage = "Please Enter Password")]
        [DataType(DataType.Password)]
        public string Password { get; set; }
        [Required(ErrorMessage = "Please Enter First Name")]
        public string FName { get; set; }
        [Required(ErrorMessage = "Please Enter Second Name")]
        public string SName { get; set; }
        [Required(ErrorMessage = "Please Select Gender")]
        public string Sex { get; set; }
        [Required(ErrorMessage = "Please Enter College Admistion Number")]
        public string ClgAdmistnNo { get; set; }
        [Required(ErrorMessage = "Please Enter Date of Birth")]
        public Nullable<System.DateTime> DateOfBirth { get; set; }
        public string ProPic { get; set; }
        [Required(ErrorMessage = "Please Select College")]
        public Nullable<long> ColID { get; set; }
        [Required(ErrorMessage = "Please Select Department")]
        public Nullable<long> DeptID { get; set; }
        [Required(ErrorMessage = "Please Select Course")]
        public Nullable<long> CouID { get; set; }
        [Required(ErrorMessage = "Please Enter Phone")]
        public string Phone { get; set; }
        public string Place { get; set; }
        public Nullable<long> RoleID { get; set; }
    }
    
}