Feature: Unsuccessful Login
  As a user I want to verify the unsuccessful login behaviour


  Scenario: The user verifies the unsuccessful login behaviour with a fake apikey
    Given The login view
    When I fill the apiKey with a fake apiKey
    When I fill the apiSecretpiKey with a fake apiSecret
    And I press start button
    Then I can't logged into the application

  Scenario: The user verifies the unsuccessful login behaviour and deny the location permissions
    Given The login with an apiKey and apiSecret
    Then Then I deny the location permissions
    And I press start button
    Then I can't logged into the aplication