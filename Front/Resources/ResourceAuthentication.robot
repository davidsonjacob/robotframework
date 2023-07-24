*** Settings ***
Documentation       Resource Authentication


*** Keywords ***
Acessa tela Authentication
    [Documentation]             Acessa tela Authentication
    Click                       xpath=//a[normalize-space()='Sign in']
    Wait For Elements State     xpath=//h1[normalize-space()='Authentication']

Preenche o campo email
    [Documentation]             Cria um email através da Library Faker
    ${EMAILFAKE}                FakerLibrary.Email
    Type Text                   xpath=//input[@id='email_create']       ${EMAILFAKE}

Preenche o campo email do Email address
    [Documentation]             Preenche o campo email do Email address
    [Arguments]                 ${EMAIL}
    Type Text                   xpath=//input[@id='email']              ${EMAIL}

Preenche no login o campo email
    [Documentation]             Cria um email através da Library Faker
    ${EMAILFAKE}                FakerLibrary.Email
    Type Text                   //input[@id='email']                    ${EMAILFAKE}    

Preenche o campo Password
    [Documentation]             Preenche o campo email do ALREADY REGISTERED?
    [Arguments]                 ${PASSWD}
    Type Text                   xpath=//input[@id='passwd']     ${PASSWD}

Preenche os campos de informação pessoal
    [Documentation]             Cria um usuário
    [Arguments]                 ${FIRSTNAME}    ${LASTNAME}     ${PASSWD}
    Wait For Elements State     xpath=//h1[normalize-space()='Create an account']
    Type Text                   xpath=//input[@id='customer_firstname']     ${FIRSTNAME}
    Type Text                   xpath=//input[@id='customer_lastname']      ${LASTNAME}
    Type Text                   xpath=//input[@id='passwd']                 ${PASSWD}

Clique em Register
    [Documentation]             Clica no botão registrar
    Click                       xpath=//span[normalize-space()='Register']

Clique em Create an account
    [Documentation]             Clica no botão criar conta
    Click                       xpath=//span[normalize-space()='Create an account']

Clique em Sign in
    [Documentation]             Clica no botão Sign in
    Click                       xpath=//span[normalize-space()='Sign in']

Clique em Forgot your password
    [Documentation]             Clica no link Forgot your password
    Click                       xpath=//a[normalize-space()='Forgot your password?']
    Wait For Elements State     xpath=//h1[normalize-space()='Forgot your password?']

Clique em Retrieve Password
    [Documentation]             Clica no botão Retrieve Password
    Click                       xpath=//span[normalize-space()='Retrieve Password']

Valida mensagem ${MSG}
    [Documentation]             Valida mensagem de usuário criado
    Wait For Elements State     text="${MSG}"
