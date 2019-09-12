# Produção
No ambiente de produção o banco de dados utilizado é o Postgresql por ser o padrão utilizado pelo Heroku onde foi feito o deploy.

# Desenvolvimento
No ambiente de Desenvolvimento o banco de dados utilizado é o Sqlite3 por este ser o utilizado por padrão no Rails 6.0.0

# Estrutura
O banco de dados possui 3 tabelas: **Clientes**, **Dogs** e **Passeadores**

### Clientes
Tabela modificada pelo ClientesController e seus views associados.

Coluna | Tipo
-------|------
email | string, unique index
nome | string
sobrenome | string
tel | string
endereco | string
created_at | datetime
updated_at | datetime

### Dogs
Tabela modificada pelo DogsController e seus views associados.

Coluna | Tipo
-------|------
cliente_id | integer, index, associado (foreign key) a um unique index de um Cliente
nome | string
raca | string
genero | string
idade | integer
porte | string
castrado | boolean
raiva | boolean  , se a vacina contra raiva esta em dia
vacinas | boolean , se as vacinas v8/v10 estão em dia

### Passeadores
Tabela modificada pelo PasseadoresController e seus views associados.

Coluna | Tipo
-------|------
email | string
nome | string
sobrenome | string
tel | string
bairro | string
preco | integer
created_at | datetime
updated_at | datetime
