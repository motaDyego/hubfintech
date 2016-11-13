Projeto "hub" desenvolvido em Ruby on Rails, mesmo nunca tendo trabalhado com esse framework nem com a linguagem Ruby, achei melhor encarar de vez esse desafio para já ir me familiarizando com essas tecnologias.
Projeto "front" está em html, JQuery e css sem nenhum framework.

Inicialmente iria desenvolver o front usando AngularJS, gastei boas horas implementando o front com o framework, mas não teria tempo hábil para implementa-lo nesse projeto.
Assim acabei abortando a iniciativa e passei para algo mais simples, mas devido a problemas de Cross-origin resource sharing (CORS) também não deu tempo de concluí-lo. Para resolver o problema o front deveria estar sendo executado a partir de um servidor e não diretamente dos arquivos, e isso iria tomar ainda mais tempo.
Sempre deixo a parte de estilo (CSS) por último, por isso os arquivos existentes não estão estilizados.

O banco de dados utilizado foi o MySql, o backup do mesmo está no arquivo "hub_BD.sql"

Não foi possível concluir todas as operaçoes, mas foi possível criar uma aplicação Ruby on Rails com web services REST, cuja documentação encontra-se em http://docs.hub17.apiary.io/

A implementação model "Pessoa" ficou incompleta, faltou refletir no ORM/BD a hierarquia entre a Pessoa, Fisica e Juridica, isso impediu a conclusão dos web services referentes a essas classes.

Também não foi possível implementar a classe de operações entre as contas.

O resultado, apesar de incompleto, é 100% fruto de meu trabalho, apenas lendo documentação das tecnologia utilizadas. Prefiro entregar algo incompleto do que passar uma falsa impressão à vocês.