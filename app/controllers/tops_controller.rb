class TopsController < ApplicationController
  def index
    @school = School.all
  end

end
