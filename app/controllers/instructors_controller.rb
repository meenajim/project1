class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all

  end

  def new
    @instructor = Instructor.new
  end

  def create

    instructor = Instructor.create instructor_params
    cloudinary = Cloudinary::Uploader.upload( params[ "instructor" ][ "photo" ] )
    instructor.update :photo => cloudinary["url"]
    redirect_to instructor

  end

  def edit
    @instructor = Instructor.find params[:id]
  end

  def update
    instructor = Instructor.find params[:id]
    instructor.update instructor_params
    redirect_to instructor
  end

  def show
    @instructor = Instructor.find params[:id]
    @likes = Like.where(:instructor_id => @instructor.id).count
  end

  def destroy
    instructor = Instructor.find params[:id]
    instructor.destroy
    redirect_to instructors_path
  end

private
def instructor_params
  params.require(:instructor).permit(:name,:qualification,:instrument,:description,:likes,:photo)
end
end
