package stepdefinitions;

import io.cucumber.java.en.*;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import pages.DemoqaPage;
import utilities.Driver;

import java.time.Duration;

public class DemoqaStepdefinitions {
    DemoqaPage demoqaPage = new DemoqaPage();

    @Then("soldaki sekmelerden Alerts'e tiklar")
    public void soldaki_sekmelerden_alerts_e_tiklar() {
        demoqaPage.alertSekmesi.click();

    }
    @When("On button click, alert will appear after {int} seconds karsisindaki click me butonuna basar")
    public void on_button_click_alert_will_appear_after_seconds_karsisindaki_click_me_butonuna_basar(Integer int1) {
        demoqaPage.timerAlertButton.click();

    }
    @When("Allert'in gorunur olmasini bekler")
    public void allert_in_gorunur_olmasini_bekler() {

        // 1.adim wait objesi olusturmak
        WebDriverWait wait = new WebDriverWait(Driver.getDriver(), Duration.ofSeconds(10));
        // 2. adim mumkunse wait icin kullanacigimiz WebElementi locate edip kaydedin
        //         biz alert'İ bekleyecegimiz icin locate edecek bir sey yok

        // 3.adim expectedConditions kullanarak wait objesini bekletin
        wait.until(ExpectedConditions.alertIsPresent());

    }
    @Then("Allert uzerindeki yazinin {string} oldugunu test eder")
    public void allert_uzerindeki_yazinin_oldugunu_test_eder(String expectedAlertYazi) {

        String actualAlertYazi = Driver.getDriver()
                                        .switchTo()
                                        .alert()
                                        .getText();

        Assertions.assertEquals(expectedAlertYazi, actualAlertYazi);
    }
    @Then("Ok diyerek alerti kapatir")
    public void ok_diyerek_alerti_kapatir() {
        Driver.getDriver().switchTo().alert().accept();

    }
}
