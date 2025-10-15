*** Settings ***
Library          SeleniumLibrary
Test Setup       Abrir navegador
Test Teardown    Fechar navegador
Resource         ../resources/globals_resources_parabank.robot
Resource         ../resources/0_resources_acesso_navegacao.robot

*** Test Cases ***
Acessar o site Parabank
    Acessar o site Parabank.
    Validar titulo da pagina

