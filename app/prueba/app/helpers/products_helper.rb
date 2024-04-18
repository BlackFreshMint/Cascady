module ProductsHelper
    def get_product(product_id)
        Product.find(id) if Product.id.present?
    end
end
