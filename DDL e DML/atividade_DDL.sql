
create table Pessoa(
    codigo INT not null,
    nome CHAR(30) not null,
    endereco CHAR(30) not null,
    telefone CHAR(30) not null,
    primary key (codigo)
);

create table Cliente(
    codigo INT not null,
    rg CHAR(9) not null UNIQUE,
    dtnasc date not null,
    foreign key(codigo) REFERENCES Pessoa
);

create index id_cod_cliente
on cliente(codigo)

create table atendente (
    codigo INT not null,
    salario money(8) not null,
    comissao money(8) not null,
    foreign key (codigo) REFERENCES Pessoa
);

create index codig_atendente
on atendente(codigo)


create table livro(
    codigo INT not null,
    titulo char(30) not null,
    autor char (30) not null,
    preco money(8) not null,
    qtd_estoque INT not null,
    PRIMARY key(codigo)
)

create index codig_livro
on livro(codigo)

