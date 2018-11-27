class SchoolClassesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_school_class, only: [:show, :edit, :update, :destroy]

  # GET /school_classes
  def index
    @school_classes = SchoolClass.all
  end

   
  # GET /school_classes/1
  def show
  end


  

  # GET /school_classes/new
  def new
    @school_class = SchoolClass.new
  end

  # GET /school_classes/1/edit
  def edit
  end

  # POST /school_classes
  def create
    @school_class = SchoolClass.new(school_class_params)

    if @school_class.save
      redirect_to @school_class, notice: 'School class was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /school_classes/1
  def update
    if @school_class.update(school_class_params)
      redirect_to @school_class, notice: 'School class was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /school_classes/1
  def destroy
    @school_class.destroy
    redirect_to school_classes_url, notice: 'School class was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_class
      @school_class = SchoolClass.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def school_class_params
      params.require(:school_class).permit(:description, :period_id, :teacher_id,  students_attributes: [
        :id, :_destroy, :name, :birth, :address, :phone, :email, :type_student_id])
    end
end
