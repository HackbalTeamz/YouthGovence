//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace YouthGovence.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Credential
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Credential()
        {
            this.Students = new HashSet<Student>();
            this.Volunteers = new HashSet<Volunteer>();
        }
    
        public long CredID { get; set; }
        public string Email { get; set; }
        public Nullable<bool> IsEmailVerify { get; set; }
        public string EmailVerificationCode { get; set; }
        public string Password { get; set; }
        public string PasswordResetCode { get; set; }
        public string LastLoginIP { get; set; }
        public Nullable<System.DateTime> LastLoginOn { get; set; }
        public Nullable<System.DateTime> EnteredOn { get; set; }
        public Nullable<System.DateTime> UpdatedOn { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Student> Students { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Volunteer> Volunteers { get; set; }
    }
}
