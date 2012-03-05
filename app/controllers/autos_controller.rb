class AutosController < ApplicationController
  def index
    @autos = Auto.order(:name).where("name like ?", "#{params[:term]}")
    render json: @autos.map(&:name)
  end
end
