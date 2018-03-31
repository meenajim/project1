class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
  end

  def edit
  end

  def show
  end
end
