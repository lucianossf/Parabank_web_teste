*** Settings ***    
Resource         ../resources/globals_resources_parabank.robot

*** Keywords ***
Abrir o site ParaBank para transferencia.
    Go To    url=${URL}
Fazer login.
    Wait Until Element Is Visible   xpath=//input[@name='username']        10s
    Input Text    xpath=//input[@name='username']    ${UserName}
    Input Text    css=input[type="password"]         ${PassWord}
    Sleep    1s
    Click Element    css=input[type="submit"]
Clicar em Transfer Funds. 
    Click Element    xpath=//a[normalize-space()='Transfer Funds']
    Input Text       css=input[id="amount"]    5000
From account.
    Wait Until Element Is Visible   css=select[id="fromAccountId"]        10s
    Sleep    0.5s
    Select From List By Index    css=select[id="fromAccountId"]    0

to account.
    Wait Until Element Is Visible   css=select[id="toAccountId"]        10s
    Sleep    0.5s
    Select From List By Index         css=select[id="toAccountId"]    0
Clicar em Transferir.
    Click Element    css=input[value="Transfer"]