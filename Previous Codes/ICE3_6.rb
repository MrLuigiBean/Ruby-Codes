def is_palindrome (n)
	 len= (n.to_s).length
	 for a in 0...len
		 if n[a]==n[len-1-a]
			 return false
		 else
			 return true
		 end
	 end 
end

