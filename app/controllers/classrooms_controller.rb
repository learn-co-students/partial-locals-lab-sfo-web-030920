class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    # @student = @classroom.oldest_student
  end

  def index
    @classrooms = Classroom.all
  end

  def search
    puts params[:query].inspect
    if params[:query].blank?
      result = Classroom.all
      result
    else
      @parameter = params[:query].downcase
      @results = Student.where("name LIKE ?", @parameter)
      render "index"
    end
  end
end
