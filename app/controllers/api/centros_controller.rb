class Api::CentrosController < ApplicationController
  def index
    @centros = Centro.all
  end
end
