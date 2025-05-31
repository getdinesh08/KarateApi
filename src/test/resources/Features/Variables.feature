Feature: Variables feature


  Background:
    * def name = "Suvarna garu"
    * def age = 10

  @only
  Scenario: Printing some message and also variables
    Then print "my name is " + name , " age is " , age


  @only
  Scenario: Printing some message and also variables
    Given def name = "Dinesh"
    Given def age = 11
    Then print "my name is " + name , " age is " , age

