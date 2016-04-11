class ConversationsController < ApplicationController



  def index
    @conversations = current_user.conversations
    render json: @conversations # Can specify which conversation params to return here as required
  end


  # This will return json representation of desired conversation, for editing page etc
  def show
    @conversation = current_user.conversations.find(params[:conversation_id])
    render json: @conversation.as_json()
  end

  def create
    @conversation = Conversation.new(conversation_params)
    if @conversation.save
      current_user.conversations << @conversation
      render json: @conversation
    else
      render json: {
        staus: "failure",
        warning: "Failed to create conversation."
      }
    end
  end

  def update
    @conversation = current_user.conversations.find(params[:conversations_id])
    if @conversation.save
      render json: @conversation.as_json()
    else
      render json: {
        staus: "failure",
        warning: "Failed to update conversation."
      }
    end
  end

  def destroy
    @conversation = Conversation.find(params[:id])
    if @conversation.destroy
      render json: {
        status: "success",
        alert: "Conversation deleted."
      }
    else
      render json: {
        status: "failure",
        warning: "Unable to delete conversation."
      }
    end
  end

  private

  def conversation_params
    params.require(:conversation).permit(:name, :user_ids)
  end

  def authorisedConversation?(conversation)
    current_user.conversations.include(conversation)
  end

end
