*** Settings ***
Library          SeleniumLibrary
Test Setup       Abrir navegador
Test Teardown    Fechar navegador
Resource         ../resources/resources_parabank.robot

# Prioridade: Alta
*** Test Cases ***
CT01 - Criar Usuário
    [Documentation]    Registrar usuario 
    [Tags]    registrar usuario
    Abrir o site ParaBank
    Validar titulo da pagina
    Preencher formulário com dados válidos.
    Enviar formulário.
    Resultado Esperado: Usuário cadastrado com sucesso.







