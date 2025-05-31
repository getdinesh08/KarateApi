Feature: Get the Latitude longitude


  @only
Scenario: Get the Latitude longitude
  Given url 'https://api.openweathermap.org/geo/1.0/direct?q=New%20York,NY,US&limit=1&appid=a655574116ed3bb4f47a580d5112c6fb'
  When method get
  Then status 200