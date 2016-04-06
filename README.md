GIPHT API
=========

Authorization Headers
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

Refer to the devise_token_auth [docs](https://github.com/lynndylanhurley/devise_token_auth#usage-tldr) for full details of available authorization endpoints. 

### Conversations

### Messages

### Friendships

### Giphts

### Favourites

### Notifications
