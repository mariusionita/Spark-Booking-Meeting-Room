using Microsoft.AspNet.Identity;
using SparkMeetingRoom.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SparkMeetingRoom.Helpers
{
    public class AppUserState
    {
        public string Name = string.Empty;
        public string Email = string.Empty;
        public string UserId = string.Empty;
        //TO DO Roles!

        public AppUserState()
        {

        }

        public AppUserState(IUserState userState)
        {
            this.CopyState(userState);
        }

        /// <summary>
        /// Exports a short string of the user's name
        /// </summary>
        /// <returns></returns>
        public override string ToString()
        {
            return this.Name;
        }

        /// <summary>
        /// Populates the AppUserState properties from a User instance
        /// </summary>
        /// <param name="user"></param>
        public void CopyState(IUserState userState)
        {
            CopyState(userState.GetUserState());
        }

        public void CopyState(AppUserState state)
        {
            this.Name = state.Name;
            this.Email = state.Email;
            this.UserId = state.UserId;
        }

        /// <summary>
        /// Determines if the user is logged in
        /// </summary>
        /// <returns></returns>
        public bool IsEmpty()
        {
            if (string.IsNullOrEmpty(this.UserId) || string.IsNullOrEmpty(this.Name))
                return true;

            return false;
        }
    }
}