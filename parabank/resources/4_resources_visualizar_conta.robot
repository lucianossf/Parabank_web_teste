*** Settings ***
Resource        ../resources/globals_resources_parabank.robot
Resource        ../resources/4_resources_visualizar_conta.robot

*** Keywords ***
Acessar o site Parabank para Visualização de conta.
    Go To    url=${URL}
Fazer login com informações válidas.
    Input Text    xpath=//input[@name='username']    ${UserName}
    Input Text    css=input[type="password"]    ${PassWord}
    Click Element    css=input[type="submit"]
Clicar no link "Accounts Overview".
    Wait Until Element Is Visible    xpath=//a[normalize-space()='Accounts Overview']    10s
    Click Element    xpath=//a[normalize-space()='Accounts Overview']
    Sleep    0.5s
    Page Should Contain    Accounts Overview