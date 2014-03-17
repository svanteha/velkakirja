class DebtsController < ApplicationController
  def index
    @debts = Debt.all
  end

  def new
    @debt = Debt.new
    @users = User.all
  end

  def create
    Debt.create params.require(:debt).permit(:amount, :description, :user_id, :receiver_id)
    redirect_to debts_path
  end

  def destroy
    debt = Debt.find(params[:id])
    debt.delete
    redirect_to debts_path
  end

end