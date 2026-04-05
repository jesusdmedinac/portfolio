Feature: Rendering Work Experience
  As a recruiter or engineering manager
  I want to see the detailed work experience history
  So that I evaluate the specific responsibilities, impact, and skills applied in each role

  Scenario: Render a list of roles
    Given the CV data contains work experiences like HansellApp, Academia Desde0, and Bubble
    When the Work Experience section is rendered
    Then it should display a list of jobs ordered by date (newest first)
    And each job should display the company name, position, location, and dates

  Scenario: Render responsibilities and skills per role
    Given a work experience entry has a list of responsibilities and skills
    When rendering the specific job entry
    Then it should display the responsibilities as a bulleted list highlighting technical impact
    And it should display the applied skills (e.g., "Kotlin Multiplatform", "Android SDK", "MVVM") as badges or tags
