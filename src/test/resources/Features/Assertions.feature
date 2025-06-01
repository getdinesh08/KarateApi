Feature: Assertions

    @Assert
  Scenario: Assertions part1 match contains and status
    Given url 'https://restful-booker.herokuapp.com'
    And path  '/booking/249'
    And header Accept = '*/*'
    When method get
    Then status 200
    And match response.lastname contains 'Allen'
    And match response.lastname !contains 'dd'
#


