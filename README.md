#### Grupo 28:
Tainá Cunha Bueno <br>
RA: 22.119.025-9

### Descrição
Este projeto simula um banco de dados simplificado de uma plataforma de streaming musical, semelhante ao Spotify. Ele inclui tabelas de Usuários, Artistas, Álbuns, Músicas, Gêneros, Playlists e relacionamentos entre esses elementos. <br>
Algumas das consultas realizadas são: <br>
-Músicas presentes em uma playlist e sua ordem de reprodução; <br>
-Gêneros associados a cada música; <br>
-Playlists seguidas por um usuário; <br>
-Artistas com seus respectivos álbuns e músicas.

### Como executar o projeto
Este projeto é composto por quatro scripts principais em SQL. Abaixo está a ordem recomendada de execução e o que cada um faz:

1. DDL.sql – Criação das Tabelas <br>
Este é o primeiro script que você deve rodar. Ele cria toda a estrutura do banco de dados, incluindo as tabelas principais (como usuários, músicas, playlists, etc.) e os relacionamentos entre elas. <br>
*Importante: Execute esse script antes de qualquer outro.*

2. Insercao.sql – Inserção de Dados <br>
Depois que as tabelas forem criadas, este script insere dados no banco. Ele preenche as tabelas com informações como artistas, músicas, playlists e usuários.

3. consistenciaDosDados.sql – Validação dos Dados <br>
Este script executa uma série de consultas para verificar se os dados inseridos estão consistentes. Ele checa, por exemplo, se todas as músicas estão associadas a álbuns válidos e se as playlists pertencem a usuários existentes.
O ideal é que nenhuma linha seja retornada nessas consultas, indicando que está tudo certo.

4. Queries.sql – Consultas e Análises <br>
Por fim, este script contém várias consultas SQL que extraem informações úteis do banco de dados.

### Modelo Entidade Relacionamento (MER)
![image](https://github.com/user-attachments/assets/aadcce70-a024-4c10-bb37-b2db8a943400)
