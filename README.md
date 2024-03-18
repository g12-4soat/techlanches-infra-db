<p dir="auto"><img src="https://github.com/g12-4soat/tech-lanches/blob/main/src/TechLanches/Adapter/Driver/TechLanches.Adapter.API/wwwroot/SwaggerUI/images/android-chrome-192x192.png" alt="TECHLANCHES" title="TECHLANCHES" align="right" height="60" style="max-width: 100%;"></p>

# Tech Lanches Infraestrutura do banco de dados

Repositório dedicado ao projeto TechChallenge da FIAP - Turma 4SOAT

# Documentação

<h4 tabindex="-1" dir="auto" data-react-autofocus="true">Stack</h4>

<p>
  <a target="_blank" rel="noopener noreferrer nofollow" href="https://camo.githubusercontent.com/962d06ebd5fabc44e392464f770a47947bae95440f3de3a7dbc3701c0b0c089e/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4d6963726f736f667425323053514c2532305365727665722d4343323932373f7374796c653d666f722d7468652d6261646765266c6f676f3d6d6963726f736f667425323073716c253230736572766572266c6f676f436f6c6f723d7768697465"><img src="https://camo.githubusercontent.com/962d06ebd5fabc44e392464f770a47947bae95440f3de3a7dbc3701c0b0c089e/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4d6963726f736f667425323053514c2532305365727665722d4343323932373f7374796c653d666f722d7468652d6261646765266c6f676f3d6d6963726f736f667425323073716c253230736572766572266c6f676f436f6c6f723d7768697465" data-canonical-src="https://img.shields.io/badge/Microsoft%20SQL%20Server-CC2927?style=for-the-badge&amp;logo=microsoft%20sql%20server&amp;logoColor=white" style="max-width: 100%;"></a>
  <a target="_blank" rel="noopener noreferrer nofollow" href="https://camo.githubusercontent.com/bce5c9b25447afefd9c8dc63febce5936fbff659beee51466a130b41a2821a9b/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f446f636b65722d3243413545303f7374796c653d666f722d7468652d6261646765266c6f676f3d646f636b6572266c6f676f436f6c6f723d7768697465"><img src="https://camo.githubusercontent.com/bce5c9b25447afefd9c8dc63febce5936fbff659beee51466a130b41a2821a9b/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f446f636b65722d3243413545303f7374796c653d666f722d7468652d6261646765266c6f676f3d646f636b6572266c6f676f436f6c6f723d7768697465" data-canonical-src="https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&amp;logo=docker&amp;logoColor=white" style="max-width: 100%;"></a>
</p>

---

## Motivações
Nesse tópico falaremos sobre as motivações para a escolha da stack do banco de dados.

### SQL Server
Optamos pelo SQL Server por conta da familiaridade do time com a tecnologia e também pelas características abaixo
- <b>Desempenho e Escalabilidade:</b> O SQL Server é conhecido por seu alto desempenho e capacidade de escalar vertical e horizontalmente. Isso permite que as empresas cresçam suas bases de dados de acordo com a necessidade, mantendo a eficiência.
- <b>Segurança:</b> Oferece recursos robustos de segurança, incluindo criptografia de dados, autenticação integrada e gerenciamento de permissões, garantindo a proteção dos dados sensíveis.
- <b>Compatibilidade com Aplicações:</b> Tem ampla aceitação e integração com várias aplicações e ferramentas de desenvolvimento, facilitando a implementação em ambientes corporativos.

### Amazon RDS
Optamos pelo Amazon RDS por conta do custo benefício e também pelas características abaixo
- <b>Gerenciamento Simplificado:</b> O Amazon RDS simplifica tarefas de administração de banco de dados, como provisionamento de hardware, configuração de banco de dados, patching de software, e backups, permitindo que os desenvolvedores se concentrem no desenvolvimento de aplicações.
- <b>Alta Disponibilidade e Durabilidade:</b> Oferece configurações de replicação fáceis de configurar, backups automatizados, garantindo a disponibilidade e a durabilidade dos dados.
- <b>Escalabilidade:</b> Permite ajustar facilmente os recursos computacionais ou a capacidade de armazenamento com apenas alguns cliques ou de forma automática, proporcionando flexibilidade conforme a demanda varia.
- <b>Compatibilidade:</b> Suporta vários motores de banco de dados, incluindo MySQL, PostgreSQL, Oracle, SQL Server, e MariaDB, oferecendo flexibilidade para trabalhar com a tecnologia preferida ou exigida pelo projeto.
  
