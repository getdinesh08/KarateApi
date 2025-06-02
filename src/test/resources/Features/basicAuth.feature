Feature: Basic Auth

@BasicAuth
  Scenario: Assertions part1 match contains and status
    Given url 'https://suvarnakodukula.atlassian.net/rest/api/3/user?accountId=613d8601850dd00069807b0d'
    And  header Authorization = call read('auth.js') { username: 'suvarna.kodukula@gmail.com', password: 'ATATT3xFfGF06FVrJ42n-7sqUSaUS-TUP_jhUUmwmWA8xrkbsO6_R9jf-986hfbYx96uoNcgPDh9swqWhJkfZJhlltQQScFTVGsbrQp78Fg1a1ZMzeXTUEwfgRa7ucGLjT_1MSxpBbVbnMft4-Gf2WE8pyBBiYuGmJD9NVWQbmexKwW4Y2S1DNY=EBB5CAC4' }
    When method get
    Then status 200





















