***Settings***
Documentation   Inicio 
Library  SikuliLibrary

Resource    actions/media_player.robot

***Keywords***

Carregar elements
    Add Image Path  ${EXECDIR}\\resources\\elements
    
Inicia a sessão 
    
    Carregar elements
    Click   logo.png

Encerrar sessão
    Stop Remote Server

Finaliza Teste
    Close Application    Media Player 