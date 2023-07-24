*** Settings ***
Documentation       Valida as funcionalizades produto

Resource            ../Resources/Resource.robot

Test Setup          Acessa página principal

Test Teardown       Volta para tela inicial

Suite Teardown      Fecha navegador


*** Test Cases ***
CT01: Pesquisa por um produto
    [Documentation]     Realiza pesquisa de um produto
    [Tags]              Produto01
    Acessa tela Authentication
    Preenche o campo email do Email address     robot@teste.com
    Preenche o campo Password   P8g@$kog
    Clique em Sign in
    Valida mensagem Welcome to your account. Here you can manage all of your personal information and orders.
    Pesquisa produto    dress
