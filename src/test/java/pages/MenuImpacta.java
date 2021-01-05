package pages;

import support.DriverQA;

public class MenuImpacta extends BasePage {
    public MenuImpacta(DriverQA stepDriver){
        super(stepDriver);
    }

    public void clickUsers(){
        driver.click("users");
    }

    public void clickProcessos() {
        driver.click("processos");
    }
}
