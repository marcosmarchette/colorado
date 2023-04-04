using Microsoft.Extensions.FileProviders;

namespace ColoradoWebApp.Helpers;

public static class ConfigurationApiHelper
{
    public static IServiceCollection AddConfigurationManagerConfig(this IServiceCollection services, IConfiguration configuration, out ConfigurationManager configManager)
    {
        configManager = new ConfigurationManager
        {
            ExternalService = configuration.GetSection("ExternalService").GetChildren().ToDictionary(x => x.Key, x => x.Value)
        };


        services.AddSingleton(configManager);
        services.AddSingleton<IFileProvider>(new PhysicalFileProvider(
            Path.Combine(Directory.GetCurrentDirectory(), "wwwroot")));
        return services;
    }
}