class MainController < ApplicationController
  def index
    # render :json => { ok: true, current_user: current_user }
    @current_user = OpenStruct.new(current_user)
  end
end
