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

#### Authorization

Refer to the devise_token_auth [docs](https://github.com/lynndylanhurley/devise_token_auth#usage-tldr) for full details of available authorization endpoints.

#### Conversations


| Path               | Method     | Action                | Purpose    
|--------------------|------------|-----------------------|------------
| /conversations     | GET        | conversations#index   |            
| /conversations     | POST       | conversations#create  |            
| /conversations/:id | GET        | conversations#show    |            
| /conversations/:id | PATCH      | conversations#update  |            
| /conversations/:id | PUT        | conversations#update  |            
| /conversations/:id | DELETE     | conversations#destroy |            



#### Messages

| Path                                         | Method     | Action              | Purpose    
|----------------------------------------------|------------|---------------------|------------
| /conversations/:conversation_id/messages     | GET        | messages#index      |            
| /conversations/:conversation_id/messages     | POST       | messages#create     |            
| /conversations/:conversation_id/messages/:id | GET        | messages#show       |            
| /conversations/:conversation_id/messages/:id | PATCH      | messages#update     |            
| /conversations/:conversation_id/messages/:id | PUT        | messages#update     |            
| /conversations/:conversation_id/messages/:id | DELETE     | messages#destroy    |       

#### Friendships

| Path                      | Method     | Action                | Purpose    
|---------------------------|------------|-----------------------|------------
| /friendships              | GET        | friendships#index     |            
| /friendships              | POST       | friendships#create    |            
| /friendships/:id          | GET        | friendships#show      |                    
| /friendships/:id          | DELETE     | friendships#destroy   |     
| /friendships/:id/confirm  | POST       | friendships#confirm   |  

#### Giphts

#### Favourites

| Path            | Method     | Action             | Purpose    
|-----------------|------------|--------------------|------------
| /favourites     | GET        | favourites#index   |            
| /favourites     | POST       | favourites#create  |            
| /favourites/:id | GET        | favourites#show    |            
| /favourites/:id | PATCH      | favourites#update  |            
| /favourites/:id | PUT        | favourites#update  |            
| /favourites/:id | DELETE     | favourites#destroy |   


#### Notifications
