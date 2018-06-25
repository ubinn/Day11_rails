class SocarsController < ApplicationController
  before_action :set_socar, only:[:destroy, :show, :edit, :update]
  def index
    @socars = Socar.all
  end

  def new
  end
  
  def create
    @socar = Socar.new(title: params[:title],contents: params[:contents])
    if @socar.save
      redirect_to "/socars/#{@socar.id}"
    else
      redirect_to :back
    end
  end

  def show
  end

  def edit
  end
  
  def update
  if @socar.update(title: params[:title],contents: params[:contents])
      redirect_to "/socars/#{@socar.id}"
  else
      redirect_to :back
  end
  end
  
  def destroy
    @socar.destroy
    redirect_to "/socars"
  end
  private

  def set_socar 
    @socar = Socar.find(params[:id])
  end
end