package support;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import support.*;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import java.util.List;

import static support.TestContext.getDriver;

public class dice {


    @Then("I apply for jobs")
    public void iApplyForJobs() throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@id='email']")).sendKeys("webmactepok@gmail.com");
        getDriver().findElement(By.xpath("//input[@id='password']")).sendKeys("12345678a");
        getDriver().findElement(By.xpath("//button[contains(text(),'Sign In')]")).click();
        Thread.sleep(2000);
        getDriver().get("https://www.dice.com/job-detail/b434e309-7bf5-4a6b-bc81-a1941d98576f?searchlink=search%2F%3Fq%3DQA%2520engiineer%26location%3DWashington%2C%2520DC%2C%2520USA%26latitude%3D38.9071923%26longitude%3D-77.0368707%26countryCode%3DUS%26locationPrecision%3DCity%26adminDistrictCode%3DDC%26radius%3D100%26radiusUnit%3Dmi%26page%3D1%26pageSize%3D20%26filters.employerType%3DDirect%2520Hire%26filters.easyApply%3Dtrue%26language%3Den%26eid%3D0904&searchId=dda5c0eb-383e-4a87-831c-9cdb2ca29760");
//
//           Thread.sleep(5000);
//        List<WebElement> Jobs = getDriver().findElements(By.xpath("//h5//a"));
//        for (int i = 1; i<2; i++) {
//            Jobs.get(i).click();
//
//        }

    }
    @Then("I click EasyAPPLY1")
    public void iClickEasyAPPLY() throws InterruptedException {
//        Thread.sleep(1000);
//        new Actions(getDriver()).moveByOffset(2090, 270).click().build().perform();
                getDriver().findElement(By.xpath("//div[@id='applyButton']")).click();

        Thread.sleep(1000);

    }

    @Then("I click Next")
    public void iClickNext() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Next')]")).click();
        Thread.sleep(2000);
    }

    @Then("I click APPLYlastSTEP")
    public void iClickAPPLYlastSTEP() {

        getDriver().findElement(By.xpath("//span[contains(text(),'Apply')]")).click();
    }

    @Then("I click {string}")
    public void iClick(String URL) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@id='email']")).sendKeys("webmactepok@gmail.com");
        getDriver().findElement(By.xpath("//input[@id='password']")).sendKeys("12345678a");
        getDriver().findElement(By.xpath("//button[contains(text(),'Sign In')]")).click();
        Thread.sleep(2000);
        getDriver().get(URL);
    }
}