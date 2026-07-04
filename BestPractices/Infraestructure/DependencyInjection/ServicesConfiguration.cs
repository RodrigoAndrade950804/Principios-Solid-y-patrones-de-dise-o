using Best_Practices.Controllers;
using Best_Practices.Repositories;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Best_Practices.Infraestructure.DependencyInjection
{
    public class ServicesConfiguration
    {
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddSingleton<IVehicleRepository, MyVehiclesRepository>();
        }
    }
}
