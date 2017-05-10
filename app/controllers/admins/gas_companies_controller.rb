class Admins::GasCompaniesController < ApplicationController
  before_action :set_gas_company, only: [:show, :edit, :update, :destroy]

  # GET /gas_companies
  # GET /gas_companies.json
  def index
    @gas_companies = GasCompany.all
  end

  # GET /gas_companies/1
  # GET /gas_companies/1.json
  def show
  end

  # GET /gas_companies/new
  def new
    @gas_company = GasCompany.new
  end

  # GET /gas_companies/1/edit
  def edit
  end

  # POST /gas_companies
  # POST /gas_companies.json
  def create
    @gas_company = GasCompany.new(gas_company_params)

    respond_to do |format|
      if @gas_company.save
        format.html { redirect_to admins_gas_company_path(@gas_company), notice: 'Gas company was successfully created.' }
        format.json { render :show, status: :created, location: @gas_company }
      else
        format.html { render :new }
        format.json { render json: @gas_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gas_companies/1
  # PATCH/PUT /gas_companies/1.json
  def update
    respond_to do |format|
      if @gas_company.update(gas_company_params)
        format.html { redirect_to admins_gas_company_path(@gas_company), notice: 'Gas company was successfully updated.' }
        format.json { render :show, status: :ok, location: @gas_company }
      else
        format.html { render :edit }
        format.json { render json: @gas_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gas_companies/1
  # DELETE /gas_companies/1.json
  def destroy
    @gas_company.destroy
    respond_to do |format|
      format.html { redirect_to admins_gas_companies_url, notice: 'Gas company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gas_company
      @gas_company = GasCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gas_company_params
      params.require(:gas_company).permit(:name, :company_logo)
    end
end
