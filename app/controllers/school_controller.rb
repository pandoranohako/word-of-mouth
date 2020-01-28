class SchoolController < ApplicationController
  def show
    @school = School.find(params[:id])
  end



end
