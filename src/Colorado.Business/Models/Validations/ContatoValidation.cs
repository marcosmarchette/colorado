using FluentValidation;

namespace Colorado.Business.Models.Validations;

public class ContatoValidation : AbstractValidator<Contato>
{
    public ContatoValidation()
    {
        RuleFor(c => c.Nome)
            .NotEmpty().WithMessage("O campo {PropertyName} precisa ser fornecido")
            .Length(2, 200).WithMessage("O campo {PropertyName} precisa ter entre {MinLength} e {MaxLength} caracteres");

        RuleFor(c => c.Endereco)
            .NotEmpty().WithMessage("O campo {PropertyName} precisa ser fornecido")
            .Length(2, 200).WithMessage("O campo {PropertyName} precisa ter entre {MinLength} e {MaxLength} caracteres");

        RuleFor(c => c.Cidade)
            .NotEmpty().WithMessage("O campo {PropertyName} precisa ser fornecido")
            .Length(2,100).WithMessage("O campo {PropertyName} precisa ter {MinLength} e {MaxLength} caracteres");

        RuleFor(c => c.Uf)
            .NotEmpty().WithMessage("A campo {PropertyName} precisa ser fornecida")
            .Length(2, 2).WithMessage("O campo {PropertyName} precisa ter entre {MinLength} e {MaxLength} caracteres");

       
    }
}