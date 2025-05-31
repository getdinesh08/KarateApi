Feature: To verify the variables from a response


  @ResponseVariable
  Scenario: To print the variables from a response

  Given url 'https://restful-booker.herokuapp.com'
    And path '/booking/71'
    And header Accept = '*/*'
    When method get
    Then status 200
    And print response.bookingdates.checkin
    And print response.firstname