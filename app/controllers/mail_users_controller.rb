class MailUsersController < ApplicationController
  before_action :set_mail_user, only: [:show, :destroy]

  def new
    @mail_user = MailUser.new
  end

  def show
  end

  def create
    @mail_user = MailUser.new(create_params)
    if @mail_user.save
      Mailer.welcome_email(@mail_user).deliver
      flash[:success] = "You've subscribed to news updates."
      redirect_to articles_path
    else
      render :new
    end
  end

  def destroy
    @mail_user.destroy
    flash[:success] = "You've been successfully unsubscribed."
    redirect_to articles_path
  end

  private

  def create_params
    params.require(:mail_user).permit(:email, :name)
  end

  def set_mail_user
    @mail_user = MailUser.find(params[:id])
  end
end
