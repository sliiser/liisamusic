class SettingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_setting, only: [:update, :destroy]
  helper_method :xeditable?

  def index
    @settings = Setting.all
  end

  def update
    @setting.update(update_params)
    render json: {}
  end

  def destroy
    @setting.destroy
    flash[:success] = "#{@setting.name_key} destroyed"
    redirect_to settings_path
  end

  def xeditable?(object = nil)
    true
  end

  private

  def set_setting
    @setting = Setting.find(params[:id])
  end

  def create_params

  end

  def update_params
    params.require(:setting).permit(:value, :description)
  end
end