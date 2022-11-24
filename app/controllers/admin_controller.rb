class AdminController < ApplicationController
before_action :authenticate_user!
  def index_user
    @users = User.all.where(approved: true, admin: false)
  end

  def show_user
    @user = User.find(params[:id])
  end

  def edit_user
    @user = User.find(params[:id])
  end

  def update_user
    @user = User.find(params[:id])
    @user.update(params.require(:user).permit(:username))
    redirect_to admin_show_user_path(id: @user.id)
  end


  def new_user
    @user = User.new
  end

  def create_user
    @user = User.new(params.require(:user).permit(:email, :password, :username))
    @user.admin = false
    @user.approved = true

    if @user.save
      redirect_to admin_show_user_path(id: @user.id), success: 'New user created'
    else
      render :new_user, status: :unprocessable_entity, danger: 'Failed'
    end
  end

  def pending_user
    @users = User.all.where(approved: false, admin: false)
  end

  def approve_user
    @user = User.find(params[:id])
    @user.approved = params[:approved]
    @user.save
    ApprovalMailer.approve_user(@user.email).deliver_now
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
