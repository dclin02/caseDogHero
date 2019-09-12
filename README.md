# README
* Ruby version = 2.5.1p57
* Rails version = 6.0.0

* Configuration

        - bundle install

* Database creation and initialization

         - rails db:migrate

* How to run the test suite

        - rails test

* How to run locally

        - rails server

* Deployment instructions

    Has been deployed on Heroku (https://daniellincasedh.herokuapp.com/) through the following method:
        - heroku login
        - heroku create
        - git push heroku master

* Observations

     As this is a test application, Admin login when requested is User: admin , password: admin

### Diário de Desenvolvimento
A primeira decisão é de quais ferramentas utilizar em cada dominio do projeto. Como a empresa utiliza o Ruby on Rails, este será utilizado no Backend.
Após uma pesquisa rapida, descobre-se que o Rails vem com suporte nativo e pré-configurado para utilizar o SQLite3, assim, este será o banco de dados utilizado.

Como nunca utilizei Ruby, não possuo nenhuma IDE para utiliza-lo de forma eficiente, assim, escolheu-se aprender a utilizar o VS Code como ambiente de desenvolvimento para o projeto pois é leve e open source, possui um terminal integrado para rodar os comandos do rails, possui extensões para facilitar tarefas do rails como testes.

Por ter menos familiaridade com o front-end, deixarei esta decisão mais para frente, dependendo do caminhamento do restante do projeto.
Update: O rails ja produz automaticamente Views em HTML que fornecem um frontend simples para o projeto. A priori este sera o front utilizado a não ser que sobre tempo para arriscar ferramentas mais sofisticadas.

Assim, inicio o primeiro passo pratico: aprender a utilizar Ruby on Rails e criar o projeto.

Seguindo tutorial dos capitulos gratuitos de [[1]](https://github.com/dclin02/caseDogHero/tree/development/bibliografia.md "railstutorial.org/book/beginning") e [[2]](https://github.com/dclin02/caseDogHero/tree/development/bibliografia.md "https://guides.rubyonrails.org/getting_started.html"), descobrimos que o Heroku näo tem suporte ao Sqlite3 e tem suporte nativo ao Postegresql, descobrimos tambem que eh possivel utilizar o Sqlite3 apenas para development e o Postegresql apenas para production editando o Gemfile. Assim, eh exatamente isto que pretende-se fazer.

-> Idealização do [Modelo do banco de dados](https://github.com/dclin02/caseDogHero/tree/development/documentation/database.md):

-> criação do modelo cliente

-> Como queremos interagir de modo RESTful com os clientes, dogs e passeadores podemos facilitar e acelerar a criação de todos os componentes (controller model e view) pela geração automatica com scaffold. [[4]](https://github.com/dclin02/caseDogHero/tree/development/bibliografia.md "https://kolosek.com/rails-scaffold/")

1a tentativa rails generate scaffold Clientes email:distinct:index nome sobrenome tel endereco
:distinct não produziu o efeito desejado
mudando para
:uniq
rails destroy scaffold Clientes
rails generate scaffold Clientes email:uniq:index nome sobrenome tel endereco  (:uniq:index é redundante?)

Deployed successfuly at https://daniellincasedh.herokuapp.com/

Aparentemente o rails inclui um parametro id automaticamente, assim o index do email não era necessario (o objetivo era ter uma referencia ao cliente para ligar seus dogs). Mas acredito que apesar disso o index do email substitui o padrão, pelo menos não sendo redundante.

Seguiu-se tutorial [[3]](https://github.com/dclin02/caseDogHero/tree/development/bibliografia.md "https://www.digitalocean.com/community/tutorials/how-to-create-nested-resources-for-a-ruby-on-rails-application") para deixar Dogs nested com Clientes.


Com toda arquitetura MVC implementada, com algumas validações basicas implementadas, chegou-se a hora de iniciar as tentativas de testes [[7]](https://github.com/dclin02/caseDogHero/tree/development/bibliografia.md "https://guides.rubyonrails.org/testing.html"):
Ao se rodar rails test, todos os testes apresentam erros. Iniciaremos consertando os testes gerados pelo scaffold antes de passar para outras etapas. Temos inicialmente erros relacionados a routing pelos testes não levarem em conta que Dogs estar nested em Clientes, e erros relacionados a validação de uniqueness do email dos clientes e passeadores.

Agora com todos os testes passando, chega-se a hora de criar nossos proprios testes unitarios.
Pesquisando sobre testes em Rails, tem-se a impressão que a ferramenta mais utilizada é o RSpec, no entanto, como o Rails por padrão utiliza o Minitest, e como muitos testes ja foram criados automaticamente pelo Rails, decidi me ater a ferramente que ja esta sendo utilizada.

Até agora aprendeu-se muito sobre o Rails mas programou-se pouco em Ruby e boa parte do Rails foi feito automaticamente. Para exercitar melhor tudo o que foi aprendido, decidiu-se implementar algumas novas funcionalidades:

* Adicinou-se o Controlador Admins, cujo intuito é dar opções acessiveis somente após realizar uma autenticação. Estas ações são a de listar todos os clientes, listar todos os passeadores, e listar todos os cachorros (que por sua vez estão agrupados por seus clientes).
* Adicionou-se uma Pagina Inicial através do novo WelcomeController que contem as opções: Login Admin, Cadastrar Cliente, Cadastrar Passeador, Entrar como Cliente (formulario de email), Entrar como Passeador (formulario de email).
Assim, um usuario sem autenticação não consegue listar todo conteudo das tabelas, e consegue apenas visualizar um cliente/passeador por vez apenas sabendo seu email.

Temos agora que criar testes para estas novas funcionalidades. (Check)

Tendo-se testado as funcionalidades, iremos refatorar o código para torná-lo mais legível.

Melhorando-se os formulários na View da Primeira Pagina, sente-se a necessidade de expandir os testes para cobrir o comportamento dos flash[:notice].

Pretende-se ainda implementar, caso tenhamos tempo:

todo: 

    - pesquisar como transformar porte em faixas selecionaveis
    - tentar centralizar conteudo na pagina
    - pesquisa de passeadores por bairro na pagina do cliente
