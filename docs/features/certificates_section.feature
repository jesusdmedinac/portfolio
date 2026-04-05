Feature: Rendering Technical Certificates
  As a recruiter or technical reviewer
  I want to see the specific technical certificates the candidate has acquired
  So that I can validate specialized training in Compose, Testing, and Kotlin

  Scenario: Render certificates list
    Given the CV data contains certificates like "Compose Expert", "Testing Expert", and "Kotlin Expert" from DevExpert.io
    When the Certificates section is rendered
    Then it should display the certificate name, issuer, and date
    And it should display the specific skills associated with that certificate as badges or tags
