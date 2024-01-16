﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;

namespace hello_tilt.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;
        private const long startTimeMillis = 1705380273571;
        private static DateTime end = DateTime.Now;

        public IndexModel(ILogger<IndexModel> logger)
        {
            _logger = logger;
        }

        public void OnGet()
        {

        }

        public string GetUpdateDuration()
        {
            var startTime = DateTimeOffset.FromUnixTimeMilliseconds(IndexModel.startTimeMillis);
            TimeSpan diff = end - startTime;

            var interval = diff.TotalMilliseconds;

            return String.Format("{0}ms", interval.ToString());
        }
    }
}
