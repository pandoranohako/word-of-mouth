class UsersController < ApplicationController
  def show
    @school = School.find(params[:id])
    @post = Post.all
    @user = User.find(params[:id])
  end

end
