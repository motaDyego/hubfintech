class PessoasController < ApplicationController
  before_action :set_pessoa, only: [:show, :edit, :update, :destroy]

#evitando bloqueio por falta de autenticacao.
  protect_from_forgery

  # GET /pessoas
  # GET /pessoas.json
  def index
    @pessoas = Pessoa.all
    respond_to do |format|
        format.json { render json: @pessoas.to_json, status: :ok }
    end
  end

  # GET /pessoas/1
  # GET /pessoas/1.json
  def show
  end

  # GET /pessoas/new
  def new
    @pessoa = Pessoa.new
  end

  # GET /pessoas/1/edit
  def edit
  end

  # POST /pessoas
  # POST /pessoas.json
  def create
    if params[:type] == "Juridica"
      @pessoa = Pessoa.new(pessoa_params)
    elsif params[:type] == "Fisica"
      pessoa = Fisica.new(pessoa_params)
    end

    #@pessoa = Pessoa.new(pessoa_params)

    respond_to do |format|
      if @pessoa.save
        #format.json { render :show, status: :created, location: @pessoa }
        format.json { render json: @pessoa.to_json, status: :created }
      else
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoas/1
  # PATCH/PUT /pessoas/1.json
  def update
    respond_to do |format|
      if @pessoa.update(pessoa_params)
        #format.json { render :show, status: :ok, location: @pessoa }
        format.json { render json: @conta.to_json, status: :ok }
      else
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoas/1
  # DELETE /pessoas/1.json
  def destroy
    @pessoa.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa
      @pessoa = Pessoa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pessoa_params
      params.fetch(:pessoa, {})
    end
end
