# Projeto SQL - Arranjos de Roupa (Fernandes & Lda)

## 📌 Descrição

Este projeto foi desenvolvido no âmbito da unidade curricular **Base de Dados I** do curso de Engenharia Informática, ano letivo 2024/2025. 

O objetivo principal é a criação de um sistema de gestão de base de dados relacional para a cadeia de lojas **Fernandes & Lda**, especializada em arranjos de roupa. O sistema permite registar pedidos, emitir recibos, gerir stock e comunicar com os clientes por SMS.

---

## 🗂️ Estrutura do Repositório

- `Codigo_SQL/` – Scripts para criação das tabelas e inserção de dados.
- `Consultas/` – Conjunto de consultas SQL para responder aos requisitos do projeto.
- `Modelo ER/` – Diagrama Entidade-Relacionamento (ER) da base de dados.
- `Database11.accdb` – Ficheiro do Access com os formulários, consultas e relatórios.
- `DiagramaBaseDeDados.png` – Diagrama da base de dados relacional.
- `script.sql` – Script de criação e inserção em SQL Server.

---

## 📐 Modelos

### Modelo Conceptual
- Desenvolvido com base nas regras de negócio fornecidas (clientes, peças, arranjos, orçamentos, stocks, etc).
- Representado graficamente em `Modelo ER/`.

### Modelo Relacional
- Conversão do modelo conceptual para tabelas normalizadas.
- Preservação de integridade referencial entre as entidades.

---

## 🛠️ Implementação

### SQL Server
- Base de dados criada com `script.sql`.
- Tabelas, chaves primárias/estrangeiras, constraints e inserções.

### Microsoft Access
- Interface gráfica com formulários para gestão dos dados.
- Consultas e relatórios visuais associados à base de dados.

---

## 🔍 Consultas SQL

Inclui:
- Consultas com `INNER JOIN` entre pedidos, clientes e lojas.
- Consultas de filtragem por estado, urgência e tipo de pagamento.
- Agregações com `SUM`, `COUNT`, `GROUP BY` (lucros por loja, número de pedidos, etc).
- Subconsultas e ordenações para ranking de lojas/pedidos.

---

## 📲 Funcionalidades Adicionais

- Envio automático de SMS aos clientes quando o pedido está pronto.
- Gestão de stock por loja com base no consumo e tempo médio de entrega.
- Registo de devoluções e peças não levantadas.

---

## 👨‍💻 Autoria

**Alunos:** Daniel Raposo (danivraposo) , Francisco Pacheco (21PachaGod) 
**Unidade Curricular:** Base de Dados I  
**Ano:** 1.º Ano – 2024/2025  
