@predefined
Feature: Smoke steps

  @predefined1
  @regression
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then I type "Cucumber" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    # Then I wait for 2 sec
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then I should see page title contains "Cucumber - Поиск в Google"
    Then I take screenshot
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"



  Scenario: Calculator addition test
    Given I open url "https://www.calculator.net/"
    Then I click on element with xpath "//span[contains(text(), '2')]"
    Then I click on element with xpath "(//span[contains(text(), '+')])[1]"
    Then I click on element with xpath "//span[contains(text(), '2')]"
    Then I click on element with xpath "//span[contains(text(), '=')]"
    Then element with xpath "//div[@id='sciOutPut']" should contain text "4"
    Then I wait for 2 sec

  Scenario: Calculator responsive test
    Given I open url "https://www.calculator.net/"
    Then element with xpath "//div[@id='homefunbtn']" should be displayed
    Then I resize window to 700 and 400
    Then element with xpath "//div[@id='homefunbtn']" should not be displayed
    Then I wait for 2 sec

  Scenario: Recruit login test
    Given I open url "http://recruit-qa.portnov.com/"
    Then I click on element with xpath "//button[contains(text(), 'Login')]"
    Then element with xpath "//span[contains(text(), 'Login')]" should be displayed
    Then I type "student@example.com" into element with xpath "//input[@placeholder='Please enter an Email']"
    Then I type "welcome" into element with xpath "//input[@placeholder='Please enter a Password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//span[contains(text(), 'Careers')]/..//div/div/span/a" to be present
    Then element with xpath "//span[contains(text(), 'Careers')]/..//div/div/span/a" should contain text "Student"

  Scenario: Check search function HUINEA
    Given I open url "https://www.gsmarena.com/"
    Then I type "Iphone 15" into element with xpath "//input[@id='Search']"
    Then I wait for element with xpath "//input[@placeholder='Search']" to be present
    Then I click on element with xpath "//input[@value='Go']"

  Scenario: Check search function Home
    Given I open url "https://www.gsmarena.com/"
    Then I type "Iphone 15" into element with xpath "//input[@placeholder='Search']"
    Then I press enter
    Then I wait for 2 sec

  Scenario: Check search function of Youtube
    Given I open url "https://www.youtube.com/"
    Then I type "Battal seyhan" into element with xpath "//input[@id='search']"
    Then I click on element with xpath "//button[@id='search-icon-legacy']"
    Then I wait for element with xpath "//yt-formatted-string[contains(text(),'Каналы')]" to be present
    Then I click on element with xpath "//yt-formatted-string[contains(text(),'Каналы')]"
    Then I wait for element with xpath "//yt-formatted-string[contains(text(),'@battalseyhan6924']" to be present
    Then I click on element with xpath "//yt-formatted-string[contains(text(),'Battal seyhan')]"
    Then I wait for 20 sec

    Scenario: Golden Coin ebay
      Given I open url "https://www.ebay.com"
      Then I type "Golden coin" into element with xpath "//input[@aria-label='Search for anything']"
      Then I click on element with xpath "//input[@value='Search']"
      Then I type "5000" into element with xpath "//input[@aria-label='Minimum Value in $']"
      Then I type "5500" into element with xpath "//input[@aria-label='Maximum Value in $']"
      Then I click on element with xpath "//button[@aria-label='Submit price range']"
      Then I wait for 13 sec

  Scenario: Check for price on appts
    Given I open url "https://seattle.craigslist.org/"
    Then I type "appartment" into element with xpath "//input[@placeholder='search craigslist']"
    Then I press enter
    Then I wait for element with xpath "//button[span[contains(text(),'price')]]" to be present
    Then I click on element with xpath "//button[span[contains(text(),'price')]]"
    Then I type "200" into element with xpath "//input[@placeholder='min']"
    Then I type "2200" into element with xpath "//input[@placeholder='max']"
    Then I click on element with xpath "//button[contains(text(),'apply')]"
    Then I wait for 4 sec

  Scenario: Bing search engine
    Given I open url "https://www.bing.com/"
    Then I should see page title as "Bing"
    Then I type "Cucumber" into element with xpath "//textarea[@id='sb_form_q']"
#    Then I click on element using JavaScript with xpath "//label[@for='sb_form_go']/*/*"
    Then I press enter for element with xpath "//textarea[@id='sb_form_q']"
    Then I wait for element with xpath "//ol[@id='b_results']" to be present
    Then I should see page title contains "Search"
    Then element with xpath "//ol[@id='b_results']" should contain text "Cucumber"

  Scenario: GIBIRU search engine
    Given I open url "https://gibiru.com/"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then I type "Cucumber" into element with xpath "//input[@name='q']"
#    Then I click on element using JavaScript with xpath "//label[@for='sb_form_go']/*/*"
    Then I press enter for element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@id='___gcse_0']" to be present
    Then I should see page title contains "Results"
    Then element with xpath "//div[@id='___gcse_0']" should contain text "Cucumber"

  Scenario: Yandex search engine
    Given I open url "https://yandex.com"
    Then I should see page title contains "Яндекс"
    Then I type "Cucumber" into element with xpath "//input[@id='text']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 12 sec
    Then I should see page title contains "Cucumber"
    Then I wait for 2 sec

  Scenario: Ask.com search engine test
    Given I open url "https://www.ask.com/"
    Then I should see page title contains "Ask.com - What's Your Question?"
    Then I type "Cucumber" into element with xpath "//input[@class='form-control mr-sm-1 search-box']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I should see page title contains "Cucumber"
    Then I wait for 3 sec

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
    Then I wait for element with xpath "//td[@class='unit-price' and contains(span[@class='product-unit-price'],'$1,315.00')]" to be present
    Then element with xpath "//*[contains(text(), 'Build your own computer')]//../..//span[@class='product-subtotal']" should contain text "$2,630.00"
    Then element with xpath "//tr[@class='order-total']/td/span/strong" should contain text "$2,630.00"
    And I wait for 5 sec


  Scenario: Searching for a Cartier Love Bracelet
    Given I open url "https://www.cartier.com/"
    Then I click on element with xpath "//div[@class='site-search']"
    Then element with xpath "//input[@type='search']" should be displayed
    Then I type "Love Bracelet" into element with xpath "//input[@type='search']"
    Then I click on element with xpath "//form[@role='search']//button"
    Then I should see page title contains "Love Bracelet"
    Then element with xpath "//*[@id='product-search-results']" should contain text "Love Bracelet"
    Then I wait for 3 sec




