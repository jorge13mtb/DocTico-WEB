class CentrosController < ApplicationController
#  before_action :signed_in_user

def new
  @centro = Centro.new
  @tipos_centro = TipoCentro.all
end

def create
  @centro = current_user.centros.build(post_params)
  
  if  @centro.save
    redirect_to @centro
  else
    render 'new'
  end
end

def show
  @centro = Centro.find(params[:id])
end

def index
   @centros = Centro.all
end

def edit
  @centro = Centro.find(params[:id])
  @tipos_centro = TipoCentro.all
end

def update
  @centro = Centro.find(params[:id])
 
   if @centro.update(params.require(:centro).permit(:nombre, :longitud, :latitud, :tipo, :horario, :descripcion))
    redirect_to @centro
  else
    render 'edit'
  end
end

def destroy
  @centro = Centro.find(params[:id])
  @centro.destroy
 
  redirect_to usuario_path(current_user)
end

private
  def post_params
    params.require(:centros).permit(:nombre, :longitud, :latitud, :tipo, :horario, :descripcion)
  end
end
