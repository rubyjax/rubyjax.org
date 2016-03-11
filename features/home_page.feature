Feature: Home page
  Scenario: User views home page
    Given I am on the home page
    Then I see "RubyJax"

  Scenario: User views upcoming events
    Given there are the following upcoming events:
      | name              |
      | RubyJax Open Hax |
      | Ancient City Ruby |
    And I am on the home page
    Then I see "RubyJax..."
    And I see "Ancient..."
