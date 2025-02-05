class RecsController < ApplicationController
  def index
    @recommendations = Rec.where(user_id: current_user.id).includes(:board)
  end
end
