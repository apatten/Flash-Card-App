class PagesController < ApplicationController

  def index
    @lists = List.all
  end

end
