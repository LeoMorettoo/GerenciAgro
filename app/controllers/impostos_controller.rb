class ImpostosController < ApplicationController
  before_action :set_imposto, only: [:show, :edit, :update, :destroy]

  # GET /impostos
  # GET /impostos.json
  def index
    @impostos = Imposto.all
  end

  # GET /impostos/1
  # GET /impostos/1.json
  def show
    ##puts Transacao.find(2).cliente.nome
    ##puts Imposto.find(18).tabela_de_limites.limite_inferior
  end

  # GET /impostos/new
  def new
    @imposto = Imposto.new
    @imposto.tabela_de_limites.build
  end

  # GET /impostos/1/edit
  def edit
  end

  # POST /impostos
  # POST /impostos.json
  def create
    @imposto = Imposto.new(imposto_params)

    respond_to do |format|
      if @imposto.save
        format.html { redirect_to @imposto, notice: 'Imposto criado com sucesso.' }
        format.json { render :show, status: :created, location: @imposto }
      else
        format.html { render :new }
        format.json { render json: @imposto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /impostos/1
  # PATCH/PUT /impostos/1.json
  def update
    respond_to do |format|
      if @imposto.update_attributes(imposto_params)
        format.html { redirect_to @imposto, notice: 'Imposto atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @imposto }
      else
        format.html { render :edit }
        format.json { render json: @imposto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /impostos/1
  # DELETE /impostos/1.json
  def destroy
    @imposto.destroy
    respond_to do |format|
      format.html { redirect_to impostos_url, notice: 'Imposto deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imposto
      @imposto = Imposto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imposto_params
      params.require(:imposto).permit(:descricao, :titulo, tabela_de_limites_attributes: [:id, :limite_inferior, :limite_superior, :aliquota, :_destroy])
    end
end
