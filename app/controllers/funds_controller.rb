class FundsController < ApplicationController

  def new
    @fund = Fund.new
  end

  def create
    @fund = Fund.create(fund_params)
    redirect_to funds_path
  end

  def index
    @funds = Fund.all
  end

  private

  def fund_params
    params.require(:fund).permit(:amount, :user_id)
  end

end
