using ColoradoWebApp.Helpers;
using ColoradoWebApp.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Diagnostics;

namespace ColoradoWebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private IConfiguration _configuration;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="logger"></param>
        /// <param name="configuration"></param>
        public HomeController(ILogger<HomeController> logger, IConfiguration configuration)
        {
            _logger = logger;
            _configuration = configuration;
        }


     
        public async Task<IActionResult> Index()
        {
            var basePath = _configuration["ExternalServicePath:basePath"];
            var retorno = await ApiCall.GetAsync(basePath + "/lista-contatos");

            if (retorno == null)
            {
               return Ok();
            }
            return View(retorno);
        }

        public IActionResult Create()
        {
            return View("Cadastro");
        }

        public async Task<IActionResult> Inserir(ContatoViewModel dados)
        {
            var basePath = _configuration["ExternalServicePath:basePath"];
            ApiCall.PostAsync(basePath + "/novo-contato", dados).Wait();
            return RedirectToAction("Index", "Home");
        }

        public async Task<IActionResult> Edit(ContatoViewModel dados)
        {
            var basePath = _configuration["ExternalServicePath:basePath"];
            var retorno = await ApiCall.GetAsyncById(basePath, dados);
            return View("Alterar",retorno);

        }

        public async Task <IActionResult> Delete(ContatoViewModel dados)
        {
            var basePath = _configuration["ExternalServicePath:basePath"];
            await ApiCall.DeleteAsync(basePath, dados);
            return RedirectToAction("Index", "Home");
        }

        public async Task<IActionResult> Alterar(ContatoViewModel dados)
        {
            var basePath = _configuration["ExternalServicePath:basePath"];
            await ApiCall.PutAsync(basePath, dados);
            return RedirectToAction("Index", "Home");

        }

    }
}