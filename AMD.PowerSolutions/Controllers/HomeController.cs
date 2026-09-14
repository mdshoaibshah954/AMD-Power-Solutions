using AMD.PowerSolutions.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace AMD.PowerSolutions.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Solar()
        {
            return View();
        }

        public IActionResult InverterBattery()
        {
            return View();
        }

        public IActionResult CCTV()
        {
            return View();
        }

        public IActionResult Installation()
        {
            return View();
        }
    }
}
