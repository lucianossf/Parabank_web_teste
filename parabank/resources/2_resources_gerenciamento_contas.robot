*** Settings ***    
Resource         ../resources/globals_resources_parabank.robot
*** Variables ***

*** Keywords ***
Acessar o site Parabank para gerenciamento de contas.
    Go To    url=${URL}
Fazer login com informações válidas.
    Wait Until Element Is Visible   xpath=//input[@name='username']        10s
    Input Text    xpath=//input[@name='username']    ${UserName}
    Input Text    css=input[type="password"]         ${PassWord}    
Clicar no botão "Login".
    Click Element    css=input[type="submit"]
Clicar no link "Open New Account".
    Click Element    css=a[href='openaccount.htm']
Preencher os campos de abertura de conta com informações válidas.
    Wait Until Element Is Visible   xpath=//select[@id='type']        10s
    Select From List By Label       xpath=//select[@id='type']        CHECKING
    Wait Until Element Is Visible   css=select[id="fromAccountId"]        10s
Clicar no botão "Open New Account".
    Click Element    xpath=//input[@value='Open New Account']