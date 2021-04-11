***Settings***
Documentation       Cadastro de clientes

Resource            ../resources/base.robot

# executa uma ou mais keywords antes da execução dos steps de cada caso de teste
Test Setup          Login Session

# executa uma ou mais keywords apos a execução de todos os steps de cada caso de teste
Test Teardown       Finish Session

***Test Cases***
Novos cliente
    Dado que acesso o formulário de cadastro de clientes
    Quando faço a inclusão desse cliente:
    ...         Bon Jovi        00000001406     Rua dos Bugs, 1000      11999999999
    Então devo ver a notificação:   Cliente cadastrado com sucesso!

Campos Obrigatórios
    [Tags]      temp
    Dado que acesso o formulário de cadastro de clientes
    Quando faço a inclusão desse cliente:
    ...         ${EMPTY}        ${EMPTY}        ${EMPTY}                ${EMPTY}
    Então devo ver mensagens informando que os campos do cadastro de clientes são obrigatórios