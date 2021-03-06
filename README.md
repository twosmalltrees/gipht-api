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


| Path                 | Method       | Action                  | Description    
|----------------------|--------------|-------------------------|------------
| `/conversations`     | `GET`        | `conversations#index`   | Returns all conversations for the `current_user`, sorted by most recent message. No need to pass through any `params`.    
| `/conversations`     | `POST`       | `conversations#create`  | Creates a new conversation from the `params` passed through. If save is successful, it returns a json representation of the saved conversation.         
| `/conversations/:id` | `GET`        | `conversations#show`      | Returns a json representation of the conversation specified by `params[:id]`. No further `params` required.          
| `/conversations/:id` | `PATCH`      | `conversations#update`  | Updates the specified conversation, as based on the provided `params`. Returns a json representation of the updated conversation.           
| `/conversations/:id` | `PUT`        | `conversations#update`  | As above, updates the specified conversation, as based on the provided `params`. Returns a json representation of the updated conversation.          
| `/conversations/:id` | `DELETE`     | `conversations#destroy` | If the `current_user` is the only remaining user in the conversation, this destroys the conversation specified by `params[:id]`. Otherwise the `current_user` is removed from the conversation, but the conversation itself is not destroyed.

#### Messages

| Path                                           | Method     | Action              | Description    
|------------------------------------------------|------------|---------------------|------------
| `/conversations/:conversation_id/messages`     | `GET`        | `messages#index `     |            
| `/conversations/:conversation_id/messages`     | `POST`       | `messages#create`     |            
| `/conversations/:conversation_id/messages/:id` | `GET`        | `messages#show `      |            
| `/conversations/:conversation_id/messages/:id` | `PATCH`      | `messages#update`     |            
| `/conversations/:conversation_id/messages/:id` | `PUT`        | `messages#update`     |            
| `/conversations/:conversation_id/messages/:id` | `DELETE`     | `messages#destroy`    |       

#### Friendships

| Path                      | Method     | Action                | Description    
|---------------------------|------------|-----------------------|------------
| `/friendships `             | `GET`        | `friendships#index`     |            
| `/friendships`              | `POST`       | `friendships#create`    |            
| `/friendships/:id`          | `GET`        | `friendships#show`     |                    
| `/friendships/:id`          | `DELETE`     | `friendships#destroy`   |     
| `/friendships/:id/confirm`  | `POST`       | `friendships#confirm`   |  

#### Giphts

| Path            | Method     | Action             | Description    
|-----------------|------------|--------------------|------------
| `/giphts`         | `GET`        | `giphts#index`       |            
| `/giphts`         | `POST`       | `giphts#create`      |            
| `/giphts/:id`     | `GET`        | `giphts#show`        |    

#### Favourites

| Path                      | Method     | Action                | Description    
|---------------------------|------------|-----------------------|------------
| `/favourites`               | `GET`        | `favourites#index`      |            
| `/favourites`               | `POST`       | `favourites#create`     |            
| `/favourites/:id`           | `GET`        | `favourites#show`       |                    
| `/favourites/:id`           | `DELETE`     | `favourites#destroy`    |     
