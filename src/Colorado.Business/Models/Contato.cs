namespace Colorado.Business.Models;

public class Contato  : Entity
{
    public string Nome { get; set; }
    public string Endereco { get; set; }
    public string Cidade { get; set; }
    public string Uf { get; set; }
    public DateTime DataCadastro { get; set; }
}