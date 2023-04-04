namespace ColoradoWebApp.Models;

public class ContatoViewModel
{

    public Guid id { get; set;}
    public string nome { get; set; }
    public string endereco { get; set; }
    public string cidade { get; set; }
    public string uf { get; set; }
    public DateTime datacadastro { get; set; }

}