Feature: Successful login
  As a user I want to verify the successful login behaviour

  Scenario Outline: The user verifies the successful login behaviour
    Given The login view
    When I fill the apiKey with <APIKEY>
    When I fill the apiSecretpiKey with <APISECRECT>
    And I press start button
    Then I am at the camera screen

    Examples:
      | APIKEY                                   | APISECRECT                               |
      | 34a4654b9804eab82aae05b2a5f949eb2a9f412c | 2d5bce79e3e6e9cabf6d7b040d84519197dc22f3 |
      | 7d1f4ae765162c5e57be31b77ac5b30c6df9ad7b | 44b38136103c2e3613f1068814922c62ba71bbfb |