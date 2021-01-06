package pages;

import org.openqa.selenium.By;
import support.DriverQA;

public class ListaProcesso extends BasePage {
    public ListaProcesso(DriverQA stepDriver){
        super(stepDriver);
    }

    public void clickNewProcess () {
        driver.click("btn-novo");
    }

    public void clickShow(String code) {
        driver.click("btn-show_"+code);
    }

    public void clickDelete(String code) {
        driver.click(("btn-delete_"+code));
    }

    public void deleteConfirm() {
        driver.ChooseOkOnNextConfirmation();
    }

    public void clickEditar(String code){
        driver.click("btn-edit_"+code);
    }

    public boolean existDeleteButton(String code) {
        boolean res = true;
        try{
            res = DriverQA.getDriver().findElement(By.id("btn-delete_"+code)).isDisplayed();
        }catch (Exception ex){
            res = false;
        }

        return res;
        //Thread.sleep(1000);
        //return DriverQA.getDriver().getPageSource().contains("btn-delete_"+code);
    }
}
