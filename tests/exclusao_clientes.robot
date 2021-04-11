***Settings***
Documentation       Exclusão de clientes

Resource            ../resources/base.robot

Suite Setup         Login Session
Suite Teardown      Finish Session

***Test Cases***
Remover Cliente
    Dado que eu tenho um cliente indesejado:
    ...     Bon Dylan   33333333333     Rua dos Bugs, 2000  21944444444
    E acesso a lista de clientes
    Quando eu removo esse cliente
    Então devo ver a notificação:   Cliente removido com sucesso!
    E esse cliente não deve aparecer na lista