# Produção
No ambiente de produção o banco de dados utilizado é o Postgresql por ser o padrão utilizado pelo Heroku onde foi feito o deploy.

# Desenvolvimento
No ambiente de Desenvolvimento o banco de dados utilizado é o Sqlite3 por este ser o utilizado por padrão no Rails 6.0.0

# Estrutura
O banco de dados possui 3 tabelas: **Clientes**, **Dogs** e **Passeadores**

### Clientes
email: string, unique index
nome: string
sobrenome: string
tel: string
endereco: string
created_at: datetime
updated_at: datetime

### Dogs
cliente_id: integer, index, associado a um unique index de um Cliente
nome: string
raca: string
genero: string
idade: integer
porte: string
castrado: boolean
raiva: boolean
vacinas: boolean

### Passeadores
email: string
nome: string
sobrenome: string
tel: string
bairro: string
preco: integer
created_at: datetime
updated_at: datetime
