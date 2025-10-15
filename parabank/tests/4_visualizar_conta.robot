*** Settings ***
Library          SeleniumLibrary
Test Setup     Abrir navegador
Test Teardown  Fechar navegador    
Resource        ../resources/globals_resources_parabank.robot
Resource    ../resources/4_resources_visualizar_conta.robot

*** Test Cases ***
Visualizar o saldo da conta via banco.
    [Documentation]    visualizar o saldo da conta
    [Tags]    test 4
    Acessar o site Parabank para Visualização de conta.
    Fazer login com informações válidas.
    Clicar no link "Accounts Overview".
