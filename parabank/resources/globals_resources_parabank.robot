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
${Phone}         85988997766
${SSN}           2342424242
${Confirm}       1234@test
${UserName}      Marcos Antonio

*** Keywords ***
Abrir navegador
    Open Browser    browser=chrome
    Maximize Browser Window
Fechar navegador
    Close Browser
Abrir o site ParaBank
    Go To    ${URL} 
    Sleep    1s




