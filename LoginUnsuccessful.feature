Feature: Unsuccessful Login
  As a user I want to verify the unsuccessful login behaviour

  Scenario: The user verifies the unsuccessful login behaviour with a fake apikey
    Given The login view
    When I fill "apiKey" with "fake_apiKey"
    When I fill "apiSecretpiKey" with "fake_apiSecret"
    And I press start button
    Then I should see login error
