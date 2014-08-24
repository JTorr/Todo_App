class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [:home]
  def new
  end
end
