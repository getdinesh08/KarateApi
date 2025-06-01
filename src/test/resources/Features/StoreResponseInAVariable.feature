Feature: TO store the response of a feature in a variable



  @storeResponse
  Scenario: To verify how to store the response of a url in a variable

    Given url 'https://simple-tool-rental-api.glitch.me'
    And path '/tools'
    Then method get
    And status 200
    And def toolName = response[1].category
    Then match toolName == 'power-tools'
    And status 200


  #    384073696588b0dbe34dd9019493bb6259bf89f2b10af8c8be47ffbd0eec238c -- access token

  @CreatePostRequest
  Scenario: To create a new order to test post functionality
    Given url 'https://simple-tool-rental-api.glitch.me'
    And path '/orders'
    And header Authorization = '384073696588b0dbe34dd9019493bb6259bf89f2b10af8c8be47ffbd0eec238c'
    And request { "toolId": 4643,"customerName": "Suvarna", "comment":  "Trying API" }
    Then method post
    And status 201
    Then def toolNew = response.toolId
    And print toolNew


  @GetNewOrder
  Scenario: To get the created orders
    Given url 'https://simple-tool-rental-api.glitch.me'
    And path '/orders'
    When header Authorization = '384073696588b0dbe34dd9019493bb6259bf89f2b10af8c8be47ffbd0eec238c'
    And method get


  @matchEachResponse
  Scenario: To match each case in a response
    Given url 'https://simple-tool-rental-api.glitch.me'
    And path '/tools'
    Then method get
    And status 200
    And match each response[*] == {"id": '#number',"category": "#string", "name": "#string","inStock": '#string' }
    And match each response[*].id == '#number'


  @CallAnotherFeature
  Scenario: To call another feature here
    Given def otherFeature = call read('Variables.feature')
    And print 'name is' , otherFeature.name
#    And status 200


