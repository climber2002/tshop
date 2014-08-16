module Spree
  class HomeController < TshopBaseController
    helper 'spree/products'
    respond_to :html

    def index
      @searcher = build_searcher(params)
      @products = @searcher.retrieve_products
    end

  end
end