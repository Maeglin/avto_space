class PriceController < ApplicationController
  def index
	@services = [['Малая химическая чистка', :clean_m], ['Средняя химическая чистка', :clean_n], ['Сильная химическая чистка', :clean_b], ['Восстанавливающая полировка', 3], ['Защитная полировка', 4], ['Нанесение полимерной керамики', 5]]
  end
  
  def calc
    @summary = 0
    params[:auto][:services].each do |service|
      case service[1]
      when 0
        @summary += Type.find(params[:auto][:type_id]).clean_m
      when 1
        @summary += Type.find(params[:auto][:type_id]).clean_n
      when 2
        @summary += Type.find(params[:auto][:type_id]).clean_b
      when 3
        @summary += Type.find(params[:auto][:type_id]).resto
      when 4
        @summary += Type.find(params[:auto][:type_id]).defend
      when 5
        @summary += Type.find(params[:auto][:type_id]).ceramic
      else
        @summary += 0
      end
   end
   respond_to do |format|
     format.json { render :json => @summary }
   end
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
