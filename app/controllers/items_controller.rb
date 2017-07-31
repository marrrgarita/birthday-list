class ItemsController < ApplicationController

def index
  @items = Item.all
end

def show
  @item = Item.find(params[:id])
end

def new
  @item = Item.new
end

def create
  @item = Item.new(item_params)

    if @item.save
        redirect_to items_url
    else
      render :new
    end
end

def edit
  @item = Item.find(params[:id])
end

def update
  @item = Item.find(params[:id])

  if @item.update_attributes(item_params)
    redirect_to item_url(@item)
  else
    render :edit
  end
end

def destroy
  @item = Item.find(params[:id])
  @item.destroy
  redirect_to items_url
end

private

  def item_params
    params.require(:item).permit(:title, :description, :image, :url, :price)
  end

end
