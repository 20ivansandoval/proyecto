class AdmsController < ApplicationController
  def edit
    @home=Adm.find(params[:id])  
  end
  def update
    @home=Adm.find(params[:id])
     if @home.update(params.require(:adm).permit(:nombre))
      redirect_to adms_path
     else
    render :edit
  end 
  end
  def new 
    @home=Adm.new
  end
  def create
  @home=Adm.new(params.require(:adm).permit(:nombre,:ubicacion,:disponibilidad))
  if @home.save
    redirect_to adms_path
  else
    render :new
  end
  end
  
  def default
    
  end
  
  def index
     @homes=Adm.all
  end

  def show
  end
  def destroy
  @home=Adm.find(params[:id])
    if @home.destroy
    redirect_to adms_path
  else
    redirect_to adms_path
  end 
 end
end
