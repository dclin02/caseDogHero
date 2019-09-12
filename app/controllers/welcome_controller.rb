class WelcomeController < ApplicationController
  def index
  end

    
  def searchCliente
    if params[:email]
      @cliente = Cliente.find_by(email: params[:email])
      if @cliente.present?
        redirect_to @cliente
      else
        flash[:notice] = "Cliente não encontrado."
        redirect_to welcome_index_path
      end
    else
      redirect_to welcome_index_path
    end
  end
end