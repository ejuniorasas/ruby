class InventoryController < ApplicationController
	def new
		@inventory = Inventory.new
	end
end
