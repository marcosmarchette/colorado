namespace ColoradoWebApp.Helpers;

public class ConfigurationManager
{
    public Dictionary<string, string> AppSetting { get; set; }
    public Dictionary<string, string> ExternalService { get; set; }
    public Dictionary<string, string> EnvironmentVariables { get; set; }
    public ConfigurationManager()
    {
        AppSetting = new Dictionary<string, string>();
        ExternalService = new Dictionary<string, string>();
        EnvironmentVariables = new Dictionary<string, string>();
    }
}