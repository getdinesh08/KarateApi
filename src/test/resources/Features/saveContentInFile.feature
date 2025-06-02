Feature: Assertions


  @karateWrite
  Scenario: Save in a txt file
    Given url 'https://restful-booker.herokuapp.com/booking'
    When method get
    And karate.write(response,'something.txt')
    Then status 200
