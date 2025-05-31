Feature: Header and path examples

#  @Only
  Scenario: use path
    Given url 'https://restful-booker.herokuapp.com'
    And path  '/booking'
    When method get
    Then status 200

  @Only
  Scenario: use Header
    Given url 'https://restful-booker.herokuapp.com'
    And path  '/booking'
    And header Accept = '*/*'
    When method get
    Then status 200