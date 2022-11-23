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

  def approve_user
    @user = User.find(params[:id])
    @user.approved = params[:approved]
    @user.save
    # ApprovalMailer.approve_user(@user.email).deliver_now
    redirect_to admin_pending_user_path
  end

  def suspend_user
    @user = User.find(params[:id])
    @user.approved = params[:approved]
    @user.save
    redirect_to admin_index_user_path
  end


  def index_transactions
  end
end
