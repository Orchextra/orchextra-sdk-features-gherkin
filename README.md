# orchextra-sdk-features-gherkin
Gherkin features for Orchetra SDK project (Android / iOS)


### Feature steps list ###

  **Login component**

        Given The login view
        Given The login with an apiKey and apiSecret
        
        When I fill the apiKey with <String>
        When I fill the apiSecretpiKey with <String>
        When I fill the apiKey with a fake apiKey
        When I fill the apiSecretpiKey with a fake apiSecret
        
        And The ApiKey field is present
        And The ApiSecrect field is present
        And The login button is present
        And I press start button
                
        Then The Orchextra logo and text is present
        Then I am at the camera screen
        Then I can't logged into the application
        Then Then I deny the location permissions
        
   **Actions**
   
        Given The app logged
        
         When The app get any action with notification title: Open Orchextra URL and body: Go to Orchextra site?
         When The app get a webview action with url https://www.orchextra.io/
         When The app get a custom scheme action with url ocm://welcome
         When The app get a notification action with notification title: Open Orchextra URL and body: Go to Orchextra site?
         When The app get a scanner action
         When The app get a nothing action
         
         Then I should see notification with title: Open Orchextra URL and body: Go to Orchextra site?
         Then I should see a webview with title: orchextra.io
         Then I should see the browser
         Then I should see the Deep link
         Then I should see the scanner
         Then I should see nothing