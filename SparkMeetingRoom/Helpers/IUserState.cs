using SparkMeetingRoom.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SparkMeetingRoom.Helpers
{
    public interface IUserState
    {
        AppUserState GetUserState();
    }
}