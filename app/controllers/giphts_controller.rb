class GiphtsController < ApplicationController

  def index
    # Perhaps used to show your recently recorded and sent giphts, irrespective
    # of if it was saved or not. This would allow easier saving without navigating
    # to the conversation.
    @giphts = current_user.giphts # Time restriction here?
  end

  def show
    @gipht = current_user.giphts.find(id)
  end

  def create
    @gipht.Gipht.new(gipht_params)
    if @gipht.save
      current_user.giphts << @gipht
      render json: @gipht.as_json
    else
      render json: {
        status: "failure",
        warning: "Unable to save gipht."
      }
    end
  end

end
