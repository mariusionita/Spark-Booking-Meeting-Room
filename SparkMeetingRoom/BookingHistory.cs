//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SparkMeetingRoom
{
    using System;
    using System.Collections.Generic;
    
    public partial class BookingHistory
    {
        public int BookingHistoryID { get; set; }
        public string AspNetUserID { get; set; }
        public int BookingID { get; set; }
        public System.DateTime ChangeDate { get; set; }
        public string ChangeText { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        public virtual Booking Booking { get; set; }
    }
}
