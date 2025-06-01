Feature: To verify the schema validations in Karate

  @postMultiLines
  Scenario: Post request in multiple lines of body
    Given url 'https://simple-tool-rental-api.glitch.me'
    And path '/orders'
    And header Authorization = '384073696588b0dbe34dd9019493bb6259bf89f2b10af8c8be47ffbd0eec238c'
    And request
      """
      {
        "toolId": 4643,
        "customerName": "Suvarna",
        "comment":  "Trying API"
      }
      """
    Then method post
    And status 201
    Then def toolNew = response.toolId
    And print toolNew

  @validatePostEmbedded
  Scenario: Post Request using Embedded Expressions
    Given url 'https://simple-tool-rental-api.glitch.me'
    And path '/orders'
    And header Authorization = '384073696588b0dbe34dd9019493bb6259bf89f2b10af8c8be47ffbd0eec238c'
    And def validateToolId = 4643
    And def customeNameNew = 'Gubbs'
    And request
      """
      {
        "toolId": '#(validateToolId)',
        "customerName": '#(customeNameNew)'
      }
      """
    Then method post
    And status 201


  @SchemaValidations
  Scenario: Schema Validations
    Given url 'https://simple-tool-rental-api.glitch.me'
    And path '/orders/8j7udqQ1OpONQQienyQvP'
    And header Authorization = '384073696588b0dbe34dd9019493bb6259bf89f2b10af8c8be47ffbd0eec238c'
    And def schemaVariable =
      """
      {
        "id": "#string",
        "toolId": '#number',
        "customerName": '#string',
        "createdBy": '#string',
        "quantity": '#number',
        "created": '#string',
        "timestamp": '#number',
        "processed": '#boolean',
        "comment": '#string'
      }
      """
    And method get
    Then match response ==
      """
      '#(schemaVariable)'
      """
    And status 200



