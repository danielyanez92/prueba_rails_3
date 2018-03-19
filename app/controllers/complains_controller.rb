class ComplainsController < ApplicationController
  def create
    @company = Company.find(params[:company_id])
    @complain = Complain.new(content:params[:complain][:content], user: current_user)
    @company.complains << @complain
    @complain.save
  end
end
