*** Settings ***
Documentation       Valida as Funcionalidades de NCM

Resource            ../Resources/Resource.robot

# Suite Setup         Run Keywords
# ...                 Login pelo Auth com email ncmintel02@robot.qa  AND
# ...                 Abre o Browser  AND
# ...                 Seleciona idioma    PT  AND
# ...                 Checks ENV to insert data into the database     NCM INTEL    is_front

Test Setup          Acessa página principal

Test Teardown       Volta para tela inicial

# Suite Teardown      Run Keywords
# ...                 Desloga do sistema  AND
# ...                 Fechar navegador    AND
# ...                 Comment Notification Slack      AND
# ...                 Checks ENV to update database


*** Test Cases ***
CT01: Cria um novo usuário
    [Documentation]     Cria um novo usuário
    [Tags]              Usuario01
    Acessa tela Authentication
    Preenche o campo email
    Clique em Create an account
    Preenche os campos de informação pessoal    José    Silva   teste@123        
    Clique em Register
    Valida mensagem Your account has been created.

CT02: Valida mensagem de email inválido
    [Documentation]     Valida mensagem de email inválido
    [Tags]              Usuario02
    Acessa tela Authentication
    Clique em Create an account
    Valida mensagem Invalid email address.

CT03: Valida mensagem de email requerido
    [Documentation]     Valida mensagem de email requerido.
    [Tags]              Usuario03
    Acessa tela Authentication
    Clique em Sign in
    Valida mensagem An email address required.

CT04: Valida mensagem de senha requerida
    [Documentation]     Valida mensagem de senha requerida
    [Tags]              Usuario04
    Acessa tela Authentication
    Preenche no login o campo email
    Clique em Sign in
    Valida mensagem Password is required.

CT05: Valida mensagem de email inválido em esqueceu senha
    [Documentation]     Valida mensagem de email inválido
    [Tags]              Usuario05
    Acessa tela Authentication
    Clique em Forgot your password
    Clique em Retrieve Password
    Valida mensagem Invalid email address.

CT06: Valida mensagem de email inexistente em esqueceu senha
    [Documentation]     Valida mensagem de email inexistente
    [Tags]              Usuario06
    Acessa tela Authentication
    Clique em Forgot your password
    Preenche o campo email do esqueceu senha    teste111@teste111.com
    Clique em Retrieve Password
    Valida mensagem There is no account registered for this email address.

CT07: Valida mensagem de email existente em esqueceu senha
    [Documentation]     Valida mensagem de email existente
    [Tags]              Usuario07
    Acessa tela Authentication
    Clique em Forgot your password
    Preenche o campo email do esqueceu senha    teste@teste.com
    Clique em Retrieve Password
    Valida mensagem A confirmation email has been sent to your address: teste@teste.com
