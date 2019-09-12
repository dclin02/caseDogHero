class WelcomeController < ApplicationController
  def index
  end

  def searchCliente
    getCliente
    redirect_to getNextPage("clienteSearch")
  end

  def searchPasseadore
    getPasseadore
    redirect_to getNextPage("passeadoreSearch")
  end

  def getCliente
    @cliente = Cliente.find_by(email: params[:email])
  end

  def getPasseadore
    @passeadore = Passeadore.find_by(email: params[:pEmail])
  end

  private
  
def getNextPage(oqProcuro)
    if oqProcuro == "clienteSearch"
      if @cliente.present?
        return @cliente
      else
        flash[:clienteNotice] = "Cliente não encontrado."
        return welcome_index_path
      end

    elsif oqProcuro == "passeadoreSearch"
      if @passeadore.present?
        return @passeadore
      else
        flash[:passeadoreNotice] = "Passeador não encontrado."
        return welcome_index_path
      end
    else
      flash[:nextPageNotice] = "Parametro de Pesquisa Desconhecido."
      return welcome_index_path
    end
  end
end