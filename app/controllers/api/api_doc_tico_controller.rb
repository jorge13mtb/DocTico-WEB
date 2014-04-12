class Api::ApiDocTicoController < ApplicationController
  def autenticar_usuario
    @mensaje = Mensaje.new

    usuario = Usuario.find_by email: params[:email]
    if usuario && usuario.authenticate(params[:password])
      @mensaje.respuesta = "Si"
    else
      @mensaje.respuesta = "No"
    end
  end

  def nuevo_usuario
    @mensaje = Mensaje.new
    @usuario = Usuario.new(:nombre => params[:nombre], :email => params[:email], :password => params[:password], 
                           :password_confirmation => params[:password_confirmation])
  
    if @usuario.save
      @mensaje.respuesta = "Si"
    else
      @mensaje.respuesta = "No"
    end
  end

  def centros_salud
    @centros = Centro.all
  end

  def citas
  end

  def nueva_cita
  end

  def presion_arterial
  end

  def nueva_presion_arterial
  end

  private


  def usuario_params
    params.require(:usuario).permit(:nombre, :email, :password, :password_confirmation)
  end
end


# Esta clase es para devolver el token
# Estoy usando la geme jsonBuilder
class Mensaje
  attr_accessor :respuesta
  @respuesta
end
