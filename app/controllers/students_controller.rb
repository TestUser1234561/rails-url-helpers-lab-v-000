class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
    render "index"
  end

  def show
  end

  def activate
    @student = self.set_student
    @student.active = !@student.active
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
