*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.veinerd.com/
${btn_pesquisar}  //*[@id="form-search"]/div/div/img
${click_prd}  //*[@id="244"]/div[2]/div[1]
${modelo}  //*[@id="inicio"]/body/div[3]/div[2]/div[2]/div[3]/div[2]/label[1]
${tipo}  //*[@id="inicio"]/body/div[3]/div[2]/div[2]/div[3]/div[4]/label[1]
${tamanho}  //*[@id="inicio"]/body/div[3]/div[2]/div[2]/div[3]/div[6]/label[5]
${btn_adicionar}  //*[@id="add-cart"]
${carrinho}  //*[@id="inicio"]/body/header/div/div[2]/a[2]/img
${exclui_prd}  //*[@id="inicio"]/body/div[3]/div/div[2]/div[1]/div/div[3]/img

*** Keywords ***
Acessar web site
    Open Browser         ${url}        chrome   
    Maximize Browser Window  

Pesquisar produto
    Click Element  locator=//*[@id="input-search"]
    Input Text  locator=//*[@id="input-search"]  text= Coffee
    Click Element   ${btn_pesquisar}
    Sleep  time_=2S 
    
Adicionar Produto no carrinho
    Click Element  locator=//*[@id="inicio"]/body/div[4]/div[2]
    Click Element  locator=${click_prd}
    Click Element  locator=${modelo} 
    Click Element  locator=${tipo}                                                       
    Click Element  locator=${tamanho}
    Wait Until Element Is Visible  locator=${btn_adicionar} 
    Click Element  locator=${btn_adicionar}            
    Sleep  time_=5S 

Ver produto no carrinho
    Wait Until Element Is Visible  ${carrinho}  
    Click Element  locator=${carrinho} 
    Sleep  time_=5S


Exclui produto
    Click Element  locator=${exclui_prd}
    Sleep  time_=5S 
    #Close Browser


*** Test Cases ***
Scenario 1:
    Acessar web site 

Scenario 2:
    Pesquisar produto 

Scenario 3:
    Adicionar produto no carrinho

Scenario 4:
    Ver produto no carrinho

Scenario 5: 
    Exclui produto   