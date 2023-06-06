using System;
using System.Threading.Tasks;
using Statiq.App;
using Statiq.Web;

namespace dotnetoxford_website
{
    class Program
    {
        public static async Task<int> Main(string[] args) =>
            await Bootstrapper
                .Factory
                .CreateDefault(args)
                .AddThemeFromUri(new Uri("https://github.com/devlead/CleanBlog/archive/5eb1381346e550db6e1fbd4e268889dbc1dfcee.zip"))
                .AddWeb()
                .RunAsync();
    }
}