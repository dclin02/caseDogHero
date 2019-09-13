2567628 - Daniel Lin, Wed Sep 4 19:22:47 2019 -0300 : initial commit
01c3628 - Daniel Lin, Wed Sep 4 19:30:16 2019 -0300 : readme change
f1e1e37 - Daniel Lin, Wed Sep 4 19:45:46 2019 -0300 : readme change for ssh test
f35e320 - Daniel Lin, Wed Sep 4 22:08:13 2019 -0300 : readme update
3955adc - Daniel Lin, Thu Sep 5 12:34:24 2019 -0300 : mais documentacao de decisoes e pesquisas
4cb6da1 - Daniel Lin, Thu Sep 5 16:27:35 2019 -0300 : Gemfile update for pg heroku, Clientes scaffold generate, Passeadores scaffold generate
a8948e0 - Daniel Lin, Thu Sep 5 17:01:41 2019 -0300 : fix Gemfile for heroku
26a4939 - Daniel Lin, Thu Sep 5 17:39:42 2019 -0300 : generates recriados mudando distinct para unique, db migrated
483f901 - Daniel Lin, Thu Sep 5 18:03:17 2019 -0300 : Hello world to test heroku
c6948f1 - Daniel Lin, Thu Sep 5 18:12:58 2019 -0300 : Readme update, Hello World heroku deploy success
566ca8f - Daniel Lin, Thu Sep 5 19:09:05 2019 -0300 : Readme update. Scaffold Dogs generated. Dogs and Clientes models updated for association test.
163d014 - Daniel Lin, Tue Sep 10 10:11:08 2019 -0300 : Changes to client model to make dogs dependent so they are destroyed when their owner is destroyed.
b7d81f5 - Daniel Lin, Tue Sep 10 10:11:54 2019 -0300 : Dogs scaffold recreated for client references
ef73724 - Daniel Lin, Tue Sep 10 10:13:27 2019 -0300 : Routes modified to nest dogs with clients
646b130 - Daniel Lin, Tue Sep 10 10:26:11 2019 -0300 : Modified Dogs_controller.rb to work as a nested resource  under Clientes
3728265 - Daniel Lin, Tue Sep 10 10:45:45 2019 -0300 : Modified views to reflect Dogs nested under Clients
b9e4687 - Daniel Lin, Tue Sep 10 10:50:21 2019 -0300 : Dogs Index View cliente name fix
94e33d8 - Daniel Lin, Tue Sep 10 11:35:44 2019 -0300 : Readme update
be1740c - Daniel Lin, Tue Sep 10 11:35:59 2019 -0300 : Views layout update
8d5d599 - Daniel Lin, Tue Sep 10 14:05:58 2019 -0300 : Added some validations to cliente.rb
a6e0a9b - Daniel Lin, Tue Sep 10 14:07:34 2019 -0300 : Added some validations to dog.rb
e434709 - Daniel Lin, Tue Sep 10 14:10:05 2019 -0300 : Added some validations do passeadore.rb
7db4947 - Daniel Lin, Tue Sep 10 19:08:55 2019 -0300 : Added multiple fields to the dog database table and modified controllers, views, models to accomodate changes
ab7f7c7 - Daniel Lin, Tue Sep 10 21:27:36 2019 -0300 : Dev journal update
65b3fb3 - Daniel Lin, Tue Sep 10 23:10:59 2019 -0300 : Small validations update
a32af6f - Daniel Lin, Tue Sep 10 23:11:49 2019 -0300 : Initiating test development: Fixed initial tests for nested routes and uniqueness
b54d797 - Daniel Lin, Tue Sep 10 23:15:53 2019 -0300 : Readme Update, started using Rails tests
1f8f50b - Daniel Lin, Wed Sep 11 13:02:28 2019 -0300 : Formatting fix
1c223fd - Daniel Lin, Wed Sep 11 13:04:29 2019 -0300 : Readme: iniciando tentativas de testes unitarios
eb666fa - Daniel Lin, Wed Sep 11 13:10:36 2019 -0300 : Readme: iniciando tentativas de testes unitarios
aecee8d - Daniel Lin, Wed Sep 11 20:12:18 2019 -0300 : Added unity tests for custom validations
4dbc8e7 - Daniel Lin, Wed Sep 11 20:22:10 2019 -0300 : Added some unity tests for the Dogs model and its custom validations
40b2e5e - Daniel Lin, Wed Sep 11 20:22:23 2019 -0300 : Added some unity tests for the Passeadores model and its custom validations
7cbdeca - Daniel Lin, Wed Sep 11 21:14:05 2019 -0300 : .
83f3825 - Daniel Lin, Wed Sep 11 22:32:48 2019 -0300 : .
43c8edc - Daniel Lin, Wed Sep 11 23:11:54 2019 -0300 : Added AdminsController for Authenticated Views
ab7de17 - Daniel Lin, Thu Sep 12 00:37:19 2019 -0300 : Admin Authentication added, Admin list all Clients and Admin list all Dogs implemented
6bfa2cb - Daniel Lin, Thu Sep 12 01:03:15 2019 -0300 : Finished admin views, fixed admin route, fixed broken validation on passeador
ee9bb95 - Daniel Lin, Thu Sep 12 01:17:16 2019 -0300 : Fixed c->ç And some more portuguese in views
1164d14 - Daniel Lin, Thu Sep 12 01:20:23 2019 -0300 : Built Welcome Controller for home page creation
748294c - Daniel Lin, Thu Sep 12 03:36:28 2019 -0300 : Added Cliente search method to Welcome Controller and updated Home Page View to contain cliente email form.
8a8a6da - Daniel Lin, Thu Sep 12 03:48:02 2019 -0300 : Added searchPasseadore Method to Welcome COntroller and Updated home page view with form
ab8b0b6 - Daniel Lin, Thu Sep 12 04:13:17 2019 -0300 : Changed form_tag to newer form_with, fixed Back Links in Show Cliente e Show passeador, added Back Link in Admin Dashboard
f5da1c6 - Daniel Lin, Thu Sep 12 04:13:42 2019 -0300 : Commentary removed
90aca73 - Daniel Lin, Thu Sep 12 04:33:29 2019 -0300 : Botoes traduzidos, todos erros ortograficos e todos os links  arrumados
a221f5d - Daniel Lin, Thu Sep 12 04:42:00 2019 -0300 : Documentation update
c0724ae - Daniel Lin, Thu Sep 12 04:55:58 2019 -0300 : Making AdminController Tests pass auth
2cb2546 - Daniel Lin, Thu Sep 12 05:00:09 2019 -0300 : Resolved conflict in README
be0a497 - Daniel Lin, Thu Sep 12 14:08:44 2019 -0300 : Added placholder message to input fields on Welcome Index to indicate its expecting an email.
2f92ea0 - Daniel Lin, Thu Sep 12 14:09:00 2019 -0300 : Merge branch 'development'
93bbd38 - Daniel Lin, Thu Sep 12 14:34:37 2019 -0300 : readme fix
3fd59ac - Daniel Lin, Thu Sep 12 15:18:53 2019 -0300 : Added Home Page link to Dogs Show and Index
e30b438 - Daniel Lin, Thu Sep 12 16:35:01 2019 -0300 : Added tests for the new search methods in Welcome Controller
a4b6560 - Daniel Lin, Thu Sep 12 16:54:21 2019 -0300 : Refactored Welcome Controller code
30bdb22 - Daniel Lin, Thu Sep 12 16:56:53 2019 -0300 : Criaçao Pasta de Documentacao e inicio da documentacao do db
53467c9 - Daniel Lin, Thu Sep 12 16:58:35 2019 -0300 : database.txt to database.md
85cfb9e - Daniel Lin, Thu Sep 12 17:14:40 2019 -0300 : Database.md done
2ba8977 - Daniel Lin, Thu Sep 12 17:38:20 2019 -0300 : Improved flash notice testing in welcome controller tests, changed getNextPage method to private in WelcomeController
1fd4201 - Daniel Lin, Thu Sep 12 18:02:50 2019 -0300 : Documentation update
293d59a - Daniel Lin, Thu Sep 12 18:03:45 2019 -0300 : Markdown test
6fcd35e - Daniel Lin, Thu Sep 12 19:30:18 2019 -0300 : Doggy dog
6c208fb - Daniel Lin, Thu Sep 12 19:33:58 2019 -0300 : Documentation update
b6ed840 - Daniel Lin, Thu Sep 12 19:44:36 2019 -0300 : Markdown Test
94c79ae - Daniel Lin, Thu Sep 12 19:45:04 2019 -0300 : Markdown Test
db98d4d - Daniel Lin, Thu Sep 12 19:48:01 2019 -0300 : Markdown Test
292303d - Daniel Lin, Thu Sep 12 19:49:29 2019 -0300 : Markdown Test
b719312 - Daniel Lin, Thu Sep 12 20:01:35 2019 -0300 : Documentation update
41e7cc1 - Daniel Lin, Thu Sep 12 20:02:14 2019 -0300 : Documentation update
3373480 - Daniel Lin, Thu Sep 12 20:02:30 2019 -0300 : Documentation update
28df0ee - Daniel Lin, Thu Sep 12 20:02:54 2019 -0300 : Documentation update
9b96b95 - Daniel Lin, Thu Sep 12 20:03:28 2019 -0300 : Documentation update
7a54565 - Daniel Lin, Thu Sep 12 20:04:01 2019 -0300 : Documentation update
c47abd3 - Daniel Lin, Thu Sep 12 20:18:58 2019 -0300 : Documentation update and Preparing to Merge
c73c3fd - Daniel Lin, Thu Sep 12 20:19:59 2019 -0300 : Bibliografia formatting fix
438a63a - Daniel Lin, Thu Sep 12 20:20:31 2019 -0300 : Bibliografia formatting fix
88ee4f8 - Daniel Lin, Thu Sep 12 20:23:05 2019 -0300 : README formatting fix
ce849b2 - Daniel Lin, Thu Sep 12 20:31:40 2019 -0300 : Merge fix?
3b1fa44 - Daniel Lin, Thu Sep 12 20:50:30 2019 -0300 : Passeadores preço validation fix
e2d856d - Daniel Lin, Thu Sep 12 20:50:56 2019 -0300 : Merge branch 'development'
fdfdbf9 - Daniel Lin, Thu Sep 12 20:54:39 2019 -0300 : Fix Admin Show Passeadores View
1b48b87 - Daniel Lin, Thu Sep 12 20:58:11 2019 -0300 : README formatting fix
1feb4a4 - Daniel Lin, Thu Sep 12 20:58:56 2019 -0300 : README formatting fix
7f60540 - Daniel Lin, Thu Sep 12 23:32:33 2019 -0300 : Readme portuguese fix
