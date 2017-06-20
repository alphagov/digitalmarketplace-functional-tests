@smoke-tests
Feature: Apps /_status is ok

  @status @api
  Scenario: Check the data API /_status
    Given I am on the api /_status page
    Then I see 'ok' as the value of the 'status' JSON field
    And Display the value of the 'version' JSON field as 'Release version'

  @status @search-api
  Scenario: Check the search API /_status
    Given I am on the search-api /_status page
    Then I see 'ok' as the value of the 'status' JSON field
    And Display the value of the 'version' JSON field as 'Release version'

  @status @buyer-frontend
  Scenario: Check the buyers frontend /_status
    Given I am on the frontend /_status page
    Then I see 'ok' as the value of the 'status' JSON field
    And Display the value of the 'version' JSON field as 'Release version'

  @status @supplier-frontend
  Scenario: Check the suppliers frontend /_status
    Given I am on the frontend /suppliers/_status page
    Then I see 'ok' as the value of the 'status' JSON field
    And Display the value of the 'version' JSON field as 'Release version'

  @status @admin-frontend
  Scenario: Check the admin frontend /_status
    Given I am on the frontend /admin/_status page
    Then I see 'ok' as the value of the 'status' JSON field
    And Display the value of the 'version' JSON field as 'Release version'