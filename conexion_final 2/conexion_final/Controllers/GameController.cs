﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace conexion_final.Controllers
{
    public class GameController : Controller
    {
        public IActionResult Juego_a()
        {
            return View();
        }
    }

}


