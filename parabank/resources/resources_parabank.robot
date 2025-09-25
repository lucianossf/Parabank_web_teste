*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://parabank.parasoft.com
${Title}         ParaBank | Welcome | Online Banking
${FirstName}     Marcos
${LastName}      Antonio
${PassWord}      1234@test
${Address}       Castelão
${City}          Fortaleza    
${State}         Ceará
${ZipCode}       60520560000
${SNN}           2342424242
${UserName}      Marcos Antonio2
${Confirm}       1234@test



*** Keywords ***
Abrir navegador
    Open Browser    browser=chrome
    Maximize Browser Window
Fechar navegador
    Close Browser
Abrir o site ParaBank
    Go To    url=${URL} 
Validar titulo da pagina
    Title Should Be    ParaBank | Welcome | Online Banking
Preencher formulário com dados válidos.
    Click Element    css=a[href="register.htm"]
    Input Text    css=input[id="customer.firstName"]          ${FirstName}  
    Input Text    css=input[id="customer.lastName"]           ${LastName}
    Input Text    css=input[id="customer.address.street"]     ${Address}
    Input Text    css=input[id="customer.address.city"]       ${City}
    Input Text    css=input[id="customer.address.state"]      ${State}
    Input Text    css=input[id="customer.address.zipCode"]    ${ZipCode}
    Input Text    css=input[id="customer.ssn"]                ${SNN}
    Input Text    css=input[id="customer.username"]           ${UserName}
    Input Text    css=input[id="customer.password"]           ${PassWord}
    Input Text    css=input[id="repeatedPassword"]            ${Confirm}
    
Enviar formulário.
    Wait Until Element Is Visible    css=input[value="Register"]    10s
    Click Element    css=input[value="Register"]
    Page Should Contain    Welcome Marcos Antonio2
Resultado Esperado: Usuário cadastrado com sucesso.
    Page Should Contain    Your account was created successfully. You are now logged in.





Abrir o site ParaBank para cadastro existente
    Go To    url=${URL} 

Testa o cadastro de usuário existente
    Click Element    css=a[href="register.htm"]
    Input Text    css=input[id="customer.firstName"]          ${FirstName}  
    Input Text    css=input[id="customer.lastName"]           ${LastName}
    Input Text    css=input[id="customer.address.street"]     ${Address}
    Input Text    css=input[id="customer.address.city"]       ${City}
    Input Text    css=input[id="customer.address.state"]      ${State}
    Input Text    css=input[id="customer.address.zipCode"]    ${ZipCode}
    Input Text    css=input[id="customer.ssn"]                ${SNN}
    Input Text    css=input[id="customer.username"]           ${UserName}
    Input Text    css=input[id="customer.password"]           ${PassWord}
    Input Text    css=input[id="repeatedPassword"]            ${Confirm}
Clicar em 'Register'
    Wait Until Element Is Visible    css=input[value="Register"]    10s
    Click Element    css=input[value="Register"]
Cadastro existente
    Page Should Contain    This username already exists.    10s
    

    


    
   

