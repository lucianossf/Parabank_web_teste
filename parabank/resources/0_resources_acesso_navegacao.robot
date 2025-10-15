*** Settings ***
Resource         ../resources/globals_resources_parabank.robot

*** Keywords ***
Acessar o site Parabank.
    Go To    url=${URL}
Validar titulo da pagina
    Title Should Be    ParaBank | Welcome | Online Banking