
create table Motorista(
codigo INT not null,
nome CHAR(30) not null, 
nro_carteira CHAR(30) not null,
hora_entrada TIME,
hora_saida TIME,
primary key(codigo)
)


create table cliente(
codigo INT not null,
rg CHAR(20),
nome CHAR(30),
endereco CHAR(50),
primary key(codigo)
)


create table veiculo(
placa CHAR(10) not null,
marca CHAR(40),
cor CHAR(20),
primary key(placa)

)

create table ocorrencia(
codigo INT,
end_busca CHAR(50) not null,
end_entrega CHAR(50),
data_ DATE,
distancia FLOAT,
preço MONEY(8),
pago MONEY(8),
codg_motorista INT not null,
codg_cliente INT not null,
placa CHAR(10),
PRIMARY key (codigo),
FOREIGN key (codg_motorista) REFERENCES Motorista,
FOREIGN key (codg_cliente) REFERENCES cliente,
FOREIGN key (placa) REFERENCES veiculo,

)


CREATE index ix_cod_motoris
on ocorrencia(codg_motorista)

CREATE index ix_cod_client
on ocorrencia (codg_cliente)

CREATE index ix_placa
on ocorrencia (placa)



INSERT INTO Motorista
values(1 ,"Ale" , 16516145 ,'19:00:00.000 22:00:00.000')

INSERT INTO Cliente
values(1, "578485458","Lucas", "Rua dos bobos")

INSERT INTO VEICULO
VALUES("GTF8452","BMW","Vermelho")


INSERT INTO OCORRENCIA
VALUES (1, "FASDFASDF", "SADFASDFA", '2022-08-31', 25.8, 85.7, "S", 1, 1,
"GTF8452")

UPDATE ocorrencia
set pago = "S"
where codigo = 10

UPDATE Motorista
set hora






