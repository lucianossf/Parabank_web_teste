*** Settings ***
Test Setup    Abrir navegador
Test Teardown    Fechar navegador
Library    SeleniumLibrary
Resource    ../resources/globals_resources_parabank.robot
Resource    ../resources/3_resources_transacoes_financeiras.robot

*** Test Cases ***
4. SUÍTE: TRANSAÇÕES FINANCEIRAS
    [Documentation]     Fazer uma transferência entre contas via banco.
    [Tags]    test 3
    Abrir o site ParaBank para transferencia.
    Fazer login.
    Clicar em Transfer Funds.
    From account.
    to account.
    Clicar em Transferir.
    

