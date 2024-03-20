class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def register
    # 登録作成用
  end

  def detail
    @product = Product.find_by(id: params[:id])
    if @product == nil
      flash[:notice] = "商品が見つかりません"
      redirect_to('/home/top')
    end

  end

  def create
    # 登録用
    product = Product.new(name:  params['name'], price: params['price'], description: params['description'])

    if params[:image]
      extension = File.extname(params[:image].original_filename)
      random_filename = SecureRandom.uuid + extension
      product.image = random_filename
      image = params[:image]
      File.binwrite("public/products/#{product.image}", image.read)
    else
      product.image = "default.png"
    end

    if product.save
      flash[:notice] = "出品に成功しました"
      redirect_to('/home/top')
    else
      flash[:notice] = "出品に失敗しました"
      render("products/sell")
    end
  end
  
  def update
    # 登録更新用
  end

  def destory
    @product = Product.find(params[:id])
    @product.destroy
    #TODO 画像ファイルも削除
    redirect_to products_path, notice: "削除しました。"
  end


end
