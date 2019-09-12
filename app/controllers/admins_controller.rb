class AdminsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin"
  
  def dash
  end
  
  def showClientes
    @clientes = Cliente.all
  end
  
  def showDogs
    @clientes = Cliente.all
  end
  
  def showPasseadores
    @passeadores = Passeadore.all
  end
end
