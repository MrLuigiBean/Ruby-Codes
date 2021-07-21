def check_results (push_up, sit_up, run)
	 bronze = (push_up+sit_up>=10) || (run <= 13)
	 silver = bronze && (push_up+sit_up>=20) && (run<=12)
	 gold = silver && (push_up >=8) && (sit_up >= 8) && (run <= 10)

	 if gold
	     return "Award: Gold"
	 elsif silver
		 return "Award: Silver"
	 elsif bronze
		 return "Award: Bronze"
	 else
		 return "Award: Nil"
	 end
end
