class MarksController < ApplicationController
  before_action :set_mark, only: [:show]
  before_action :authenticate_user!, except: [:show]
  #before_action :authenticate_normal!, except: [:index, :show]

  # GET /marks
  # GET /marks.json
  def index
    @marks = Mark.all
  end

  # GET /marks/1
  # GET /marks/1.json
  def show
    @products = Product.where(mark_id: params[:id]) #COMO ARMAR UN SCOPE CON ESTO
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mark
      @mark = Mark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mark_params
      params.require(:mark).permit(:name)
    end
end
