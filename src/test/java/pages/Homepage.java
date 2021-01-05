package pages;

import support.DriverQA;

public class Homepage extends BasePage {

    private String url = "http://agapito-server.herokuapp.com/";

    public Homepage(DriverQA stepDriver){ super(stepDriver);}

    public void open(){
        driver.openURL(url);
    }
}
