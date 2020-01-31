class SchoolController < ApplicationController
  before_action :set_topics, except: [:new,:create]
 
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
  end

  def admission
  end

  def merit
  end

  def demerit
  end

  def cost
  end

  def gap
  end

  def curriculum_quality
  end

  def out_of_learning
  end

  def employment
  end

  private


  def post_params
    params.require(:post).permit(
      :admission, :merit, :demerit, :cost, :gap, :curriculum_quality, :out_of_learning,  :employment,  :school_id)
  end

  def set_topics
    @school = School.find(params[:id])
    @post = Post.all
  end
end
