Feature: Assertions

#    @Assert
  Scenario: Assertions part1 match contains and status
    Given url 'https://restful-booker.herokuapp.com'
    And path  '/booking/249'
    And header Accept = '*/*'
    When method get
    Then status 200
    And match response.lastname contains 'Allen'
    And match response.lastname !contains 'dd'
#

# data type check, == , header check, deep, each kind of looping

#  @Assert
  Scenario: Verify the Weather data of London
    Given url 'https://api.openweathermap.org/data/2.5/weather?lat=40.7127281&lon=-74.0060152&appid=a655574116ed3bb4f47a580d5112c6fb'
    When method get
    Then status 200
    And match response.weather[0].main  == '#string'
    And match response.weather[0].main  == 'Clouds'
    And match response.weather[0].main  contains 'loud'
    And match header Content-Type == 'application/json; charset=utf-8'
    And match header Content-Type contains 'charset=utf-8'
    And match response  contains deep {"main":{"pressure":1002}}
    And match response.main  contains deep {"pressure":1002}
#     And match response.main.pressure  contains deep 1002   dont use this because only use jsons check if wanna use this use == instead of deep

  @Assert
  Scenario: Get all tools
    Given url 'https://simple-tool-rental-api.glitch.me'
    And path '/tools'
    When method get
    Then status 200
#    And match each response[*].category contains ["plumbing","power-tools","ladders","electric-generators","power-tools","power-tools","power-tools","power-tools","ladders","ladders","ladders","trailers","plumbing","plumbing","plumbing","trailers","trailers","electric-generators","electric-generators","electric-generators"]
    And match response[*].category contains ["plumbing","power-tools","ladders","electric-generators","power-tools","power-tools","power-tools","power-tools","ladders","ladders","ladders","trailers","plumbing","plumbing","plumbing","trailers","trailers","electric-generators","electric-generators","electric-generators"]