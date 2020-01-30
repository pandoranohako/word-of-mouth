class SchoolController < ApplicationController
 
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
    @post = Post.all
    # @post = Post.where(@schoolid)
    # @admission = @post.admission
    # @merit = @post.merit
    # @demerit = @post.demerit
    # @cost = @post.cost
    # @gap = @post.gap
    # @curriculum_qualit = @post.curriculum_quality
    # @out_of_learning = @post.out_of_learning
    # @employment = @post.employment
  end

  private


  def post_params
    params.require(:post).permit(
      :admission, :merit, :demerit, :cost, :gap, :curriculum_quality, :out_of_learning,  :employment,  :school_id)

  end
end
