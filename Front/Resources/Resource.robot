*** Settings ***
Documentation       Resource Principal do Projeto

Library             String
Library             Browser
Library             FakerLibrary

Resource            ResourceAuthentication.robot

*** Variables ***
${BROWSER}           chromium


*** Keywords ***
Acessa página principal
    [Documentation]             Monta URL para acesso ao produto e abre o Browser
    Set Browser Timeout         50s
    New Browser                 browser=${BROWSER}       headless=false
    New Context                 viewport={'width': 1920, 'height': 1080}
    New Page                    http://www.automationpractice.pl/index.php

Volta para tela inicial
    [Documentation]             Volta para tela inicial
    Click                       xpath=//img[@alt='My Shop']
    Wait For Elements State     text="Custom Block"

Desloga do sistema
    [Documentation]             Desloga do sistema
    Click                       xpath=//a[@title='Log me out']
    Wait For Elements State     xpath=//span[normalize-space()='Sign in']

Fecha navegador
    [Documentation]             Fecha navegador
    Close Browser
