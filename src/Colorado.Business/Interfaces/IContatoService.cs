using Colorado.Business.Models;

namespace Colorado.Business.Intefaces;

public interface IContatoService: IDisposable
{
    Task<Contato> ObterContato(Guid id);
    Task Adicionar(Contato contato);
    Task Atualizar(Contato contato);
    Task Remover(Guid id);
}