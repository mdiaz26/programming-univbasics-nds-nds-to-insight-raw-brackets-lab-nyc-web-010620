$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  total_hash = {}
  first_index = 0 
    while first_index < nds.length 
      name_of_director = nds[first_index][:name]
      movie_number = 0 
        while movie_number < nds[first_index][:movies].length
          movies_data = nds[first_index][:movies][movie_number]
          total_amount = movies_data[:worldwide_gross]
          movie_number += 1
          total_hash[name_of_director] = total_amount
        end
      first_index += 1
    end
  return total_hash
end
