using Microsoft.Owin;
using Owin;
using System.Data.Entity;

[assembly: OwinStartupAttribute(typeof(SparkMeetingRoom.Startup))]
namespace SparkMeetingRoom
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            Database.SetInitializer<SparkMeetingRoomEntities>(null);
            ConfigureAuth(app);
        }
    }
}
