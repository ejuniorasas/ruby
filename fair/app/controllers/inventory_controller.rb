class InventoryController < ApplicationController
	before_action :set_data_form, only: [:edit, :update, :new]

  def new
  	@inventory = Inventory.new
  	@sale = Sale.find(params[:id])
  end

  def show
  end


private

	def set_data_form
		@produtos Complement.where(tipo:Produto)

	end

end
