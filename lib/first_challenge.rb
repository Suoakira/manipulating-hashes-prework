require 'pry'

def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #your code here
  contacts["Jon Snow"][:favorite_icecream_flavors] << "mint chip"
  contacts["Jon Snow"][:address] = "The Lord Commander's Rooms, The Wall, Westeros"
  puts contacts
  contacts
  
  contacts.each do |person, data|
    data.each do |detail, values|
          if detail == :favorite_icecream_flavors
            values.delete_if do |icecream|
              icecream == "strawberry"
            end
          end    
      end
    end
  contacts
end

