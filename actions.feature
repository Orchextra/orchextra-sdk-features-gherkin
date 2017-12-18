Feature: Orchextra can execute actions
    Actions currently supported:
      1. Open URL/Promo (webview or browser)
      2. Deep Link/Open content
      3. Show notification
      4. Open qr/barcode scanner
      5. Open image recognition
      6. Do nothing
    Actions 1, 2, 4 and 5 can have notification with title and body
    Actions can be scheduled

    Scenario: The app get a action with notification and i should see it
        Given The app logged in ANDROID SDK project
        When The app get any action with notification title: Open Orchextra URL and body: Go to Orchextra site?
        Then I should see notification with title: Open Orchextra URL and body: Go to Orchextra site?

    Scenario: The app get a open url in webview action and i should see the content in a webview
        Given The app logged in ANDROID SDK project
        When The app get a webview action with url https://www.orchextra.io/
        Then I should see a webview with title: orchextra.io

    Scenario: The app get a open url in browser action and i the browser should be launched
        Given The app logged in ANDROID SDK project
        When The app get a browser action with url https://www.orchextra.io/
        Then I should see the browser

    Scenario: The app get a open content action and i should see the Deep link
        Given The app logged in ANDROID SDK project
        When The app get a custom scheme action with url ocm://welcome
        Then I should see the Deep link

    Scenario: The app get a notification action and i should see it
        Given The app logged in ANDROID SDK project
        When The app get a notification action with notification title: Open Orchextra URL and body: Go to Orchextra site?
        Then I should see notification with title: Open Orchextra URL and body: Go to Orchextra site?

    Scenario: The app get a open scanner action and the scanner should be open
        Given The app logged in ANDROID SDK project
        When The app get a scanner action
        Then I should see the scanner

    Scenario: The app get a do nothing action and i should see nothing
        Given The app logged in ANDROID SDK project
        When The app get a nothing action
        Then I should see nothing
