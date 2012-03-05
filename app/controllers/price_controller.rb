class PriceController < ApplicationController
  autocomplete :auto, :name
  def index
    
  end
  
  def calc
    
  end
  
  def add
    
  end
  
  def create_type
    @type = Type.new(params[:type])
    @type.save
  end
  
  def create_auto
    names = params[:auto][:name].split(",")
    names.each do |x|
      @auto = Auto.new({:name => x.squish(), :type_id => params[:auto][:type_id]})
      @auto.save
    end
  end
end
