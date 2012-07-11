class SubmissionTypesController < ApplicationController
  # GET /submission_types
  # GET /submission_types.json
  def index
    @submission_types = SubmissionType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @submission_types }
    end
  end

  # GET /submission_types/1
  # GET /submission_types/1.json
  def show
    @submission_type = SubmissionType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @submission_type }
    end
  end

  # GET /submission_types/new
  # GET /submission_types/new.json
  def new
    @submission_type = SubmissionType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @submission_type }
    end
  end

  # GET /submission_types/1/edit
  def edit
    @submission_type = SubmissionType.find(params[:id])
  end

  # POST /submission_types
  # POST /submission_types.json
  def create
    @submission_type = SubmissionType.new(params[:submission_type])

    respond_to do |format|
      if @submission_type.save
        format.html { redirect_to @submission_type, notice: 'Submission type was successfully created.' }
        format.json { render json: @submission_type, status: :created, location: @submission_type }
      else
        format.html { render action: "new" }
        format.json { render json: @submission_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /submission_types/1
  # PUT /submission_types/1.json
  def update
    @submission_type = SubmissionType.find(params[:id])

    respond_to do |format|
      if @submission_type.update_attributes(params[:submission_type])
        format.html { redirect_to @submission_type, notice: 'Submission type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @submission_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submission_types/1
  # DELETE /submission_types/1.json
  def destroy
    @submission_type = SubmissionType.find(params[:id])
    @submission_type.destroy

    respond_to do |format|
      format.html { redirect_to submission_types_url }
      format.json { head :no_content }
    end
  end
end
