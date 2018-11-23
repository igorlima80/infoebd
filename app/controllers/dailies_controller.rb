class DailiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_daily, only: [:show, :edit, :update, :destroy]

  # GET /dailies
  def index
     @dailies = Daily.where(school_class_id: params[:school_class_id])
  end

  # GET /dailies/1
  def show
  end

  # GET /dailies/new
  def new
    @daily = Daily.new
    @school_class = SchoolClass.find(params[:school_class_id])
    
    
    @daily.school_class = @school_class
    puts @daily.school_class
   

    @school_class.students.each do |student|
      @school_attendances = SchoolAttendance.new      
      @school_attendances.student = student
      @daily.school_attendances << @school_attendances
    end  
  end

  # GET /dailies/1/edit
  def edit
  end

  # POST /dailies
  def create
    
    @daily = Daily.new(daily_params)    

    if @daily.save!
      redirect_to @daily, notice: 'Daily was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dailies/1
  def update
    if @daily.update(daily_params)
      redirect_to @daily, notice: 'Daily was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dailies/1
  def destroy
    @daily.destroy
    redirect_to dailies_url, notice: 'Daily was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily
      @daily = Daily.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def daily_params
      params.require(:daily).permit(:date_daily, :school_class_id, school_attendances_attributes: [:presence, :_destroy, :student_id])
    end
end
