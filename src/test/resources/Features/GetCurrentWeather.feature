Feature: Verify the Current Weather

  @only
  Scenario: Verify the Weather data of London
    Given url 'https://api.openweathermap.org/data/2.5/weather?lat=40.7127281&lon=-74.0060152&appid=a655574116ed3bb4f47a580d5112c6fb'
    When method get
    Then status 200