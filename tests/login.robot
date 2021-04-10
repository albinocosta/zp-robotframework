***Settings***
Documentation       Login

Resource        ../resources/base.robot

# executa uma ou mais keywords antes da execução dos steps de cada caso de teste
Test Setup      Start Session

# executa uma ou mais keywords apos a execução de todos os steps de cada caso de teste
Test Teardown       Finish Session

***Test Cases***
Login do Administrador    
    Acesso a página Login
    Submeto minhas credenciais  admin@zepalheta.com.br  pwd123
    Devo ver a área logada