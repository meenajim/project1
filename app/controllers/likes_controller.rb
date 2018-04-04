class LikesController < ApplicationController

  def create
    like = Like.new
    like.user_id = @current_user.id
    like.instructor_id = params[:instructor_id]
    like.save
    redirect_back :fallback_location => instructors_path
  end

  def destroy
    instructor = Instructor.find params[:instructor_id]
    instructor.likes.find_by(:user_id => @current_user.id).destroy
    redirect_back :fallback_location => instructors_path
  end

  # private
  # def like_params
  #   params.require(:like).permit(:user_id,:instructor_id)
  # end
end
