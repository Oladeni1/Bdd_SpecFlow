Feature: Doctor's Outpatient note
  A s a doctor i should be able to create outpatient note.


  Background:
    Given I am on nhs outpatient website


    Scenario: Login with correct credentials
      Given I have entered username as "Ola" and password as "Pass1234"
      When I click login button
      Then I should see welcome text


    Scenario Outline: Entering outpatient details
      Examples:
      Given I enter outpatient details as
      | Surname | FirstName | NHS No | Date of birth | Address |
      |James    | Bond      | 12345  | 31/08/1973    | 5, Hospital Road M66HP |
      When I click submit button
      Then The saved message displaced

      Scenario: Logout
        When  I click logout button
        Then  I should see user successfully logout text