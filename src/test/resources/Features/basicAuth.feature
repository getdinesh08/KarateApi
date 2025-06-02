Feature: Basic Auth

@BasicAuth
  Scenario: Assertions part1 match contains and status
    Given url 'https://suvarnakodukula.atlassian.net/rest/api/3/user?accountId="id"
    And  header Authorization = call read('auth.js') { username: 'username', password: "use your token" }
    When method get
    Then status 200





