---

## Dicionário de dados

<details>
  <summary>Clientes</summary>
  
  | Campo | Descrição | Tipo de dado | Nulo? | Índice? | Único |
  | --- | --- | --- | --- | --- | --- |
  | Id | Identificador único para o cliente. Chave primária da tabela | int | Não | Sim | Sim |
  | Cpf | CPF do cliente. Deve ser único | (nvarchar(11) | Não | Sim | Sim |
  | Nome | Nome do cliente. | nvarchar(50) | Não | Não | Não |
  | Email | E-mail do cliente. Deve ser único | nvarchar(100) | Não | Sim | Não |
  
</details>
<details>
  <summary>Produtos</summary>
  
  | Campo | Descrição | Tipo de dado | Nulo? | Índice? | Único |
  | --- | --- | --- | --- | --- | --- |
  | Id | Identificador único para o produto. Chave primária da tabela | int | Não | Sim | Sim |
  | Nome | Nome do produto. | nvarchar(100) | Não | Sim | Não |
  | Descricao | Descrição do produto. | (nvarchar(300) | Não | Não | Não |
  | Preco | Preço do produto. | decimal(18,2) | Não | Não | Não |
  | CategoriaId | Categoria do produto. | int | Não | Sim | Não |
  | Deletado | Booleano se o produto está deletado | bit | Não | Não | Não |
</details>

<details>
  <summary>Item Pedido</summary>
  
  | Campo | Descrição | Tipo de dado | Nulo? | Índice? | Único |
  | --- | --- | --- | --- | --- | --- |
  | PedidoId | Chave primária da tabela e chave estrangeira da tabela pedidos | int | Não | Sim | Não |
  | ProdutoId | Chave primária da tabela e chave estrangeira da tabela produtos | int | Não | Sim | Não |
  | Quantidade | Quantidade do produto selecionado | int | Não | Não | Não |
  | PrecoProduto | Preço do produto. | decimal(18,2) | Não | Não | Não |
  | Valor | Valor total do item do pedido | decimal(18,2) | Não | Não | Não |
</details>

<details>
  <summary>Pagamentos</summary>
  
  | Campo | Descrição | Tipo de dado | Nulo? | Índice? | Único |
  | --- | --- | --- | --- | --- | --- |
  | Id | Identificador único para o pagamento. Chave primária da tabela | int | Não | Sim | Sim |
  | PedidoId | Chave estrangeira da tabela pedidos | int | Não | Sim | Não |
  | Valor | Valor total do pedido | decimal(18,2) | Não | Não | Não |
  | StatusPagamento | Status do pagamento | nvarchar(max) | Não | Não | Não |
  | FormaPagamento | Forma de pagamento | nvarchar(max) | Não | Não | Não |
</details>

<details>
  <summary>Pedidos</summary>
  
  | Campo | Descrição | Tipo de dado | Nulo? | Índice? | Único |
  | --- | --- | --- | --- | --- | --- |
  | Id | Identificador único para o pedido. Chave primária da tabela | int | Não | Sim | Sim |
  | ClienteId | Chave estrangeira da tabela clientes | int? | Sim | Sim | Não |
  | Valor | Valor total do pedido | decimal(18,2) | Não | Não | Não |
  | StatusPedido | Status do pedido | nvarchar(max) | Não | Não | Não |
</details>

---

## Diagrama de dados

Diagrama de dados criado com [DrawSQL](https://drawsql.app/teams/tech-lanches/diagrams/tech-lanches)

 <img src="https://github.com/g12-4soat/techlanches-infra-db/blob/main/docs/Fase3/diagrama-dados.png" style="max-width: 100%;">

<details>
  <summary>Versões</summary>

## Software
- MSSQL Server - 2019
</details>

---
## Pipeline Status
| Pipeline | Status |
| --- | --- | 
| DB Infrastructure | [![Deploy DB Infrastructure](https://github.com/g12-4soat/techlanches-infra-db/actions/workflows/pipeline.yml/badge.svg)](https://github.com/g12-4soat/techlanches-infra-db/actions/workflows/pipeline.yml)
