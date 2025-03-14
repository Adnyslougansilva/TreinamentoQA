*** Settings ***
Documentation      Suite de teste Media player Windows
Resource           ../resources/base.robot    

Suite Setup       Inicia a sessão
Suite Teardown    Encerrar sessão
        
*** Test Cases ***

Test1: Como usuario quero renomear uma playlist para deixar atualizada
    
    Abrir playlist
    Renomear playlist    HUNGRIA 2025
       
Test2: Como usuario quero tocar todas as musicas para adicionar as melhores em uma playlist caso desejar.

    Pesquisar artista     hungria
    Clicar musica
    Clicar album
    Tocar todas as musicas   
    
    [Teardown]    Finaliza Teste