using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Pratica.Startup))]
namespace Pratica
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
