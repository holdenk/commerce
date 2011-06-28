Feature: Accounts
  In order to establish long lasting customer relationships
  As a site owner
  I want users to have an account
  
@wip  
Scenario: Register
  Given I am logged out
  When I register
  And peek body
  Then I should have an account
  And peek body




  
