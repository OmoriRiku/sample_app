class ListsController < ApplicationController
  # 投稿画面
  def new
    @list = List.new
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to list_path(list.id)
  end

  # 一覧画面
  def index
    @lists = List.all
  end

  # 詳細画面
  def show
    @list = List.find(params[:id])
  end

  # 編集画面
  def edit
    @list = List.find(params[:id])
  end
  
  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end
  
  # ストロングパラメータ
  private
  def list_params
    params.require(:list).permit(:title,:body,:image)
  end
end
