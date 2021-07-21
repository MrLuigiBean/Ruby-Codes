def get_description (room)
	 if room== "hall"
		 return "You can't see a thing."
	 elsif room== "study"
		 return "It smells of old books."
	 else room== "kitchen"
		 return "A cockroach scampers past."
	 end
end

def move(current_location, direction)
    if(current_location == "hall" && direction == "E")
        current_location = "study"
		return current_location
		
    elsif(current_location == "hall" && direction == "S")
        current_location = "kitchen"    
		return current_location
		
	elsif(current_location == "study" && direction == "W")
        current_location = "hall"
		return current_location
		
	elsif(current_location == "kitchen" && direction == "N")
        current_location = "hall"
		return current_location
		
	elsif(current_location == "kitchen" && direction == "E")
        has_escaped = true #means that user has escaped!
        return current_location
		
    else
        return "You cannot move in that direction."
        
    end
end
