    class Recipe
  	include HTTParty

    base_uri "http://www.recipepuppy.com/api/"
    #default_params p:'2'
    format :json

    def self.all(term)
      if term == 'amarula'
      	all_recipe = get('',query:{q: term,p: 2})['results']
      else
      	all_recipe = get('',query:{q: term,p: 1})['results']	
      end
    end
  end

#  p Recipe.all('amarula')