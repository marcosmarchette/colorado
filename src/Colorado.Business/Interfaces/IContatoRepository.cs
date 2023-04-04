using Colorado.Business.Models;

namespace Colorado.Business.Intefaces;

public interface IContatoRepository : IRepository<Contato>
{
    Task<IEnumerable<Contato>> ObterContatoId(Guid contatoId);
    Task<IEnumerable<Contato>> ObterContatos();
    Task<Contato> ObterContatoPorId(Guid id);
}