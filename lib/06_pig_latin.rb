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
