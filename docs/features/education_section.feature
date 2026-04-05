Feature: Rendering Education History
  As a recruiter
  I want to see the candidate's formal education
  So that I can verify their academic background

  Scenario: Render education list
    Given the CV data contains education entries like "IUT de La Rochelle" and "Universidad Tecnológica de Tijuana"
    When the Education section is rendered
    Then it should display each institution, degree type, and dates
    And it should provide a link to the institution if available
