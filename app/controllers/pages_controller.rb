class PagesController < ApplicationController
  before_action :set_page, except: [:index, :new, :create]
  before_action :authenticate_user!, except: :show

  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to @page, notice: 'Page was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @page.update(page_params)
      redirect_to @page, notice: 'Page was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @page.destroy
      redirect_to pages_path, notice: 'Page was successfully destroyed.'
    else
      redirect_to @page, notice: 'Could not destroy page'
    end
  end

  def hide
    @page.visible = false
    @page.save
    redirect_to pages_path
  end

  def reveal
    @page.visible = true
    @page.save
    redirect_to pages_path
  end

  private

  def set_page
    @page = Page.find_by(name_key: params[:name_key])
    raise ActionController::RoutingError.new('Not Found') if @page.nil?
  end

  def page_params
    params.require(:page).permit(:title, :body, :button_order, :visible, :name_key)
  end
end