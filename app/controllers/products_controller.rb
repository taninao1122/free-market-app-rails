class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def register
    # 登録作成用
  end

  def create
    # 登録用
    product = Product.new(name:  params['name'], price: params['price'])
    if product.save
      redirect_to('/home/top')
    else
      render("products/sell")
    end
  end
  
  def update
    # 登録更新用
  end

  def destory
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, notice: "削除しました。"
  end


end
