*** Settings ***
Library           SeleniumLibrary
Test Setup       Abrir navegador 
Test Teardown    Fechar navegador
Resource    ../resources/globals_resources_parabank.robot
Resource    ../resources/5_resources_verificar_conta_existente.robot

*** Test Cases ***
Verificar Conta Existente
    [Documentation]    Verifica se uma conta é existente.
    [Tags]    conta existente
    Acessar o site Parabank para cadastro existente.
    Clicar no botao "Register".
    Preencher os campos de registro com informações válidas.
    Resultado Esperado: Usuário ja é cadastrado.