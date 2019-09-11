# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# caseDogHero
Test Case

Recentemente lançamos um serviço novo de passeios. Seu desafio será criar as telas de cadastro, listagem e apresentação do pet, cliente e a do passeador.

    • Fique a vontade em propor a modelagem dos dados para estas três entidades como avaliar melhor; Use o banco de dados que quiser;
    • Crie uma aplicação backend na plataforma que quiser e exponha os dados em formato de API; Criar em Ruby on Rails é um plus; Se arriscar em testes unitários é um plus;
    • Cria uma aplicação frontend na plataforma que quiser, utilizando os dados expostos pela API anterior; Deixar um UI simples e amigável é um plus;
    • Fazer deploy da aplicação em qualquer lugar (Heroku, AWS etc) é um plus;
    • Distribua seu teste via GitHub ou outro;
    • Documente seaus passos durante o desenvolvimento e também como rodar a aplicação;
    
    
A primeira decisão é de quais ferramentas utilizar para dominio do projeto. Como a empresa utiliza o Ruby on Rails, este será utilizado no Backend.
Após uma pesquisa rapida, descobre-se que o Rails vem com suporte nativo e pré-configurado para utilizar o SQLite3, assim, este será o banco de dados utilizado.

Como nunca utilizei Ruby, não possuo nenhuma IDE para utiliza-lo de forma eficiente, assim, escolheu-se aprender a utilizar o VS Code como ambiente de desenvolvimento para o projeto pois é leve e open source, possui um terminal integrado para rodar os comandos do rails, possui extensões para facilitar tarefas do rails como testes.

Por ter menos familiaridade com o front-end, deixarei esta decisão mais para frente, dependendo do caminhamento do restante do projeto.
Update: O rails ja produz automaticamente Views em HTML que fornecem um frontend simples para o projeto. A priori este sera o front utilizado a não ser que sobre tempo para arriscar ferramentas mais sofisticadas.

Assim, inicio o primeiro passo pratico: aprender a utilizar Ruby on Rails e criar o projeto.

Seguindo tutorial dos capitulos gratuitos de railstutorial.org, descobrimos que o Heroku näo tem suporte ao Sqlite3 e tem suporte nativo ao Postegresql, descobrimos tambem que eh possivel utilizar o Sqlite3 apenas para develepment e o Postegresql apenas para deployment editando o Gemfile. Assim, eh exatamente isto que pretende-se fazer.

Modelo do banco de dados:
Clientes
cliente_id email nome sobrenome tel endereco
         ^
Dogs     |
id cliente_id nome raca genero idade porte castrado raiva v8_v10

Passeadores
id email nome sobrenome tel bairro preco

-> criação do modelo cliente

-> Como queremos interagir de modo RESTful com os clientes, dogs e passeadores podemos facilitar e acelerar a criação de todos os componentes (controller model e view) pela geração automatica com scaffold

1a tentativa rails generate scaffold Clientes email:distinct:index nome sobrenome tel endereco
:distinct não produziu o efeito desejado
mudando para
:uniq
rails destroy scaffold Clientes
rails generate scaffold Clientes email:uniq:index nome sobrenome tel endereco  (:uniq:index é redundante?)

deployed successfuly at https://murmuring-shore-33383.herokuapp.com/

Aparentemten o rails inlcui um parametro id automaticamente, assim o index do email não era necessario (o objetivo era ter uma referencia ao cliente para ligar seus dogs)

Tutorial utilizado para deixar Dogs nested com Clientes https://www.digitalocean.com/community/tutorials/how-to-create-nested-resources-for-a-ruby-on-rails-application 


Com os toda arquitetura MVC implementada, com algumas validações basicas implementadas, chegou-se a hora de iniciar as tentativas de testes:
Ao se rodar rails test, todos os testes apresetam erros. Iniciaremos concertando os testes gerados pelo scaffold antes de passar para outras etapas. Temos inicialmente erros relacionados a routing pelos testes não levarem em conta que Dogs esta nested em Clientes, e erros relacionados a validação de uniqueness do email dos clientes e passeadores.


Bibliografia
