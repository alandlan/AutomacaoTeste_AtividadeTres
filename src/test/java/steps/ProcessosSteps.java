package steps;

import cucumber.api.PendingException;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;
import org.junit.Assert;
import pages.*;
import support.BaseSteps;

public class ProcessosSteps extends BaseSteps {

    private Homepage homepage = new Homepage(driver);
    private MenuImpacta menuImpacta = new MenuImpacta(driver);
    private Processos processos = new Processos(driver);
    private ListaProcesso listaProcesso = new ListaProcesso(driver);
    //private NovoUsuario novoUsuario = new NovoUsuario(driver);
    private MostrarProcesso mostrarProcesso = new MostrarProcesso(driver);

    @Dado("^que o usuário está na página inicial$")
    public void queOUsuárioEstáNaPáginaInicial() {
        homepage.open();
    }

    @E("^que o usuário clica no menu usuários$")
    public void queOUsuárioClicaNoMenuUsuários() {
        menuImpacta.clickUsers();
    }

    @E("^que o usuário clica no menu processos$")
    public void queOUsuárioClicaNoMenuProcessos() {
        menuImpacta.clickProcessos();
    }

    @E("^o usuário clica no botão Novo Processo$")
    public void oUsuárioClicaNoBotãoNovoProcesso() {
        listaProcesso.clickNewProcess();
    }

    @E("^o usuário preenche o campo \"([^\"]*)\" com o valor \"([^\"]*)\" no cadastro de processos$")
    public void oUsuárioPreencheOCampoComOValorNoCadastroDeProcessos(String campo, String valor)  {
        processos.preencherCampos(campo, valor);
    }

    @Quando("^o usuário clicar no botão salvar no cadastro de processos$")
    public void oUsuárioClicarNoBotãoSalvarNoCadastroDeProcessos() {
        processos.clicarSalvar();
    }

    @Então("^o usuário deveria ver a mensagem \"([^\"]*)\" no cadastro de processos$")
    public void oUsuárioDeveriaVerAMensagemNoCadastroDeProcessos(String message) throws Throwable {
        Assert.assertEquals(message, mostrarProcesso.getNotice());
    }

    @E("^o usuário clicar em voltar para processos$")
    public void oUsuárioClicarEmVoltarParaProcessos() {
        mostrarProcesso.clickVoltar();
    }

    @E("^o usuário clicar em mostrar processo$")
    public void oUsuárioClicarEmMostrarProcesso() {
        listaProcesso.clickShow(processos.getCode());
    }

    @Então("^o usuário deveria ver valor \"([^\"]*)\" no campo \"([^\"]*)\"$")
    public void oUsuárioDeveriaVerValorNoCampo(String valor, String campo) throws Throwable {
        String texto = mostrarProcesso.getValue(campo);

        Assert.assertEquals(texto,valor);
    }
}
