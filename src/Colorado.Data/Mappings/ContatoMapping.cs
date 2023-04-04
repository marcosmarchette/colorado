using Colorado.Business.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;


namespace Colorado.Data.Mappings;

public class ContatoMapping : IEntityTypeConfiguration<Contato>
{
    public void Configure(EntityTypeBuilder<Contato> builder)
    {
        builder.HasKey(p => p.Id);

        builder.Property(p => p.Nome)
            .IsRequired()
            .HasColumnType("varchar(200)");

        builder.Property(p => p.Endereco)
            .IsRequired()
            .HasColumnType("varchar(1000)");

        builder.Property(p => p.Cidade)
            .IsRequired()
            .HasColumnType("varchar(100)");

        builder.Property(p => p.Uf)
            .IsRequired()
            .HasColumnType("varchar(2)");

        builder.ToTable("Contato");
    }
}