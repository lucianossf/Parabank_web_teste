*** Settings ***
Test Setup       Abrir navegador
Test Teardown    Fechar navegador
Library    SeleniumLibrary
Resource    ../resources/globals_resources_parabank.robot
Resource    ../resources/1_resources_cadastro_autenticacao.robot

*** Test Cases ***
Cadastrar novo usuário único
    [Documentation]    Este teste verifica o cadastro de um novo usuário único no sistema.
    [Tags]    test 1
    Acessar o site Parabank para cadastro.
    Clicar no botao "Register".
    Preencher os campos de registro com informações válidas.
    Clicar no botão "Register".
    Resultado Esperado: Usuário cadastrado com sucesso.
    