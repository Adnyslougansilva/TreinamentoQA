***Settings***
Library       SikuliLibrary

***Keywords***


Abrir playlist 
    
    Sleep  time_=3S 
    Click    btn_home.png
    Sleep  time_=3S 
    Click    playlist.png
    Click    btn_playlist.png 

Renomear playlist
    [Arguments]  ${rename_novo}
    Click    rename.png 
    Input Text    image=rename.png  text=${rename_novo}
    click    bt_rename.png

Pesquisar artista
    [Arguments]   ${hungria}
    Sleep  time_=3S 
    Click   click_pesquisa.png
    Input Text   image=pesquisar.png  text=${hungria}
    Press Special Key       ENTER

Clicar musica
    Click    musica.png 

Clicar album
    Click    bt_album.png
    Click    seleciona_album.png

Tocar todas as musicas
    Click    tocar_todas.png