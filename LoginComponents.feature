Feature: Login componentes
    As a user I want to verify the components from the login view

    Scenario: The user verifies the components from the login view
        Given The login view
        Then The Orchextra logo and text is present
        And The ApiKey field is present
        And The ApiSecrect field is present
        And The login button is present