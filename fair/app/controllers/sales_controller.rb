class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]

  # GET /sales
  # GET /sales.json
  def index
    @sales = Sale.all
  end

  # GET /sales/1
  # GET /sales/1.json
  def show
  end

  # GET /sales/new
  def new
    @sale = Sale.new
  end

  def new_item
    @item_sale = ItemSale.new
  end

  # GET /sales/1/edit
  def edit
    show
  end

  def edit_item
    show
  end
  def edit_env
    show
  end
  def delete_item
    show
  end
  def delete_env
    show
  end

  # POST /sales
  # POST /sales.json
  def create
    @sale = Sale.new(sale_params)

    respond_to do |format|
      if @sale.save
        format.html { redirect_to @sale, notice: 'Sale was successfully created.' }
        format.json { render :show, status: :created, location: @sale }
      else
        format.html { render :new }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to @sale, notice: 'Sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale }
      else
        format.html { render :edit }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    def set_collections
      @produtos = Complement.where(tipo: 'Produto').order(:nome)
      @clientes = Complement.where(tipo: 'Cliente')
      @clientes.push(Complement.where(tipo: 'Cliente/Fornec.'))
      @fornecedores = Complement.where(tipo: 'Fornecedor')
      @fornecedores.push(Complement.where(tipo: 'Cliente/Fornec.'))
      
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_params
      params.require(:sale).permit(:data_ini, :data_fim, :status, :fair_inventory_from,:date_closed, :coments)
    end
end
