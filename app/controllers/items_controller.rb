class ItemsController < ApplicationController
  def index
    @items = facade.all_items
  end

  def show 
    @item = facade.all_items.find { |item| item.id == params[:id] }
  end

  def facade
    @facade ||= RailsEngineFacade.new
  end
end