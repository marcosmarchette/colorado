using Colorado.Business.Intefaces;
using Colorado.Business.Notificacoes;
using Colorado.Business.Services;
using Colorado.Data.Context;
using Colorado.Data.Repository;

namespace Colorado.Api.Configuration
{
    public static class DependencyInjectionConfig
    {
        public static IServiceCollection ResolveDependencies(this IServiceCollection services)
        {
            services.AddScoped<ColoradoDbContext>();
            services.AddScoped<IContatoRepository,ContatoRepository>();
            services.AddScoped<INotificador, Notificador>();
            services.AddScoped<IContatoService, ContatoService>();
            return services;
        }
    }
}