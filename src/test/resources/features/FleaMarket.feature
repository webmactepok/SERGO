Feature: FleaMarket
  Scenario: Landing Page
    Given I visit FLEAMarket in the "qa" Environment
    Then I Verify Product Category "Mac"
    Then I Verify Cart Icon will be present
    Then I Verify IMAGE Slider will be present
    Then I Verify CONaCt Button functiolllllity
    Then I click on "" in the CATEGORy
    Then I wait for 2 sec

    Scenario Outline: EACH of CATEGORIES
      Given I visit FLEAMarket in the "qa" Environment
      Then I click on "<huiname>" in the CATEGORy
      Examples:
      | huiname |
      | Mac |
      | iPhone |
      | Watch  |
      | Accessories |



      Scenario:  ProductPAGE
        Given I visit FLEAMarket in the "qa" Environment
        Then I find product by "IPhone 12" and click it
        Then verify product description page contains "IPhone 12" (product name)
        Then I increase the Counter by "4" and Add to CART
        Then I check if ITEM was added in the cart
        Then I wait for 3 sec


        Scenario: Add to Cart functionality
          Given I visit FLEAMarket in the "qa" Environment
          Then I add to cart from landing page
          Then I wait for 3 sec
          Then I check the cart
          Then I update the quantity of the Item to "5"
          Then I wait for element with xpath "//div[contains(text(),'Cart updated.')]" to be present
          Then I verify updated Item
          Then I remove an Item and Update cart
          Then I wait for element with xpath "//div[@role='alert']" to be present

          Then I wait for 4 sec

