Feature: Read CSV data

  @CSV
  Scenario: Reading a CSV
   Given def csv = read('data.csv')
   And print csv



  @CreatePostRequestCSV
  Scenario: To create a new order to test post functionality
    Given url 'https://simple-tool-rental-api.glitch.me'
    And path '/orders'
    And header Authorization = '384073696588b0dbe34dd9019493bb6259bf89f2b10af8c8be47ffbd0eec238c'
    Given def csv = read('data.csv')
    And def customername = csv[0].Name
    And request { "toolId": 4643,"customerName": "#(customername)", "comment":  "Trying API" }
    Then method post
    And status 201
    Then def toolNew = response.toolId
    And print toolNew


  @CreatePostRequestCSVAdv
  Scenario Outline: To create a new order to test post functionality
    Given url 'https://simple-tool-rental-api.glitch.me'
    And path '/orders'
    And header Authorization = '384073696588b0dbe34dd9019493bb6259bf89f2b10af8c8be47ffbd0eec238c'
    And request { "toolId": 4643,"customerName": "<Name>", "comment":  "Trying API" }
    Then method post
    And status 201
    Then def toolNew = response.toolId
    And print toolNew
    Examples:
      |read('data.csv')|
