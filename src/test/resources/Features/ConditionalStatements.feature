Feature: Conditional statements


  @CS
  Scenario: Assertions part1 match contains and status
    Given url 'https://simple-tool-rental-api.glitch.me'
    And path  '/tools'
    And header Accept = '*/*'
    When method get
    And def data = []
    And  eval for (var i=0;i<response.length;i++) if (response[i].category=='power-tools')  data.push(response[i].name)
    Then status 200
    * eval for (var i = 0; i < data.length; i++) { print(data[i]); }
