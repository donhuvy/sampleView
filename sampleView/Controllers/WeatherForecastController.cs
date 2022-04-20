using Microsoft.AspNetCore.Mvc;
using sampleView.Data;
using sampleView.Models;

namespace sampleView.Controllers
{

    [ApiController]
    [Route("[controller]")]
    public class WeatherForecastController : ControllerBase
    {
        private static readonly string[] Summaries = new[]
        {
        "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
    };

        private readonly ILogger<WeatherForecastController> _logger;

        private readonly ApplicationDbContext applicationDbContext;

        public WeatherForecastController(ILogger<WeatherForecastController> logger, ApplicationDbContext db)
        {
            _logger = logger;
            applicationDbContext = db;
        }




        //[HttpGet(Name = "GetWeatherForecast")]
        //public IEnumerable<WeatherForecast> Get()
        //{
        //    return Enumerable.Range(1, 5).Select(index => new WeatherForecast
        //    {
        //        Date = DateTime.Now.AddDays(index),
        //        TemperatureC = Random.Shared.Next(-20, 55),
        //        Summary = Summaries[Random.Shared.Next(Summaries.Length)]
        //    })
        //    .ToArray();
        //}

        [HttpGet(Name = "employee")]
        public IEnumerable<ViewEmployee> GetEmployeeView()
        {
            // return applicationDbContext.Employees.ToList();
            return applicationDbContext.ViewEmployees.ToList<ViewEmployee>()
            .ToArray();
        }

    }


}