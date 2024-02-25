class ProductsController < ApplicationController
  def show
    @products = Product.all
  end

  def register
    # 登録作成用
  end

  def create
    # 登録用
    product = Product.new(name:  params['name'], price: params['price'])
    product.save
    redirect_to('/home/top')
  end
  
  def update
    # 登録更新用
  end

  def delete
    # 削除用
  end


end
