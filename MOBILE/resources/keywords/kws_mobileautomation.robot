*** Settings ***
Documentation        Aqui estarão presentes todas as keywords dos testes Mobile.
Resource             ../../package_mobile.robot

*** Keywords ***
Dado que o cliente esteja na tela de Home​
    Wait Until Element Is Visible        xpath=//*[contains(@text, 'Início')]
    Wait Until Element Is Visible        accessibility_id=YouTube

E pesquise um vídeo sobre "${PESQUISA}"​
    Click Element                        accessibility_id=Pesquisar
    Input Text                           id=search_edit_text            ${PESQUISA}
    Press Keycode                        66

E acessar o canal da Prime​
    Wait Until Element Is Visible        xpath=//android.view.ViewGroup[contains(@content-desc,"Prime Experts - Parceria entre Prime Control e UniBrasil ")]
    Click Element                        xpath=//android.view.ViewGroup[contains(@content-desc,"Prime Experts - Parceria entre Prime Control e UniBrasil ")]

    FOR    ${counter}    IN RANGE    0    2
        ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    accessibility_id=Fechar    5
        IF    ${status}
              Click Element    accessibility_id=Fechar
              sleep  2
        END 
        
    END
    

Quando clicar em Inscrever-se​
    Click Element                        accessibility_id=Inscreva-se em Prime Control.
    Click Element                        accessibility_id=Inscreva-se em Prime Control.

Então será apresentado como Inscrito​
    Wait Until Element Is Visible        accessibility_id=Cancelar inscrição de Prime Control.
