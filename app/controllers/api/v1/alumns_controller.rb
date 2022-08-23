class Api::V1::AlumnsController < ApplicationController
  before_action :set_alumn, only: %i[ show update destroy ]
  include SessionsConcern

  # GET /alumns
  def index
    @alumns = Alumn.all

    render json: @alumns.includes(grades: :course)
  end

  # GET /alumns/1
  def show
    render json: @alumn, serializer: AlumnSerializer
  end

  # POST /alumns
  def create
    @alumn = Alumn.new(alumn_params)

    if @alumn.save
      render json: @alumn, status: :created
    else
      render json: @alumn.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /alumns/1
  def update
    if @alumn.update(alumn_params)
      render json: @alumn
    else
      render json: @alumn.errors, status: :unprocessable_entity
    end
  end

  # DELETE /alumns/1
  def destroy
    @alumn.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumn
      @alumn = Alumn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alumn_params
      params.require(:alumn).permit(:name)
    end
end
