# ParaBank — automação com Robot Framework

Suíte de testes web para o ambiente de demonstração do [ParaBank](https://parabank.parasoft.com/). Os testes usam Robot Framework e SeleniumLibrary.

## Cobertura atual

| Arquivo | Cenário |
|---|---|
| parabank/tests/0_acesso_navegacao.robot | Acesso ao site e validação do título da página |
| parabank/tests/1_cadastro_autenticacao.robot | Cadastro de usuário |
| parabank/tests/2_gerenciamento_contas.robot | Abertura de uma nova conta |
| parabank/tests/3._transacoes_financeiras.robot | Transferência entre contas |
| parabank/tests/4_visualizar_conta.robot | Consulta da conta e do saldo |
| parabank/tests/5_verificar_conta_existente.robot | Validação de cadastro de usuário existente |

## Ferramentas e versões

- Robot Framework, SeleniumLibrary e Selenium são as ferramentas usadas pelo projeto.
- O repositório não fixa versões: não há requirements.txt, pyproject.toml ou arquivo de lock.
- Python também não está configurado em manifesto. O README anterior citava Python 3.8+, sem validação no projeto.
- Keywords compartilhadas do navegador ficam em parabank/resources/.

## Estrutura

    parabank/
    ├── resources/
    └── tests/
        ├── 0_acesso_navegacao.robot
        ├── 1_cadastro_autenticacao.robot
        ├── 2_gerenciamento_contas.robot
        ├── 3._transacoes_financeiras.robot
        ├── 4_visualizar_conta.robot
        └── 5_verificar_conta_existente.robot

## Instalação e execução

Na raiz do repositório:

    cd parabank
    python -m venv .venv
    .venv/Scripts/Activate.ps1
    python -m pip install robotframework robotframework-seleniumlibrary selenium
    robot -d logs tests/

Para executar um arquivo específico:

    robot -d logs tests/0_acesso_navegacao.robot

O Robot Framework grava os relatórios em logs/. As versões das dependências não são reproduzíveis entre máquinas enquanto não forem fixadas em um arquivo de requisitos.
