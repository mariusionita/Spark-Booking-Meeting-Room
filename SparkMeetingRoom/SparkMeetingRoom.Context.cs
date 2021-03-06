﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SparkMeetingRoomEntities : DbContext
    {
        public SparkMeetingRoomEntities()
            : base("name=SparkMeetingRoomEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AspNetRole> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaim> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogin> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUser> AspNetUsers { get; set; }
        public virtual DbSet<Asset> Assets { get; set; }
        public virtual DbSet<BookingHistory> BookingHistories { get; set; }
        public virtual DbSet<Booking> Bookings { get; set; }
        public virtual DbSet<BookingStatus> BookingStatuses { get; set; }
        public virtual DbSet<Building> Buildings { get; set; }
        public virtual DbSet<Log> Logs { get; set; }
        public virtual DbSet<LogType> LogTypes { get; set; }
        public virtual DbSet<RoomAsset> RoomAssets { get; set; }
        public virtual DbSet<RoomRole> RoomRoles { get; set; }
        public virtual DbSet<Room> Rooms { get; set; }
        public virtual DbSet<SparkMeetingUser> SparkMeetingUsers { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
    }
}
