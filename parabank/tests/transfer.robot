*** Settings ***
Test Setup    Abrir navegador
Test Teardown    Fechar navegador
Library    SeleniumLibrary
Resource    ../resources/resources_parabank.robot

*** Test Cases ***
transferencia
    [Documentation]     transferencia
    [Tags]    via banco
    Abrir o site ParaBank para transferencia
    inserir usuario
    inserir senha
    clicar em login 
    Clicar em Transfer Funds
    From account
    to account
    Transferir
    

