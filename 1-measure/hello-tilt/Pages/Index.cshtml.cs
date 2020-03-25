using System;
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
        private const int startTimeSecs = 1585155063;
        private const int startTimeNanos = 224721765;

        public IndexModel(ILogger<IndexModel> logger)
        {
            _logger = logger;
        }

        public void OnGet()
        {

        }

        public long GetStartTimeSecs()
        {
            return IndexModel.startTimeSecs;
        }

        public string GetUpdateDuration()
        {
            var startTime = new TimeSpan(0, 0, 0, IndexModel.startTimeSecs, IndexModel.startTimeNanos);
            DateTime end = DateTime.Now;
            var diff = end.Subtract(startTime);

            var dur = new DateTimeOffset(diff).ToUnixTimeMilliseconds() / 1000;

            return String.Format("Deploy time: {0}s", dur.ToString());
        }
    }
}
