class TypeStudentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_type_student, only: [:show, :edit, :update, :destroy]

  # GET /type_students
  def index
    @type_students = TypeStudent.all
  end

  # GET /type_students/1
  def show
  end

  # GET /type_students/new
  def new
    @type_student = TypeStudent.new
  end

  # GET /type_students/1/edit
  def edit
  end

  # POST /type_students
  def create
    @type_student = TypeStudent.new(type_student_params)

    if @type_student.save
      redirect_to @type_student, notice: 'Type student was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /type_students/1
  def update
    if @type_student.update(type_student_params)
      redirect_to @type_student, notice: 'Type student was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /type_students/1
  def destroy
    @type_student.destroy
    redirect_to type_students_url, notice: 'Type student was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_student
      @type_student = TypeStudent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def type_student_params
      params.require(:type_student).permit(:name)
    end
end
