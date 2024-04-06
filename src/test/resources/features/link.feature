Feature:
  Scenario: Linkedin
    Given I open url "https://www.linkedin.com"
    Then I type "webmactepok@gmail.com" into element with xpath "//input[@id='session_key']"
    Then I type "060204aA" into element with xpath "//input[@id='session_password']"
    Then I wait for element with xpath "//button[contains(text(),'Войти')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Войти')]"
    Then I open url "https://shorturl.at/ino79"
    Then I click on element with xpath "//ul[@role='list']/li[3]"
    Then I wait for 3 sec
    Then I click on element using JavaScript with xpath "//button[@class='artdeco-button artdeco-button--2 artdeco-button--primary ember-view pvs-profile-actions__action']"
    
    Then I click on element with xpath "//button[@aria-label='Attach a file']"

    Then I wait for 3 sec

