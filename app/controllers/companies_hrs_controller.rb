class CompaniesHrsController < ApplicationController
  before_action :set_companies_hr, only: [:show, :edit, :update, :destroy]

  # GET /companies_hrs
  # GET /companies_hrs.json
  def index
    @companies_hrs = CompaniesHr.all
    @students = Student.all
  end

  # GET /companies_hrs/1
  # GET /companies_hrs/1.json
  def show
  end

  # GET /companies_hrs/new
  def new
    @companies_hr = CompaniesHr.new
  end

  # GET /companies_hrs/1/edit
  def edit
  end

  # POST /companies_hrs
  # POST /companies_hrs.json
  def create
    @companies_hr = CompaniesHr.new(companies_hr_params)

    respond_to do |format|
      if @companies_hr.save
        format.html { redirect_to @companies_hr, notice: 'Companies hr was successfully created.' }
        format.json { render :show, status: :created, location: @companies_hr }
      else
        format.html { render :new }
        format.json { render json: @companies_hr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies_hrs/1
  # PATCH/PUT /companies_hrs/1.json
  def update
    respond_to do |format|
      if @companies_hr.update(companies_hr_params)
        format.html { redirect_to @companies_hr, notice: 'Companies hr was successfully updated.' }
        format.json { render :show, status: :ok, location: @companies_hr }
      else
        format.html { render :edit }
        format.json { render json: @companies_hr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies_hrs/1
  # DELETE /companies_hrs/1.json
  def destroy
    @companies_hr.destroy
    respond_to do |format|
      format.html { redirect_to companies_hrs_url, notice: 'Companies hr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companies_hr
      @companies_hr = CompaniesHr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def companies_hr_params
      params.fetch(:companies_hr, {})
    end
end
