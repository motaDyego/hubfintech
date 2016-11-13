class ContasController < ApplicationController
  before_action :set_conta, only: [:show, :edit, :update, :destroy]

  before_action :control
  def control
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = '*'
  end

  after_action :control2

  def control2
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = '*'
  end

  #evitando bloqueio por falta de autenticacao.
  protect_from_forgery

  # GET /contas
  # GET /contas.json
  def index
    @contas = Conta.all
    respond_to do |format|
        format.json { render json: @contas.to_json, status: :ok }
    end
  end

  # GET /contas/1
  # GET /contas/1.json
  def show
	respond_to do |format|
        format.json { render json: @conta.to_json, status: :ok }
    end
  end

  # GET /contas/new
  def new
    @conta = Conta.new
  end

  # GET /contas/1/edit
  def edit
  end

  # POST /contas
  # POST /contas.json
  def create  
    pai = params[:pai] ? Conta.find_by_id(params[:pai]): nil
    @conta = Conta.new(nome: params[:nome], status: params[:status])
    @conta.pai  = pai
    @conta.data_criacao = Time.now
    
    respond_to do |format|
      if @conta.save
        #format.html { redirect_to @conta, notice: 'Conta was successfully created.' }
        #format.json { render :show, status: :created, location: @conta }
        format.json { render json: @conta.to_json, status: :created }
        #@conta.to_json
      else
        #format.html { render :new }
        format.json { render json: @conta.errors, status: :unprocessable_entity }        
      end
    end
  end

  # PATCH/PUT /contas/1
  # PATCH/PUT /contas/1.json
  def update
    pai = params[:pai] ? Conta.find_by_id(params[:pai]): nil
    
    respond_to do |format|
      if @conta.update(nome: conta_params[:nome], status: conta_params[:status], pai: pai)        
        #format.json { render :show, status: :ok, location: @conta }
        format.json { render json: @conta.to_json, status: :ok }
      else        
        format.json { render json: @conta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contas/1
  # DELETE /contas/1.json
  def destroy
    if@conta.filiais.length == 0
      @conta.destroy
      respond_to do |format|
        format.html { redirect_to contas_url, notice: 'Conta was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      @conta.errors.add(:filiais, "não é possível remover uma conta que possui filiais" )
      respond_to do |format|        
        format.json { render json: @conta.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conta
      @conta = Conta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conta_params
      params.fetch(:conta, {})
    end
end
