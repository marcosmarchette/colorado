using Colorado.Business.Intefaces;
using Colorado.Business.Models;
using Colorado.Business.Models.Validations;

namespace Colorado.Business.Services;

public class ContatoService : BaseService, IContatoService
{
    private readonly IContatoRepository _contatoRepository;
    public ContatoService(IContatoRepository contatoRepository,INotificador notificador):base(notificador)
    {
        _contatoRepository = contatoRepository;

    }

    public async Task Adicionar(Contato contato)
    {
        if (!ExecutarValidacao(new ContatoValidation(), contato)) return ;

        await _contatoRepository.Adicionar(contato);
    }

    public async Task Atualizar(Contato contato)
    {
        if (!ExecutarValidacao(new ContatoValidation(), contato)) return;

        await _contatoRepository.Atualizar(contato);
    }

    public void Dispose()
    {
        _contatoRepository?.Dispose();
        
    }

    public Task<Contato> ObterContato(Guid id)
    {
        throw new NotImplementedException();
    }

    public async Task Remover(Guid id)
    {
        await _contatoRepository.Remover(id);
    }
}
