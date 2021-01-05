package pages;

import org.openqa.selenium.WebElement;
import support.DriverQA;

import java.util.List;

public class Processos extends BasePage {

    public Processos(DriverQA stepDriver){
        super(stepDriver);
    }

    private String id = "";

    private void preencherArbitramento(String valor){
        if(valor.toLowerCase().equals("sim")){
            driver.click("processo_arbitramento_s");
        }else{
            driver.click("processo_arbitramento_n");
        }
    }

    private  void preencherUrgente(String valor){
        driver.selectByText(valor,"processo_urgente");
    }

    private void preencherInput(String elemento, String valor){
        driver.sendKeys(valor,elemento);
    }

    public void clicarSalvar(){
        driver.click("btn-save");
        id = driver.getText("codigo");
    }

    public void preencherCampos(String campo, String valor) {


        if(campo.contains("urgente")){
            preencherUrgente(valor);
        }else if(campo.contains("arbitramento")){
            preencherArbitramento(valor);
        }else{
            preencherInput(campo,valor);
        }

    }

    public String getCode(){
        return id;
    }
}
