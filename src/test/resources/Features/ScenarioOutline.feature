Feature: Verifying the Scenario Outline functionality

  @scenarioOutline
  Scenario Outline: To verify how scenario outline works

    Given url '<url>'
    When method get
    Then status 200




    Examples:
      | url                                                                                                                   |
      | https://restful-booker.herokuapp.com/booking                                                                          |
      | https://api.openweathermap.org/data/2.5/weather?lat=40.7127281&lon=-74.0060152&appid=a655574116ed3bb4f47a580d5112c6fb |
      | https://api.openweathermap.org/geo/1.0/direct?q=New%20York,NY,US&limit=1&appid=a655574116ed3bb4f47a580d5112c6fb       |
