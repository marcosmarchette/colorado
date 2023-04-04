using Colorado.Business.Intefaces;
using Colorado.Business.Models;
using Colorado.Data.Context;
using Microsoft.EntityFrameworkCore;

namespace Colorado.Data.Repository;

public class ContatoRepository : Repository<Contato>, IContatoRepository
{

    public ContatoRepository(ColoradoDbContext context): base(context)
    {
        
    }
    public async Task<IEnumerable<Contato>> ObterContatos()
    {
        return await Db.Contatos.AsNoTracking().ToListAsync();
    }

    public async Task<IEnumerable<Contato>> ObterContatoId(Guid contatoId)
    {
        return await Buscar(p => p.Id == contatoId);
    }

    public async Task<Contato> ObterContatoPorId(Guid id)
    {
        return await Db.Contatos.AsNoTracking().FirstOrDefaultAsync(item => item.Id == id);
    }
}