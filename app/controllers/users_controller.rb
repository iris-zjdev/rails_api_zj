class UsersController < ApplicationController
  def index
    @users = User.all
    if params[:name].present?
      @users.select! { |user| user["name"].downcase.include?(params[:name].downcase) }
    end
  end

  def details
    @user = User.find(params[:id])
  end
end
