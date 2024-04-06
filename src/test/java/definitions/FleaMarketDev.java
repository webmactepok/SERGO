package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.ro.Dațifiind;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.UnhandledAlertException;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;

import support.TestContext.*;

import java.util.List;

import static support.TestContext.getDriver;

public class FleaMarketDev {
    @Given("I visit FLEAMarket in the {string} Environment")
    public void iVisitFLEAMarketInTheEnvironment(String nameEnvironment) {
        String url;
        if (nameEnvironment.equals("stage")) {
            url = "https://store-stage.portnov.com";
            getDriver().get(url);
        } else if (nameEnvironment.equals("qa")) {
            url = "https://store-qa.portnov.com";
            getDriver().get(url);
        } else System.out.println("No such URL");
    }

    @Then("I Verify Product Category {string}")
    public void iVerifyProductCategory(String nameOfCategory) {
        String Xpath = "//div[@class='primary-navigation']//a[contains(text(),'" + nameOfCategory + "')]";
        //div[@class='primary-navigation']//a[contains(text(),'Mac')]
        WebElement Iliment = getDriver().findElement(By.xpath(Xpath));
        assertThat(Iliment.isDisplayed()).isTrue();

    }

    @Then("I Verify Cart Icon will be present")
    public void iVerifyCartIconWillBePresent() {
        WebElement cartIcon = getDriver().findElement(By.xpath("//a[@class='cart-contents']"));
        assertThat(cartIcon.isDisplayed()).isTrue();
    }

    @Then("I Verify IMAGE Slider will be present")
    public void iVerifyIMAGESliderWillBePresent() {
        WebElement slider = getDriver().findElement(By.xpath("//section[@class='section_banner']"));
        assertThat(slider.isDisplayed()).isTrue();
    }


    @Then("I Verify CONaCt Button functiolllllity")
    public void iVerifyCONaCtButtonFunctiolllllity() {
        WebElement conTactButtoN = getDriver().findElement(By.xpath("//div[@class='i-trigger one-widget']"));
        assertThat(conTactButtoN.isDisplayed()).isTrue();
    }

    @Then("I click on {string} in the CATEGORy")
    public void iClickOnInTheCATEGORy(String NameINcategory) {
        String Xpath = "//div[@class='primary-navigation']//a[contains(text(),'" + NameINcategory + "')]";
        //div[@class='primary-navigation']//a[contains(text(),'Mac')]
        WebElement Iliment = getDriver().findElement(By.xpath(Xpath));
        Iliment.click();
    }

    @Then("I find product by {string} and click it")
    public void iFindProductByAndClickIt(String FindbyName) {
        String Xpath = "//h2[contains(text(),'" + FindbyName + "')]";
        WebElement product = getDriver().findElement(By.xpath(Xpath));
        product.click();
    }

    @Then("verify product description page contains {string} \\(product name)")
    public void verifyProductDescriptionPageContainsProductName(String ProductName) {
        WebElement ProductID = getDriver().findElement(By.xpath("//h1[contains(text(),'" + ProductName + "')]"));
        assertThat(ProductID.getText()).isEqualTo(ProductName);
    }

    @Then("I increase the Counter by {string} and Add to CART")
    public void iIncreaseTheCounterByAndAddToCART(String AddtoCart) {
        WebElement CartNumber = getDriver().findElement(By.xpath("//input[@type='number']"));
        CartNumber.clear();
        CartNumber.sendKeys(AddtoCart);
    }

    @Then("I check if ITEM was added in the cart")
    public void iCheckIfITEMWasAddedInTheCart() {
        try {
            getDriver().findElement(By.xpath("//button[contains(text(),'Add to cart')]")).click();
            WebElement Alert = getDriver().findElement(By.xpath("//div[@role='alert']"));
            assertThat(Alert.getText()).contains("added to your cart");
        } catch (NoSuchElementException | UnhandledAlertException e){
            System.out.println("Eror");
        }

    }

    @Then("I add to cart from landing page")
    public void iAddToCartFromLandingPage() {
        List<WebElement> elements = getDriver().findElements(By.xpath("//a[contains(text(),'Add to cart')]"));
        for (int i=0; i<elements.size();i++) {
            elements.get(i).click();
        }
    }

    @Then("I check the cart")
    public void iCheckTheCart() {
        getDriver().findElement(By.xpath("//a[@class='cart-contents']")).click();
    }


    @Then("I update the quantity of the Item to {string}")
    public void iUpdateTheQuantityOfTheItemTo(String ITEMquantity) {
        WebElement ItemNumber = getDriver().findElement(By.xpath("//input[@name='cart[66f041e16a60928b05a7e228a89c3799][qty]']"));
        ItemNumber.clear();
        ItemNumber.sendKeys(ITEMquantity);
        getDriver().findElement(By.xpath("//button[contains(text(),'Update cart')]")).click();

    }

    @Then("I verify updated Item")
    public void iVerifyUpdatedItem() {
       WebElement Alert = getDriver().findElement(By.xpath("//div[contains(text(),'Cart updated.')]"));
       assertThat(Alert.isDisplayed()).isTrue();
    }


    @Then("I remove an Item and Update cart")
    public void iRemoveAnItemAndUpdateCart() throws InterruptedException {
        getDriver().findElement(By.xpath("//a[@data-product_id='58']")).click();
        Thread.sleep(2500);
        WebElement Alert = getDriver().findElement(By.xpath("//div[@role='alert']"));
        assertThat(Alert.getText()).contains("removed");

    }
}






