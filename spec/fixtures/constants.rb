DESCRIPTION = "Logging in an existing user"
POST_ENDPOINT = "POST /api/v1/users/sign_in"
REQUEST = %Q("request": {
  "user": {
    "email": "larue@robelhudson.co.uk",
    "password": "qwerty1234"
  }
})

RESPONSE = %Q("response": {
  "first_name": "Elody",
  "last_name": "Towne",
  "email": "larue@robelhudson.co.uk",
  "auth_token": "xTmUALZoxwwc-W5WGrxo",
  "user_role": "user"
})

API_DOCUMENTATION_WITH_RESPONSE = %q(
{
  "resource": "Sessions",
  "http_method": "POST",
  "route": "/api/v1/users/sign_in",
  "description": "Logging in an existing user",
  "explanation": null,
  "parameters": [
    {
      "scope": "user",
      "name": "email",
      "description": "The users email address"
    },
    {
      "scope": "user",
      "name": "password",
      "description": "The users password"
    }
  ],
  "requests": [
    {
      "request_method": "POST",
      "request_path": "/api/v1/users/sign_in",
      "request_body": "{\"user\":{\"email\":\"larue@robelhudson.co.uk\",\"password\":\"qwerty1234\"}}",
      "request_headers": {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "Host": "example.org",
        "Cookie": "",
        "Origin": null
      },
      "request_query_parameters": {
      },
      "request_content_type": "application/json",
      "response_status": 200,
      "response_status_text": "OK",
      "response_body": "{\"first_name\":\"Elody\",\"last_name\":\"Towne\",\"email\":\"larue@robelhudson.co.uk\",\"auth_token\":\"xTmUALZoxwwc-W5WGrxo\",\"user_role\":\"user\"}",
      "response_headers": {"X-Frame-Options":"SAMEORIGIN","X-XSS-Protection":"1; mode=block","X-Content-Type-Options":"nosniff","X-UA-Compatible":"chrome=1","Content-Type":"application/json; charset=utf-8","ETag":"\"e042a256cfa5f4caf67533446fea396d\"","Cache-Control":"max-age=0, private, must-revalidate","X-Request-Id":"04ce028c-6889-4aa8-9a0c-a6ab2c4d82b5","X-Runtime":"0.028257","Content-Length":"131"},
      "response_content_type": "application/json; charset=utf-8",
      "curl": null
}
  ]
})

PARSED_API_DOCUMENTATION_WITH_RESPONSE = %Q(
// #{DESCRIPTION}
//
// #{POST_ENDPOINT}

{
  #{REQUEST},
  #{RESPONSE}
})
