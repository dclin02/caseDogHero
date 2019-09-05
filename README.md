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

Seguindo tutorial do railstutorial.org, descobrimos que o Heroku näo tem suporte ao Sqlite3 e tem suporte nativo ao Postegresql, descobrimos tambem que eh possivel utilizar o Sqlite3 apenas para develepment e o Postegresql apenas para deployment editando o Gemfile. Assim, eh exatamente isto que pretende-se fazer.

-> criação do modelo cliente

-> Como queremos interagir de modo RESTful com os clientes, dogs e passeadores podemos facilitar e acelerar a criação de todos os componentes (controller model e view) pela geração automatica com scaffold