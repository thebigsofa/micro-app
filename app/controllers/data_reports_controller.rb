class DataReportsController < ApplicationController
  def index
    @current_user = OpenStruct.new(current_user)
  end
end
