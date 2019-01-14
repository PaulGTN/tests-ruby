# ma version (ne prend que des caractères spéciaux prédefinis, donc pas universel, donc pas juste)
# résultats ok mais raisonnement faux
# essai tardif, Vincent ne le verra sans doute pas, de toute façon ce n'est pas le bon résultat
def translate(s)
	# Description des voyelles
	vowels = ["a", "e", "i", "o", "u"]    
	
	# Consonnes à prendre en compte
	two_letter_consonants = ["ch", "sh", "qu", "th", "br"]
	three_letter_consonants = ["thr", "sch", "squ"]    
	
	# Séparer chaque mot dans la phrase
	words = s.split(" ")    
	
	#Emplacement des mots une fois traités
	result = []    
	
	words.each do |word|
		
		# Mots qui commencent pas une voyelle
		if vowels.include? word[0]
			result.push word << 'ay'        
			
			# Mots qui commencent pas une ou plusieurs consonnes
		else
			# Vérifier la présence de consonnes particulières
			if three_letter_consonants.include? word[0] + word[1] + word[2]
				# Découper les 3 premières lettres
				first_three_letters = word.slice!(0,3)               
				 # Mettre les lettres à la fin et ajouter 'ay'
				result.push word << first_three_letters << 'ay'            
			elsif  two_letter_consonants.include? word[0] + word[1]
				# Découper les 2 premières lettres
				first_two_letters = word.slice!(0,2)                
				# Mettre les lettres à la fin et ajouter 'ay'
				result.push word << first_two_letters << 'ay'           
			 else
				# Découper la première lettre
				first_letter = word.slice!(0)                
				# Mettre la lettra à la fin et ajouter 'ay'
				result.push word << first_letter << 'ay'
			end       
		end    
	end
		 
	#Remettre les mots traités dans un seul string
	return result.join(" ")
end

# solution ok 1
=begin
def translate(word)
	word = word.split(" ")
	temp = []
	for i in 0..word.length-1
		temp = word[i]
		if temp[0] =~ /[aeiou]/
			temp =  temp + "ay"
		elsif temp[0] == "q" && temp[1] == "u"
			temp = temp[2..temp.length-1] + temp[0..1] + "ay"	
		else
			for j in 0..temp.length-1
				if temp[j] == "a" || temp[j] == "e" || temp[j] == "i" || temp[j] == "o"
					temp =  temp[j..temp.length-1] + temp[0..j-1] + "ay"
					break
				end
			end
		end
		word[i] = temp
	end
	word.join(" ")
end
=end


# solution ok 2
=begin
def translate (a)
    vowels = %w{a e i o u}
    a.gsub(/(\A|\s)\w+/) do |str|
            str.strip!
        while not vowels.include? str[0] or (str[0] == 'u' and str[-1] == 'q')
            str += str[0]
            str = str[1..-1]
        end
        str  = ' ' + str + 'ay'
    end.strip
end
=end 

# brouillon 1
=begin
def translate(s)
    word = s.split (" ")

    if 
=end

# brouillon 2
=begin
def translate(s)
    s.split.include?{/aeiou/}.insert("ay")
    
    
	end
=end 


