#language: pt

  Funcionalidade: CRUD do cadastro de processo

    Contexto:
      Dado que o usuário está na página inicial
      E que o usuário clica no menu processos
      E o usuário clica no botão Novo Processo
      E o usuário preenche o campo "processo_vara" com o valor "Criminal" no cadastro de processos
      E o usuário preenche o campo "processo_numero_processo" com o valor "123" no cadastro de processos
      E o usuário preenche o campo "processo_natureza" com o valor "Criminal" no cadastro de processos
      E o usuário preenche o campo "processo_partes" com o valor "AlanXAnderson" no cadastro de processos
      E o usuário preenche o campo "processo_urgente" com o valor "Sim" no cadastro de processos
      E o usuário preenche o campo "arbitramento" com o valor "sim" no cadastro de processos
      E o usuário preenche o campo "processo_assistente_social" com o valor "Robson" no cadastro de processos
      E o usuário preenche o campo "processo_data_entrada" com o valor "17/12/2020" no cadastro de processos
      E o usuário preenche o campo "processo_data_saida" com o valor "10/01/2021" no cadastro de processos
      E o usuário preenche o campo "processo_data_agendamento" com o valor "09/01/2021" no cadastro de processos
      E o usuário preenche o campo "processo_status" com o valor "Aberto" no cadastro de processos
      E o usuário preenche o campo "processo_observacao" com o valor "Fechamento de Materia" no cadastro de processos

    @wip
    Cenario: Adicionar um novo processo.
      Quando o usuário clicar no botão salvar no cadastro de processos
      Então o usuário deveria ver a mensagem "Processo foi criado com sucesso." no cadastro de processos

    @wip
    Cenario: Consultar um usuário.
      E o usuário clicar no botão salvar no cadastro de processos
      E o usuário clicar em voltar para processos
      E o usuário clicar em mostrar processo
      Então o usuário deveria ver valor "Criminal" no campo "vara"
      E o usuário deveria ver valor "123" no campo "numero"
      E o usuário deveria ver valor "Criminal" no campo "natureza"
      E o usuário deveria ver valor "AlanXAnderson" no campo "partes"
      E o usuário deveria ver valor "S" no campo "urgente"
      E o usuário deveria ver valor "S" no campo "arbitramento"
      E o usuário deveria ver valor "Robson" no campo "as_social"
      E o usuário deveria ver valor "2020-12-17" no campo "dt_entrada"
      E o usuário deveria ver valor "2021-01-10" no campo "dt_saida"
      E o usuário deveria ver valor "2021-01-09" no campo "dt_agendamento"
      E o usuário deveria ver valor "Aberto" no campo "status"
      E o usuário deveria ver valor "Fechamento de Materia" no campo "observacao"

    @wip
    Cenario: Deletar um Processo.
      E o usuário clicar no botão salvar no cadastro de processos
      E o usuário clicar em voltar para processos
      Quando o usuário clicar no botão excluir do Processo Cadastrado
      E o usuário confirmar a exclusão
      Então o botão apagar não pode mais existir para o Processo Cadastrado

    @wip
    Cenario: Editar um processo.
      E o usuário clicar no botão salvar no cadastro de processos
      E o usuário clicar em voltar para processos
      E o usuário clicar em editar
      E o usuário preenche o campo "processo_vara" com o valor "Penal" no cadastro de processos
      Quando o usuário clicar no botão salvar no cadastro de processos
      E o usuário deveria ver a mensagem "Processo atualizado com sucesso."

    @wip
    Esquema do Cenario: Editar um processo com esquema de cenario.
      E o usuário clicar no botão salvar no cadastro de processos
      E o usuário clicar em voltar para processos
      E o usuário clicar em editar
      E o usuário preenche o campo "<campoEditar>" com o valor "<valor>" no cadastro de processos
      E o usuário clicar no botão salvar no cadastro de processos
      E o usuário clicar em voltar para processos
      E o usuário clicar em mostrar processo
      Então o usuário deveria ver valor "<valor>" no campo "<campoMostrar>"
      Exemplos:
        | campoEditar   | valor              | campoMostrar |
        | processo_vara | Vara Cenario | vara         |
        | processo_numero_processo | 1234 | numero         |

