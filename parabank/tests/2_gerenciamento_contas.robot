*** Settings ***
Test Setup       Abrir navegador
Test Teardown    Fechar navegador
Resource         ../resources/2_resources_gerenciamento_contas.robot
Resource         ../resources/globals_resources_parabank.robot
Library          SeleniumLibrary

*** Test Cases ***

Abertura de uma nova conta
    [Documentation]    Fazer Login com sucesso com dados válidos.
    [Tags]    test 2
    Acessar o site Parabank para gerenciamento de contas.
    Fazer login com informações válidas.
    Clicar no botão "Login".
    Clicar no link "Open New Account".
    Preencher os campos de abertura de conta com informações válidas.
    Clicar no botão "Open New Account".
    
    

