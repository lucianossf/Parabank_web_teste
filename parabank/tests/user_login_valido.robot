*** Settings ***
Library    SeleniumLibrary
Test Setup    Abrir navegador
Test Teardown    Fechar navegador
Resource    ../resources/resources_parabank.robot
*** Test Cases ***
CT02 - Cadastro existente nao pode ser criado
    [Documentation]     Realizar teste com usuario existente, o usuario nao pode ser criado.
    [Tags]    Usuario existente
    Abrir o site ParaBank para cadastro existente   
    Testa o cadastro de usuário existente
    Clicar em 'Register'
    Cadastro existente
