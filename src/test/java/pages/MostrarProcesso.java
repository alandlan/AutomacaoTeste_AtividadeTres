package pages;

import support.DriverQA;

public class MostrarProcesso extends BasePage{
    public MostrarProcesso(DriverQA stepDriver) {
        super(stepDriver);
    }

    public String getNotice() {
        return driver.getText("notice");
    }

    public void clickVoltar() {
        driver.click(".ls-btn-primary-danger","css");
    }

    public String getValue(String campo) {
        return driver.getText(campo);
    }
}
