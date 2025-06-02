Feature: Basic Auth

@BasicAuth
  Scenario: Assertions part1 match contains and status
    Given url 'https://suvarnakodukula.atlassian.net/rest/api/3/user?accountId=613d8601850dd00069807b0d'
    And  header Authorization = call read('auth.js') { username: 'suvarna.kodukula@gmail.com', password: "use your token" }
    When method get
    Then status 200





















