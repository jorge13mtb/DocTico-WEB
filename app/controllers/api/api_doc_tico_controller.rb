class Api::ApiDocTicoController < ApplicationController
  def autenticar_usuario
    @usuarios = Usuario.all
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
