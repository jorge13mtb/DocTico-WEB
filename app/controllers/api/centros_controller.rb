class Api::CentrosController < ApplicationController
  def index
    @centros = Centro.all
  end

  def autenticar_usuario
   @mensaje = Mensaje.new

    @usuario = Usuario.find_by Email: params[:email]
   
   #  usuario = Usuario.find_by Email: params[:email]
   # if usuario && usuario.authenticate(params[:password])
   #   @mensaje.respuesta = "Si"
   # else
   #   @mensaje.respuesta = "No"
   #end
  end
end


# Esta clase es para devolver el token
# Estoy usando la geme jsonBuilder
class Mensaje
  attr_accessor :respuesta
  @respuesta
end
