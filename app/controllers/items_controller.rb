class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_todo
  before_action :set_todo_item, only: [:show, :update, :destroy]

  # GET /items
  def index
    @items = @todo.items

    render json: @todo.items
  end

  # GET /items/1
  def show
    render json: @item
  end

  # POST /items
  def create
    @item = @todo.items.create!(item_params)

    render json: @item
    # if @item.save
    #   render json: @item, status: :created, location: @item
    # else
    #   render json: @item.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_item
    #   @item = Item.find(params[:id])
    # end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:name, :done, :priority, :due_date, :user_id, :todo_id)
    end

    def set_todo
      @todo = Todo.find(params[:todo_id])
    end

    def set_todo_item
      @item = @todo.items.find_by!(id: params[:id]) if @todo
    end


end
