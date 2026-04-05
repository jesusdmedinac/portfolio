Feature: Rendering Highlighted Projects
  As a visitor
  I want to see the individual projects the candidate has worked on
  So that I can appreciate hands-on experience and real-world results

  Scenario: Render active projects list
    Given the CV data contains projects like "json-to-compose", "Desde0 Academy", and "Empry"
    When the Projects section is rendered
    Then it should display a grid or list of project cards
    And each card should display the name, description, and link

  Scenario: Render project highlights
    Given a project contains a list of highlights (e.g., "KMP-based rapid application development")
    When rendering the project card
    Then it should display the highlights as key bullet points
