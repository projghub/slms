class GradeLevelsController < ApplicationController
  def index
    @grade_levels = GradeLevel.all
  end

  def show
    @grade_level = GradeLevel.find(params[:id])
  end

  def new
    @grade_level = GradeLevel.new
  end

  def edit
    @grade_level = GradeLevel.find(params[:id])
  end

  def create
    @grade_level = GradeLevel.new(params[:grade_level])

    if @grade_level.save
      redirect_to @grade_level, notice: 'Grade level was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @grade_level = GradeLevel.find(params[:id])

    if @grade_level.update_attributes(params[:grade_level])
      redirect_to @grade_level, notice: 'Grade level was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @grade_level = GradeLevel.find(params[:id])
    @grade_level.destroy
    redirect_to grade_levels_url, notice: 'Grade level was successfully deleted.'
  end
end
