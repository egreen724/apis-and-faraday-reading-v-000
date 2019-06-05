class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
     req.params['client_id'] = GAKQ41HUMIUDU4T0PRJH5PUKIZMKQFIUN3DZRMPIJRBF0PUL
     req.params['client_secret'] = OUED3CCEL5RRSPIPQX52GW1JPSGG2M0200MV30QOMTGFVAE4
     req.params['v'] = '20160201'
     req.params['near'] = params[:zipcode]
     req.params['query'] = 'coffee shop'
   end
   render 'search'
  end
end
