Feature: Centralized KMP Masterclass Configuration
  As a developer
  I want to centralize the KMP Masterclass dates in a configuration file
  So that I can easily update them without modifying the UI component

  Scenario: Extract KMP dates to a configuration file
    Given a configuration file for the portfolio data
    When the application loads the KMP Masterclass dates
    Then the dates are read from the configuration file instead of hardcoded values in Nav.astro

  Scenario: Hide KMP Masterclass banner for past dates
    Given a configuration file with KMP Masterclass dates set in the past
    When the user navigates to the page
    Then the KMP Masterclass banner is not displayed

  Scenario: Disable KMP Masterclass banner via configuration
    Given a configuration file with the KMP Masterclass component disabled
    When the user navigates to the page
    Then the KMP Masterclass banner is not displayed regardless of dates
