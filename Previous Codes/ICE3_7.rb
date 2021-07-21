def is_digit (x)
	 if x.length != 1
		 return false
	 else
		 return x.to_i.to_s==x
	 end
end

def is_valid_nric? (nric)
	 nric= nric.upcase
	 checksum = 2*nric[1].to_i + 7*nric[2].to_i + 6*nric[3].to_i + 5*nric[4].to_i + 4*nric[5].to_i + 3*nric[6].to_i + 2*nric[7].to_i
	 
	 if nric.length != 9 || nric[0] != "S" || nric[0] != "F" || nric[0] != "G" || nric[0] != "T"
		 return false
	 elsif nric[0] == "G" || nric[0] == "T"
	 	 checksum= checksum+4
	 