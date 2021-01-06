#language: pt

  Funcionalidade: CRUD do cadastro de processos

    Contexto:
      Dado que o usuário está na página inicial
      E que o usuário clica no menu processos
      E o usuário clica no botão Novo Processo
      E o usuário preenche o campo "processo_vara" com o valor "Teste Vara Insert" no cadastro de processos
      E o usuário preenche o campo "processo_numero_processo" com o valor "123" no cadastro de processos
      E o usuário preenche o campo "processo_natureza" com o valor "aaa" no cadastro de processos
      E o usuário preenche o campo "processo_partes" com o valor "asdasd" no cadastro de processos
      E o usuário preenche o campo "processo_urgente" com o valor "Sim" no cadastro de processos
      E o usuário preenche o campo "arbitramento" com o valor "sim" no cadastro de processos
      E o usuário preenche o campo "processo_assistente_social" com o valor "amnsvbd" no cadastro de processos
      E o usuário preenche o campo "processo_data_entrada" com o valor "17/12/2020" no cadastro de processos
      E o usuário preenche o campo "processo_status" com o valor "aberto" no cadastro de processos


    Cenario: Adicionar um novo processo.
      Quando o usuário clicar no botão salvar no cadastro de processos
      Então o usuário deveria ver a mensagem "Processo foi criado com sucesso." no cadastro de processos

    @wip
    Cenario: Consultar um usuário.
      E o usuário clicar no botão salvar no cadastro de processos
      E o usuário clicar em voltar para processos
      E o usuário clicar em mostrar processo
      Então o usuário deveria ver valor "Teste Vara Insert" no campo "vara"
      E o usuário deveria ver valor "123" no campo "numero"
      E o usuário deveria ver valor "aaa" no campo "natureza"
      E o usuário deveria ver valor "asdasd" no campo "partes"
      E o usuário deveria ver valor "S" no campo "urgente"
      E o usuário deveria ver valor "S" no campo "arbitramento"
      E o usuário deveria ver valor "amnsvbd" no campo "as_social"
      E o usuário deveria ver valor "2020-12-17" no campo "dt_entrada"
      E o usuário deveria ver valor "aberto" no campo "status"

    Cenario: Deletar um usuário.
      E o usuário clicar no botão salvar no cadastro de processos
      E o usuário clicar em voltar para processos
      Quando o usuário clicar no botão excluir do Processo Cadastrado
      E o usuário confirmar a exclusão
      Então o botão apagar não pode mais existir para o Processo Cadastrado

    Cenario: Editar um usuário.
      E o usuário clicar no botão salvar no cadastro de processos
      E o usuário clicar em voltar para processos
      E o usuário clicar em editar
      E o usuário preenche o campo "processo_vara" com o valor "Teste Vara Update" no cadastro de processos
      Quando o usuário clicar no botão salvar no cadastro de processos
      E o usuário deveria ver a mensagem "Processo atualizado com sucesso."