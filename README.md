# SmartStock – Resumo do Progresso (Figma e GitHub)

Data: 24/11/2026

## Figma: arquivo e protótipo

O arquivo "SmartStock – Plataforma Inteligente de Gestão de Estoque" foi criado no time BRUNO RISSO AGUIAR's team e contém 6 telas em 1440×900 na página Protótipo:

- Login: painel de marca e formulário de acesso
- Dashboard: KPIs, gráfico semanal, alertas de reposição e últimas movimentações
- Gestão de Produtos: busca, filtro, tabela com estoque mínimo destacado e ações de editar/excluir
- Movimentação de Estoque: formulário de entrada/saída e histórico
- Relatórios: resumo, consumo por categoria e lista de relatórios
- Configurações: dados da empresa, notificações e usuários e permissões

Link: https://www.figma.com/design/VunEPyI95C9lE6pX7Xlb5g

Página "Arquitetura e Banco": fluxograma da arquitetura e modelo do banco de dados.

## Arquitetura da solução

Fluxo principal: Usuário → Front-end Web (React) → API REST (Node.js, autenticação JWT) → Banco de Dados (PostgreSQL).

Integrações futuras (Dia 9): Agente de IA conectado à API e automação N8N com alertas por e-mail e painel.

## Modelo do banco de dados

Tabela Produtos: id, nome, categoria, quantidade, estoque_minimo, preco, data_cadastro.

Tabela Movimentacoes: id, produto_id, tipo (Entrada ou Saída), quantidade, data.

Script completo: SmartStock_banco.sql

## GitHub: pendente

O repositório ainda não foi criado. Pendências:

- [ ] Confirmar a conta ou organização do GitHub
- [ ] Confirmar se o repositório será privado (sugestão) ou público
- [ ] Confirmar o nome do repositório (sugestão: smartstock)

## Próximos passos

1. Confirmar a conta do GitHub e as opções acima.
2. Criar o repositório e enviar a documentação: requisitos, modelo do banco, arquitetura e link do Figma.
3. Exportar as capturas de tela das telas do Figma para o entregável.
