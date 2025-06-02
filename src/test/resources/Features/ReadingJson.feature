Feature: Read Json data

  @Json
  Scenario: Post Request using JSON
    Given url 'https://simple-tool-rental-api.glitch.me'
    And path '/orders'
    And header Authorization = '384073696588b0dbe34dd9019493bb6259bf89f2b10af8c8be47ffbd0eec238c'
    And def validateToolId = 4643
    And def customeNameNew = 'Gubbs'
    And request read('data.json')
    Then method post
    And status 201

  @Jsonvalidation
  Scenario: Schema Validations
    Given url 'https://simple-tool-rental-api.glitch.me'
    And path '/orders/8j7udqQ1OpONQQienyQvP'
    And header Authorization = '384073696588b0dbe34dd9019493bb6259bf89f2b10af8c8be47ffbd0eec238c'
    And method get
    Then status 200
    And match response  ==  read('validate.json')

