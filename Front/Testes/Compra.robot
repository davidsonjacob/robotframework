*** Settings ***
Documentation       Valida as funcionalizades compra

Resource            ../Resources/Resource.robot

Test Setup          Acessa página principal

Test Teardown       Volta para tela inicial

Suite Teardown      Fecha navegador


*** Test Cases ***
CT01: Realiza uma compra
    [Documentation]     Realiza uma compra
    [Tags]              Compra01
    Acessa tela Authentication
    Preenche o campo email do Email address     robot@teste.com
    Preenche o campo Password   P8g@$kog
    Clique em Sign in
    Valida mensagem Welcome to your account. Here you can manage all of your personal information and orders.

