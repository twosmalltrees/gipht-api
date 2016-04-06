GIPHT API
=========

Passing Authorization
---------------------
Gipht uses [devise_token_auth](https://github.com/lynndylanhurley/devise_token_auth) for authentication.
All requests by the client need to be authenticated with the appropriate headers. As discussed in the devise_token_auth docs, the standard format for the required headers is:


  "access-token": "wwwww",
  "token-type":   "Bearer",
  "client":       "xxxxx",
  "expiry":       "yyyyy",
  "uid":          "zzzzz"



Endpoints
---------

### Authorization

### Conversations

### Messages

### Friendships

### Giphts

### Favourites

### Notifications
