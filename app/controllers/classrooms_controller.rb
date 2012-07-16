class ClassroomsController < ApplicationController
  before_filter :require_login, except: [:index, :show]

  def index
    @classrooms = Classroom.all
  end

  def show
    @classroom = Classroom.find(params[:id])
    #@classroomCount = Classroom.count(:conditions => ['teacher_id = ?', @user.id])
  end

  def new
    @classroom = Classroom.new
  end

  def edit
    @classroom = Classroom.find(params[:id])
  end

  def create
    @classroom = Classroom.new(params[:classroom])

    if @classroom.save
      redirect_to @classroom, notice: 'Classroom was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @classroom = Classroom.find(params[:id])

    if @classroom.update_attributes(params[:classroom])
      redirect_to @classroom, notice: 'Classroom was successfully updated.'
    else
      render action: "edit"
    end
  end

#  def destroy
#    @classroom = Classroom.find(params[:id])
#    @classroom.destroy
#    redirect_to classrooms_url, notice: 'Classroom was successfully deleted.'
#  end
end
