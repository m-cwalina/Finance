class IncomesController < ApplicationController
  def new
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
    @income.save
  end

  private

  def income_params
    params.require(:income).permit(:salary, :stock, :passive, :amount)
  end
end
