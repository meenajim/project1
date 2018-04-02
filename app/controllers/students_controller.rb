class StudentsController < ApplicationController
  def index
    @students = Student.all
    # @students_user = Student.find_by :user_id => @current_user.id
    # Person.where(name: 'Spartacus', rating: 4)
    @students_user = Student.where(:user_id => @current_user.id)
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.create student_params
    redirect_to student
  end

  def edit
    @student = Student.find params[:id]
  end

  def update
    student = Student.find params[:id]
    student.update student_params
    redirect_to student
  end

  def show
    @student = Student.find params[:id]
  end

  def destroy
    student = Student.find params[:id]
    student.destroy
    redirect_to students_path
  end


  private
  def student_params
    params.require(:student).permit(:name,:phone,:dob,:instructor_id,:user_id)
  end

end
