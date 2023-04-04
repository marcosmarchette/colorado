using AutoMapper;
using AutoMapper.Internal.Mappers;
using Colorado.Api.ViewModels;
using Colorado.Business.Models;

namespace Colorado.Api.Configuration
{
    public class AutomapperConfig : Profile
    {
        public AutomapperConfig()
        {


            
            CreateMap<ContatoViewModel, Contato>().ReverseMap();

            CreateMap<ContatoViewModel, Contato>()
                .ForMember(cw=>cw.Id, c=>c.MapFrom( m=>m.Id))
                .ForMember(cw => cw.Nome, c => c.MapFrom(m => m.Nome))
                    .ForMember(cw => cw.Endereco, c => c.MapFrom(m => m.Endereco))
                        .ForMember(cw => cw.Cidade, c => c.MapFrom(m => m.Cidade))
                            .ForMember(cw => cw.Uf, c => c.MapFrom(m => m.Uf)).ReverseMap();





                

            CreateMap<Contato, ContatoViewModel>().ReverseMap();
        }
    }
}