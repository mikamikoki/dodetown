class SearchesController < ApplicationController

  def search
    # viewのform_tagにて
    # 選択したmodelの値を@modelに代入。
    @model = params["model"]
    # 選択した検索方法の値を@methodに代入。
    @method = params["method"]
    # 検索ワードを@contentに代入。
    @content = params["content"]
    # @model, @content, @methodを代入した、
    # search_forを@recordsに代入。
    @records = search_for(@model, @content, @method)
  end

  private
  def search_for(model, content, method)

    # 選択したモデルがuserだったら
    if model == 'user'
      # 選択した検索方法がが完全一致だったら
      if method == 'perfect'
      return User.where(name: content)
      # 選択した検索方法がが部分一致だったら
      elsif method == 'partial'
      return User.where('name LIKE ?', '%'+content+'%')
      # 選択した検索方法がが前方一致だったら
      elsif method == 'forward_match'
      return User.where('name LIKE ?', content+'%')
      # 選択した検索方法がが後方一致だったら
      elsif method == 'backward_match'
      return User.where('name LIKE ?', '%'+content)
      end
    # 選択したモデルがpost_imageだったら
    elsif model == 'post_image'
      # 選択した検索方法がが完全一致だったら
      if method == 'perfect'
      return PostImage.where(shop_name: content)
      # 選択した検索方法がが部分一致だったら
      elsif method == 'partial'
      return PostImage.where('shop_name LIKE ?', '%'+content+'%')
      # 選択した検索方法がが前方一致だったら
      elsif method == 'forward_match'
      return PostImage.where('shop_name LIKE ?', content+'%')
      # 選択した検索方法がが後方一致だったら
      elsif method == 'backward_match'
      return PostImage.where('shop_name LIKE ?', '%'+content)
      end
    end
  end
end
