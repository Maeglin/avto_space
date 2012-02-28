class MainController < ApplicationController
  def index
    page = Main.find(1)
    @title = page.name
    @content = page.content
  end
end