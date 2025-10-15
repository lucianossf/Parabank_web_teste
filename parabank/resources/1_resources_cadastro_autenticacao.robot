*** Settings ***
Resource         ../resources/globals_resources_parabank.robot

*** Variables ***

*** Keywords ***
Acessar o site Parabank para cadastro.
    Go To    ${URL}
Clicar no botao "Register".
    Click Element    css=a[href="register.htm"]
Preencher os campos de registro com informações válidas.
    Input Text    css=input[id="customer.firstName"]          ${FirstName}  
    Input Text    css=input[id="customer.lastName"]           ${LastName}
    Input Text    css=input[id="customer.address.street"]     ${Address}
    Input Text    css=input[id="customer.address.city"]       ${City}
    Input Text    css=input[id="customer.address.state"]      ${State}
    Input Text    css=input[id="customer.address.zipCode"]    ${ZipCode}
    Input Text    css=input[id="customer.phoneNumber"]        ${Phone}
    Input Text    css=input[id="customer.ssn"]                ${SSN}
    Input Text    css=input[id="customer.username"]           ${UserName}
    Input Text    css=input[id="customer.password"]           ${PassWord}
    Input Text    css=input[id="repeatedPassword"]            ${Confirm}
Clicar no botão "Register".
    Wait Until Element Is Visible    css=input[value="Register"]    10s
    Click Element    css=input[value="Register"]
    Sleep    1s
    Page Should Contain    Welcome    Marcos Antonio
Resultado Esperado: Usuário cadastrado com sucesso.
    Page Should Contain    Your account was created successfully. You are now logged in.