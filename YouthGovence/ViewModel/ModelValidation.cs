using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace YouthGovence.Models
{
    [MetadataType(typeof(CollegeValidation))]
    public partial class College
    {
    }

    public class CollegeValidation
    {
        [Display(Name = "College Name")]
        [Required(ErrorMessage = "Please Enter Item Name")]
        public string Name { get; set; }
    }

    [MetadataType(typeof(SingleParticipationValidation))]
    public partial class SingleParticipation
    {
    }

    public class SingleParticipationValidation
    {
        [Display(Name = "Single Event")]
        [Required(ErrorMessage = "Please Enter Single Event Name")]
        public Nullable<long> SinEvtID { get; set; }
    }

    [MetadataType(typeof(GroupHeadParticipationValidation))]
    public partial class GroupHeadParticipation
    {
    }

    public class GroupHeadParticipationValidation
    {
        [Display(Name = "Group Event")]
        [Required(ErrorMessage = "Please Enter Group Event Name")]
        public Nullable<long> GrpEvtID { get; set; }
    }

    [MetadataType(typeof(GroupMemParticiapationValidation))]
    public partial class GroupMemParticiapation
    {
    }

    public class GroupMemParticiapationValidation
    {
        [Display(Name = "Group Event")]
        [Required(ErrorMessage = "Please Enter Group Event Name")]
        public Nullable<long> GrpPartID { get; set; }
    }

    [MetadataType(typeof(PrgSheduleValidation))]
    public partial class PrgShedule
    {
    }

    public class PrgSheduleValidation
    {
        [Display(Name = "Event Name")]
        [Required(ErrorMessage = "Please Enter  Event Name")]
        public string EventName { get; set; }
        [DataType(DataType.Date)]
        public Nullable<System.DateTime> SheduleDate { get; set; }

    }
}