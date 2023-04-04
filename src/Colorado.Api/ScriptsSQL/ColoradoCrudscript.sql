ALTER DATABASE ColoradoCrud SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ColoradoCrud].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ColoradoCrud] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ColoradoCrud] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ColoradoCrud] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ColoradoCrud] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ColoradoCrud] SET ARITHABORT OFF 
GO
ALTER DATABASE [ColoradoCrud] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ColoradoCrud] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ColoradoCrud] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ColoradoCrud] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ColoradoCrud] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ColoradoCrud] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ColoradoCrud] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ColoradoCrud] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ColoradoCrud] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ColoradoCrud] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ColoradoCrud] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ColoradoCrud] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ColoradoCrud] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ColoradoCrud] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ColoradoCrud] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ColoradoCrud] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ColoradoCrud] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ColoradoCrud] SET RECOVERY FULL 
GO
ALTER DATABASE [ColoradoCrud] SET  MULTI_USER 
GO
ALTER DATABASE [ColoradoCrud] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ColoradoCrud] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ColoradoCrud] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ColoradoCrud] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ColoradoCrud] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ColoradoCrud] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ColoradoCrud', N'ON'
GO
ALTER DATABASE [ColoradoCrud] SET QUERY_STORE = OFF
GO
USE [ColoradoCrud]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 04/04/2023 09:34:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 04/04/2023 09:34:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 04/04/2023 09:34:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 04/04/2023 09:34:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 04/04/2023 09:34:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 04/04/2023 09:34:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 04/04/2023 09:34:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 04/04/2023 09:34:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contato]    Script Date: 04/04/2023 09:34:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contato](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[Endereco] [varchar](200) NOT NULL,
	[Cidade] [varchar](100) NOT NULL,
	[Uf] [varchar](2) NOT NULL,
	[DataCadastro] [datetime] NULL,
 CONSTRAINT [PK_Contato] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1, N'd4954a8f-4a91-4c36-83f1-87cddb965876', N'Produto', N'Adicionar,Atualizar,Excluir')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2, N'd4954a8f-4a91-4c36-83f1-87cddb965876', N'Fornecedor', N'Adicionar,Atualizar,Excluir')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'24ca00c0-975b-46d8-967d-b4ee8add5a44', N'teste@teste.com', N'TESTE@TESTE.COM', N'teste@teste.com', N'TESTE@TESTE.COM', 1, N'AQAAAAEAACcQAAAAECCc/K3d8MAmvzEJoqw2dphg9gNColBA80Zh5vkPEbTGeUGvUIyn+MDtGaEucqNKDg==', N'LEUNYD4L2KWCN4RQGWRVDBKZIFO2B7KV', N'd511830c-6351-432e-beb9-bd36d7fe5444', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd4954a8f-4a91-4c36-83f1-87cddb965876', N'marcospmarchetti@gmail.com', N'MARCOSPMARCHETTI@GMAIL.COM', N'marcospmarchetti@gmail.com', N'MARCOSPMARCHETTI@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJP2uf+fzRmRc2fzRlkkz1HeNK8bClP75W4XdspYaEDt02dF8JFOptBkCjQoEZq3nQ==', N'2Z6HMMFPQZ2S4G55FHO5VXT4B7CKNKVD', N'bb00cd1a-b690-4a74-9309-bda55fbfdc8c', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[Contato] ([Id], [Nome], [Endereco], [Cidade], [Uf], [DataCadastro]) VALUES (N'3fa85f64-5717-4562-b3fc-2c963f66afa6', N'Marcos Marchette', N'Rua Teste, 236', N'Bahia', N'SP', CAST(N'2023-04-04T07:58:10.280' AS DateTime))
INSERT [dbo].[Contato] ([Id], [Nome], [Endereco], [Cidade], [Uf], [DataCadastro]) VALUES (N'a5135c5e-2e75-4c89-9517-8230a60921a1', N'Luis das Couves', N'Rua Teste,123', N'Pernambuco', N'PE', CAST(N'2023-04-04T07:58:28.837' AS DateTime))
INSERT [dbo].[Contato] ([Id], [Nome], [Endereco], [Cidade], [Uf], [DataCadastro]) VALUES (N'a4c11d38-cb68-45ed-9d71-8464e6014210', N'Pedro da Silva', N'Rua Teste, 50', N'Belo Horizonte', N'MG', CAST(N'2023-04-04T07:58:10.280' AS DateTime))
INSERT [dbo].[Contato] ([Id], [Nome], [Endereco], [Cidade], [Uf], [DataCadastro]) VALUES (N'c34879fd-ae5c-492b-8a90-85d9eb75db52', N'Claudio da Silva', N'Rua Teste, 50', N'Uberlandia', N'MG', CAST(N'2023-04-04T07:58:10.280' AS DateTime))
INSERT [dbo].[Contato] ([Id], [Nome], [Endereco], [Cidade], [Uf], [DataCadastro]) VALUES (N'2f7dfa12-9eec-4825-8fae-8e1e57ebdd80', N'Irene MArchette', N'Rua dos Camarés, 56', N'São Paulo', N'SP', CAST(N'2023-04-04T07:58:10.280' AS DateTime))

GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [ColoradoCrud] SET  READ_WRITE 
GO
