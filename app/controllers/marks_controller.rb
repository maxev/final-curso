class MarksController < ApplicationController
  before_action :set_mark, only: [:show]



  def index
    @marks = Mark.all
  end

  
  def show
    @products = Product.where(mark_id: params[:id])
  end

  private
    
    def set_mark
      @mark = Mark.find(params[:id])
    end

   
    def mark_params
      params.require(:mark).permit(:name)
    end
end
