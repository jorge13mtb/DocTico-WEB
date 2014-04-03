class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, only: [:edit, :update, :show, :index]
  before_action :correct_user,   only: [:edit, :update]

  def index
    @usuarios = Usuario.all
  end

  def show
    @usuario = Usuario.find(params[:id])  
    @centros = @usuario.centros
  end

  def new
    @usuario = Usuario.new
  end

  def edit
  end

  def create
    @usuario = Usuario.new(usuario_params)

      if @usuario.save
        redirect_to @usuario
    else
      render 'new'
    end
  end

  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Usuario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:nombre, :email, :password, :password_confirmation)
    end

    def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end

    def correct_user
     @usuario = Usuario.find(params[:id])
      redirect_to(root_url) unless current_user?(@usuario)
    end
end
