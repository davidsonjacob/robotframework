Documentation       Resource Produtos


*** Keywords ***
Pesquisa produto
    [Documentation]             Pesquisa pelo produto
    [Arguments]                 ${PRODUTO}
    Type Text                   xpath=//input[@id='search_query_top']       ${PRODUTO}
    Click                       xpath=//button[@name='submit_search']
    Wait For Elements State     text=search >> text=${PRODUTO}
