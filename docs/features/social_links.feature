Feature: Centralized Social Links
  As a developer
  I want to store my social media links in a centralized data file
  So that both Nav and Footer components read from the same single source of truth

  Scenario: Extract social links to a data file
    Given a data file containing social media platforms, URLs, and icons
    When the application is built
    Then the information is accessible across the project

  Scenario: Render social links in Nav component
    Given a Nav component that fetches social links
    When the component builds
    Then it populates its iconLinks array from the centralized data file

  Scenario: Render social links in Footer component
    Given a Footer component that currently uses hardcoded HTML anchor tags
    When the component builds
    Then it renders its links by iterating over the centralized data file
