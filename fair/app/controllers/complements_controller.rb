class ComplementsController < ApplicationController
  before_action :set_complement, only: [:show, :edit, :update, :destroy, :list]
  before_action :set_list, only: [:new, :edit, :update]

  # GET /complements
  # GET /complements.json
  def index
    if params[:tipo]
      @complements = Complement.where(tipo: params[:tipo])
      $tipo_selected = params[:tipo]
    else
      @complements = Complement.all
      $tipo_selected = nil
    end
  end

  # GET /complements/1
  # GET /complements/1.json
  def show
  end

  # GET /complements/new
  def new
    @complement = Complement.new
  end

  # GET /complements/1/edit
  def edit
  end

  # POST /complements
  # POST /complements.json
  def create
    @complement = Complement.new(complement_params)

    respond_to do |format|
      if @complement.save
        format.html { redirect_to @complement, notice: 'Complement was successfully created.' }
        format.json { render :show, status: :created, location: @complement }
      else
        format.html { render :new }
        format.json { render json: @complement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complements/1
  # PATCH/PUT /complements/1.json
  def update
    respond_to do |format|
      if @complement.update(complement_params)
        format.html { redirect_to @complement, notice: 'Complement was successfully updated.' }
        format.json { render :show, status: :ok, location: @complement }
      else
        format.html { render :edit }
        format.json { render json: @complement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complements/1
  # DELETE /complements/1.json
  def destroy
    @complement.destroy
    respond_to do |format|
      format.html { redirect_to complements_url, notice: 'Complement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complement
      @complement = Complement.find(params[:id])
    end

    def set_list
      unless $tipo_selected
        
        puts 'aqui............'
      
        @lit_tipos = Complement.where(tipo: 'Tipo').distinct(:nome)
      end if $tipo_selected
      puts 'aqui............'
      puts $tipo_selected
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def complement_params
      params.require(:complement).permit(:nome, :tipo, :grouping, :inf, :coments)
    end
end
