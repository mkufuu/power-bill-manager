class AccountsController < ApplicationController
    skip_before_action :verify_authenticity_token

  def index
    accounts = Account.all()

    render json: accounts
  end

  def create
    account = Account.create(name: params[:name], meter_number: params[:meter_number])

    if (account.valid?)
        render json: account, status: :created
    else
        render json: {message: "Sorry, account was not created"}, status: :unprocessable_entity
    end
  end

  def update
    account = Account.find_by(id: params[:id])

    if account
        account.update(name: params[:name], meter_number: params[:meter_number])

        render json: account, status: :ok
        return
    end

    render json: {message: "Sorry, the account was not found"}, status: :not_found
  end

  def read
    account = Account.find(params[:id])

    render json: account, status: :ok

    rescue ActiveRecord::RecordNotFound  => err
        render json: {message: "Sorry, account with id #{params[:id]} was not found"}, status: :not_found
  end

  def destroy
    account = Account.find_by(id: params[:id])

    if account
        account.destroy

        render json: {message: "#{account.meter_number} deleted"}, status: :ok
        return
    end

    render json: {message: "Sorry, the account was not found"}, status: :not_found
  end
end
