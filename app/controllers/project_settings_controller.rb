class ProjectSettingsController < ApplicationController
  def show
    @current_user = OpenStruct.new(current_user)
  end
end
