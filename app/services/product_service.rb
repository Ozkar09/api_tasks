class ProductService < ServiceBase

  BASE_URI = 'https://apirocks.herokuapp.com/api/v1/products'

  def self.all
    HTTParty.get(BASE_URI).parsed_response
  end

end
