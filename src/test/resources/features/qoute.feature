Feature: Qoute




  Scenario: Test the shopping cart
    Given I open url "https://nop-qa.portnov.com/"
    Then I mouse over element with xpath "//li[contains(a/text(),'Computers')]"
    Then I wait for element with xpath "//a[@href='/desktops']" to be present
    Then I click on element with xpath "//a[@href='/desktops']"
    Then I click on element with xpath "//h2[@class='product-title']//a[contains(text(),'Build')]"
    Then I click on element with xpath "//select[@name='product_attribute_2']//option[@value='3']"
    Then I click on element with xpath "//input[@id='product_attribute_3_6']"
    Then I clear element with xpath "//input[@id='product_enteredQuantity_1']"
    Then I type "2" into element with xpath "//input[@id='product_enteredQuantity_1']"
    Then I click on element with xpath "//button[@id='add-to-cart-button-1']"
    Then I click on element with xpath "//span[contains(text(),'Shopping cart')]"
    #Then I click on element with xpath "//td[@class='remove-from-cart']//button"
    #OR
    Then I clear element with xpath "//input[@class='qty-input']"
    Then I type "0" into element with xpath "//input[@class='qty-input']"
    Then I click on element with xpath "//button[@id='updatecart']"
    And I wait for 5 sec






