require "faraday"
require "oj"

class HomeController < ApplicationController
    def index
        response = Faraday.get("https://opendata.paris.fr/api/records/1.0/search/?dataset=sanisettesparis&q=&rows=551&facet=type&facet=statut&facet=arrondissement&facet=horaire&facet=acces_pmr&facet=relais_bebe")
        @data = Oj.strict_load(response.body, symbol_keys: true)
        
        #puts Oj.strict_load(response.body)
    end
end
