class AdminsController < ApplicationController
  def dash
  end

  def showClientes
    @clientes = Cliente.all
  end

  def showDogs
    @clientes = Cliente.all
  end

  def showPasseadores
  end
end
