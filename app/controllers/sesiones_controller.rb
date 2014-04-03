class SesionesController < ApplicationController

 def new
  end

  def create
    usuario = Usuario.find_by(email: params[:sesion][:email].downcase)
    if usuario && usuario.authenticate(params[:sesion][:password])
      sign_in usuario
      redirect_to usuario
    else
      render 'new'
    end
  end


  def destroy
    sign_out
    redirect_to root_url
  end
end
