class Api::ApiDocTicoController < ApplicationController
  def autenticar_usuario
   # @mensaje = Mensaje.new

#  @usuario = Usuario.find(3)

    @usuario = Usuario.find_by Email: params[:email]
    #if usuario && usuario.authenticate(params[:password])
     # @user = Usuario.find_by Email: params[:email]
 #    @mensaje.respuesta = "Si"
#    else
 #     @mensaje.respuesta = "No"
#    end
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
end


# Esta clase es para devolver el token
# Estoy usando la geme jsonBuilder
class Mensaje
  attr_accessor :respuesta
  @respuesta
end
