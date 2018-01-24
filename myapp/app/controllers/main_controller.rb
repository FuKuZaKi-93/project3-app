class MainController < ApplicationController
  def index
  end
  
  def history
    if params[:cancel]
      redirect_to controller: :main, action: :index
    end
    
    if params[:distance].nil?
      @distance = 0
    else
      @distance = params[:distance].to_i
    end
    
    if params[:heavy].nil?
      @heavy = 0
    else
      @heavy = params[:heavy].to_i
    end
    
    @energy = 1.05 * @distance * @heavy
    
    @start = params[:start]
    
    if params[:via].nil?
      @via = ""
    else
      @via = params[:via].to_s
    end
  end
  
  def create
    
  end
end
