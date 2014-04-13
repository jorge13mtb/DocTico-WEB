class Api::ApiDocTicoController < ApplicationController
  def autenticar_usuario
    @mensaje = Mensaje.new
    @mensaje.respuesta = ""

    usuario = Usuario.find_by email: params[:email]
    if usuario && usuario.authenticate(params[:password])
      usuario.update_attribute :token_app_movil, Usuario.hash(Usuario.new_remember_token)
    end
    @mensaje.respuesta = usuario.token_app_movil if usuario.token_app_movil != nil
  end


  def nuevo_usuario
    @mensaje = Mensaje.new
    @mensaje.respuesta = "No"
    @usuario = Usuario.new(:nombre => params[:nombre], :email => params[:email], :password => params[:password], 
                           :password_confirmation => params[:password_confirmation])
  
    @mensaje.respuesta = "Si" if @usuario.save
  end


  def validar_token token
    usuario = Usuario.find_by token_app_movil: token
    return true if usuario
  end


  def cerrar_sesion
    @mensaje = Mensaje.new
    @mensaje.respuesta = "No"

    usuario = Usuario.find_by token_app_movil: params[:token]
    if usuario
      usuario.update_attribute :token_app_movil, Usuario.hash(Usuario.new_remember_token)
      @mensaje.respuesta = "Si"
    end 
 end


  def centros_salud
    @centros = Centro.all if validar_token params[:token]
  end


  def citas
  end


  def nueva_cita
  end


  def presion_arterial
    usuario = Usuario.find_by token_app_movil: params[:token]
    @muestras = nil
    if usuario 
      @muestras = usuario.presion_arterials
    end

  end


  def nueva_presion_arterial
    @mensaje = Mensaje.new
    @mensaje.respuesta = "No"

    usuario = Usuario.find_by token_app_movil: params[:token]
    if usuario
      muestra_presion = usuario.presion_arterials.build(:hora => "hora", :fecha => "i", 
                                                        :sistolica => 140, :diastolica => 39)
      @mensaje.respuesta = "Si" if muestra_presion.save
    end

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
