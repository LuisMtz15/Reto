﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace conexion_final.Controllers
{
    public class AltasController : Controller
    {
        // GET: /<controller>/
        public IActionResult Altas_alumnos()
        {
            return View();
        }
        public IActionResult Altas_profesores()
        {
            return View();
        }
        public IActionResult Altas_gr()
        {
            return View();
        }
    }
}

