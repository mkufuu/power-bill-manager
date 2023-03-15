class AccountsController < ApplicationController
  def index
    accounts = Account.all()

    render json: accounts
  end

  def read
    account = Account.find(params[:id])

    render json: account
  end

  # G1 - implement create WITH ERROR HANDLING
  # G2 - implement update WITH ERROR HANDLING
  # G3 - implement delete WITH ERROR HANDLING
  # G4 - implement read BUT WITH ERROR HANDLING
end
