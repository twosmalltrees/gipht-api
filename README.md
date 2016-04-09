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
| `/conversations`     | `GET`        | `conversations#index`  | Returns all conversations for the `current_user`, sorted by `created_at` of each conversations most recent message. No need to pass through any `params`.    
| `/conversations`     | `POST`       | `conversations#create`  | Creates a new conversation from the `params` passed through.            
| `/conversations/:id` | `GET`        | conversations#show    | Returns a single conversation, as specified by `params[:id]`. No further `params` required.          
| `/conversations/:id` | `PATCH`      | `conversations#update`  |            
| `/conversations/:id` | `PUT`        | `conversations#update`  |            
| `/conversations/:id` | `DELETE`     | `conversations#destroy` |            

#### Messages

| Path                                         | Method     | Action              | Purpose    
|----------------------------------------------|------------|---------------------|------------
| `/conversations/:conversation_id/messages`    | GET        | messages#index      |            
| `/conversations/:conversation_id/messages`  | POST       | messages#create     |            
| `/conversations/:conversation_id/messages/:id` | GET        | messages#show       |            
| `/conversations/:conversation_id/messages/:id` | PATCH      | messages#update     |            
| `/conversations/:conversation_id/messages/:id` | PUT        | messages#update     |            
| `/conversations/:conversation_id/messages/:id` | DELETE     | messages#destroy    |       

#### Friendships

| Path                      | Method     | Action                | Purpose    
|---------------------------|------------|-----------------------|------------
| /friendships              | GET        | friendships#index     |            
| /friendships              | POST       | friendships#create    |            
| /friendships/:id          | GET        | friendships#show      |                    
| /friendships/:id          | DELETE     | friendships#destroy   |     
| /friendships/:id/confirm  | POST       | friendships#confirm   |  

#### Giphts

| Path            | Method     | Action             | Purpose    
|-----------------|------------|--------------------|------------
| /giphts         | GET        | giphts#index       |            
| /giphts         | POST       | giphts#create      |            
| /giphts/:id     | GET        | giphts#show        |    

#### Favourites

| Path                      | Method     | Action                | Purpose    
|---------------------------|------------|-----------------------|------------
| /favourites               | GET        | favourites#index      |            
| /favourites               | POST       | favourites#create     |            
| /favourites/:id           | GET        | favourites#show       |                    
| /favourites/:id           | DELETE     | favourites#destroy    |     
