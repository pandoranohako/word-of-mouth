class SchoolController < ApplicationController
  # before_action :set_schools, only: [:new, :create]

  def new
    @school = School.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
      if @post.save
        redirect_to root_path 
    else
        render :new
    end
  end

  def show
    @school = School.find(params[:id])
  end

  private

  # def set_schools
  #   @schools = School.all
  # end

  def post_params
    params.require(:post).permit(
      :admission, :merit, :demerit, :cost, :gap, :curriculum_quality, :out_of_learning,  :employment,  :school_id
      )

  end




end
