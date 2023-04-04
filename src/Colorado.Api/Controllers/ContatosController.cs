using AutoMapper;
using Colorado.Api.Helpers;
using Colorado.Api.ViewModels;
using Colorado.Business.Intefaces;
using Colorado.Business.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Colorado.Api.Controllers
{

    [Route("api/[controller]")]
    [ApiController]
    public class ContatosController : MainController
    {
        private readonly IContatoRepository _contatoRepository;
        private readonly IContatoService _contatoService;
        private readonly IMapper _mapper;

        public ContatosController(INotificador notificador,
                                  IContatoRepository contatoRepository,
                                  IContatoService contatoService,
                                  IMapper mapper) : base(notificador)
        {
            _contatoRepository = contatoRepository;
            _contatoService = contatoService;
            _mapper = mapper;
                
        }
        [AllowAnonymous]
        [HttpGet("lista-contatos")]
        public async Task<IEnumerable<ContatoViewModel>> ObterTodos()
        {
            return _mapper.Map<IEnumerable<ContatoViewModel>>(await _contatoRepository.ObterContatos());
        }

       
        [HttpGet("contato-por-id/{id:guid}")]
        public async Task<ActionResult<ContatoViewModel>> ObterPorId(Guid id)
        {
            var contatoViewModel = await ObterContato(id);

            if (contatoViewModel == null) return NotFound();

            return contatoViewModel;
        }


        /// <summary>
        /// novo-contato - Testado: OK
        /// </summary>
        /// <param name="contatoViewModel"></param>
        /// <returns></returns>

        //[Route("novo-contato")]
        [HttpPost("novo-contato")]
        public async Task<ActionResult<ContatoViewModel>> Adicionar( [FromBody] ContatoViewModel contatoViewModel)
        {
            if (!ModelState.IsValid) return CustomResponse(ModelState);

            contatoViewModel.Id = Util.GeraGuid();
            await _contatoService.Adicionar(_mapper.Map<Contato>(contatoViewModel));

            return CustomResponse(contatoViewModel);
        }


        /// <summary>
        /// atualizar-contato | Testado: Ok
        /// </summary>
        /// <param name="id"></param>
        /// <param name="contatoViewModel"></param>
        /// <returns></returns>

        //[HttpPut("atualizar-contato/{id:guid}")]
        //public async Task<IActionResult> Atualizar(ContatoViewModel contatoViewModel)
        //{
        //    //if (id != contatoViewModel.Id)
        //    //{
        //    //    NotificarErro("Os ids informados não são iguais!");
        //    //    return CustomResponse();
        //    //}

        //    var contatoAtualizacao = await ObterPorId(contatoViewModel.Id);

        //    if (!ModelState.IsValid) return CustomResponse(ModelState);

        //    await _contatoService.Atualizar(_mapper.Map<Contato>(contatoViewModel));

        //    return CustomResponse(contatoViewModel);
        //}


        [HttpPut("atualizar-contato")]
        public async Task<IActionResult> Atualizar(ContatoViewModel contatoViewModel)
        {
            //if (id != contatoViewModel.Id)
            //{
            //    NotificarErro("Os ids informados não são iguais!");
            //    return CustomResponse();
            //}

            var contatoAtualizacao = await ObterPorId(contatoViewModel.Id);

            if (!ModelState.IsValid) return CustomResponse(ModelState);

            await _contatoService.Atualizar(_mapper.Map<Contato>(contatoViewModel));

            return CustomResponse(contatoViewModel);
        }

        [Route("excluir-contato/{id:guid}")]
        [HttpDelete]
        public async Task<IActionResult> DeleteConfirmed(Guid id)
        {
            var contatoContato = await ObterContato(id);

            if (contatoContato == null)
            {
                return NotFound();
            }

            await _contatoService.Remover(id);

            if (!OperacaoValida()) return CustomResponse("Ops!Algo deu errado");

            return CustomResponse("Contato excluido com sucesso!");
        }





        private async Task<ContatoViewModel> ObterContato(Guid id)
        {
            return _mapper.Map<ContatoViewModel>(await _contatoRepository.ObterContatoPorId(id));
        }
    }
}
