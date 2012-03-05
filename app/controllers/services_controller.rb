class ServicesController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def article
  end
  
  def create
    @article = Services.new(params[:article])
    @article.save
  end
end
