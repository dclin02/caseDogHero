class WelcomeController < ApplicationController
  def index
  end

    
  def searchCliente
    puts "IM HEEEEEEEEEEEEERRRRRRRRRRRRRRREEEEEEEEEEEEE"
    puts params
    if params[:email]
      @cliente = Cliente.find_by(email: params[:email])
      if @cliente.present?
        redirect_to @cliente
      else
        flash[:clienteNotice] = "Cliente não encontrado."
        redirect_to welcome_index_path
      end
    else
      redirect_to welcome_index_path
    end
  end

  def searchPasseadore
    if params[:pEmail]
      @passeadore = Passeadore.find_by(email: params[:pEmail])
      if @passeadore.present?
        redirect_to @passeadore
      else
        flash[:passeadoreNotice] = "Passeador não encontrado."
        redirect_to welcome_index_path
      end
    else
      redirect_to welcome_index_path
    end
  end  
end