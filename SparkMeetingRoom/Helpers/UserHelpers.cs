﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;

namespace Visma_Room2Meet.Helpers
{
    public static class User
    {

        public static AspNetUser GetUser(string UserName)
        {
            SparkMeetingRoomEntities db = new SparkMeetingRoomEntities();
            var user = db.AspNetUsers.Where(u => u.UserName == UserName).FirstOrDefault();
            if (user != null)
            {
                return user;
            }
            return null;
        }

        public static string GetUserRole(string UserName)
        {
            SparkMeetingRoomEntities db = new SparkMeetingRoomEntities();
            var user = db.AspNetUsers.Where(u => u.UserName == UserName).FirstOrDefault();
            if (user != null && user.AspNetRoles.Count > 0)
            {
                return user.AspNetRoles.FirstOrDefault().Name;
            }
            return null;
        }

        public static string GetUserRoleId(string UserName)
        {
            SparkMeetingRoomEntities db = new SparkMeetingRoomEntities();
            var user = db.AspNetUsers.Where(u => u.UserName == UserName).FirstOrDefault();
            if (user != null && user.AspNetRoles.Count > 0)
            {
                return user.AspNetRoles.FirstOrDefault().Id;
            }
            return null;
        }

        public static int? GetUserRoleOrder(string UserName)
        {
            SparkMeetingRoomEntities db = new SparkMeetingRoomEntities();
            var user = db.AspNetUsers.Where(u => u.UserName == UserName).FirstOrDefault();
            if (user != null && user.AspNetRoles.Count > 0)
            {
                return user.AspNetRoles.FirstOrDefault().Order;
            }
            return null;
        }
    }
}