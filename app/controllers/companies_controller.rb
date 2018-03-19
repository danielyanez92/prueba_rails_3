class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: :show
  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
  end
  def show
    @complains = Complain.order("created_at DESC")
  end

  # GET /companies/1/edit
  def edit
	end

  def destroy
		@company.destroy
	end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(name:params[:company][:name])
    @company.save
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    @company = Company.find(params[:id])
    @company.update(name: params[:company][:name])
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name)
    end
end
