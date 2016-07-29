require 'pry'

pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
}


def nyc_pigeon_organizer(data)
  # write your code here!
   pigeion_names_hash = {}
    data.each{|attribute, data| 
      data.each{|key, value|
        value.each{|name|
        	pigeion_names_hash[name] ||= {}
        	pigeion_names_hash[name][attribute] ||=[]
        	pigeion_names_hash[name][attribute] << key.to_s
        }
      } 	  
    }
 
   pigeion_names_hash
end
# binding.pry








