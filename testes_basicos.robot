Language: pt-br

*** Configurações ***
Biblioteca   Browser    # Biblioteca para automação web

*** Casos De Teste ***
login com Dados Corretos 
    [Documentação]    Acessar página de login e inserir os dados corretos
    New Browser    headless=Falso
    New Page    url=https://the-internet.herokuapp.com/
    Wait For Elements State    //h1    visible    timeout=5 s
    Click    "Form Authentication"
    Get Text    h2    ==    Login Page
    Highlight Elements    h2
    Take Screenshot
    # preencher os campos 
    Fill Text    id=username    tomsmith 
    Fill text    imput [type="password"]    SuperSecretPassword!
    Click        button
    Sleep    5s
    Take Screenshot
    Close Browser