[
  {
    "openapi": "3.0.0",
    "info": {
      "title": "Sample API",
      "version": "1.0.0"
    },
    "paths": {
      "/users": {
        "get": {
          "summary": "Get a list of users",
          "responses": {
            "200": {
              "description": "Successful response"
            }
          }
        }
      },
      "/users/{id}": {
        "get": {
          "summary": "Get a user by ID",
          "parameters": [
            {
              "name": "id",
              "in": "path",
              "description": "User ID",
              "required": true,
              "schema": {
                "type": "integer"
              }
            }
          ],
          "responses": {
            "200": {
              "description": "Successful response"
            }
          }
        }
      }
    }
  }
]
