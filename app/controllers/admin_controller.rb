class AdminController < ApplicationController
  def index_user
    @users = User.all.where(approved: true, admin: false)
  end

  def edit_user
  end

  def show_user
  end

  def new_user
  end

  def pending_user
    @users = User.all.where(approved: false, admin: false)
  end

  def index_transactions
  end
end
