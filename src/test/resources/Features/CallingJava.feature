Feature: Callig java file


  @Java
  Scenario: Static method
    * def DemoClass = Java.type('Demo')
    * def result = DemoClass.staticmathod(1, 2)
    * print result
    * assert result == 3


  @Java
  Scenario: Non static method
    * def demoInstance = Java.type('Demo').class.newInstance()
    * def result = demoInstance.mathod(2, 3)
    * print result
    * assert result == 5