Feature: Rendering the Hero and Profile Summary
  As a visitor
  I want to see the main profile statement and high-level summary
  So that I quickly understand the candidate is a Senior Android Engineer with KMP expertise

  Scenario: Render basic profile information
    Given the CV data contains name "Jesús Daniel Medina Cruz" and label "Senior Android Engineer | Technical Leader"
    When the Hero component is rendered
    Then it should display the name and label clearly
    And it should render the high-level summary emphasizing 10+ years of experience and KMP capabilities

  Scenario: Render contact and social links
    Given the CV data contains LinkedIn, GitHub, and X profiles
    When the Hero component is rendered
    Then it should display clickable links/icons for each network
    And it should include an option to contact via email
