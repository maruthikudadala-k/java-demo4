
@feature_pad_service
Feature: WellboreConfiguration

  Background: 
    Given the user is authenticated using JWT

  @jwt-authentication
  Scenario Outline: PadService uses custom JWT authentication converter
    Given the user sends a request with a valid JWT token
    When the system merges user roles and permissions from the JWT token and external user information API
    Then the user should receive accurate role mapping for the authenticated request

    Examples:
      | jwt_token          |
      | validJwtToken1234  |
      | validJwtToken5678  |
