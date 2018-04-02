class PerformancesController < ApplicationController
  def index
    @performances = Performance.all
    @students_user = Student.where(:user_id => @current_user.id)
    @performances_student = Performance.where(:student_id => @students_user.ids)
  end

  def new
    @performance = Performance.new
  end

  def create
    performance = Performance.create performance_params
    redirect_to performance
  end

  def edit
    @performance = Performance.find params[:id]
  end

  def update
    performance = Performance.find params[:id]
    performance.update performance_params
    redirect_to performance
  end

  def show
    @performance = Performance.find params[:id]
  end

  def destroy
    performance = Performance.find params[:id]
    performance.destroy
    redirect_to performances_path
  end

  private
  def performance_params
    params.require(:performance).permit(:name,:media,:description,:performance_date,:student_id)
  end
end
