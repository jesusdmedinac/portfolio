Feature: Rendering Technical Skills and Expertise
  As a technical reviewer
  I want to see skills grouped by categories and expertise level
  So that I can quickly assess the candidate's technical capabilities in Android, Architecture, and AI

  Scenario: Render skill categories
    Given the CV data contains skill categories: "Android Engineering", "Architecture & Design", and "AI & Infrastructure"
    When the Skills section is rendered
    Then it should display sections or cards for each category
    And it should indicate the proficiency level (Expert, Advanced)

  Scenario: Render keywords within categories
    Given a skill category contains keywords like "Coroutines", "Flow", "Clean Architecture"
    When rendering the skill category card
    Then it should list all keywords efficiently using visual chips or lists
