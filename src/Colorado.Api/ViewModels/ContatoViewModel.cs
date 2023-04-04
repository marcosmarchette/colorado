using System.ComponentModel.DataAnnotations;

namespace Colorado.Api.ViewModels;

public class ContatoViewModel
{
    [Key]
    public Guid Id { get; set; }

    [Required(ErrorMessage = "O campo {0} é obrigatório")]
    [StringLength(200, ErrorMessage = "O campo {0} precisa ter entre {2} e {1} caracteres", MinimumLength = 2)]
    public string Nome { get; set; }

    [Required(ErrorMessage = "O campo {0} é obrigatório")]
    [StringLength(250, ErrorMessage = "O campo {0} precisa ter entre {2} e {1} caracteres", MinimumLength = 2)]
    public string Endereco { get; set; }


    [Required(ErrorMessage = "O campo {0} é obrigatório")]
    [StringLength(250, ErrorMessage = "O campo {0} precisa ter entre {2} e {1} caracteres", MinimumLength = 3)]
    public string Cidade { get; set; }


    [Required(ErrorMessage = "O campo {0} é obrigatório")]
    [StringLength(2, ErrorMessage = "O campo {0} precisa ter entre {2} e {1} caracteres", MinimumLength = 2)]
    public string Uf { get; set; }


    public DateTime? DataCadastro { get; set; }




}