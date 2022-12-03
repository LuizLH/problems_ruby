#Given a string, write a program to count the occurrence of Lowercase characters, 
#Uppercase characters, Special characters, and Numeric values. 

#My personal implementation
def countTypeChar(phrase)
    upper   = 0 
    lower   = 0
    number  = 0 
    special = 0

    for i in (0..phrase.length-1)
        case phrase[i].ord
        when 65..90  then upper  += 1
        when 97..122 then lower  += 1
        when 48..57  then number += 1
        else
            special += 1
        end
    end

    puts "Upper case letters: #{upper}"
    puts "Lower case letters: #{lower}"
    puts "Numbers           : #{number}"
    puts "Special characters: #{special}"
end

#Upper case letters: 5
#Lower case letters : 8
#Number : 4
#Special characters : 2
countTypeChar("#GeeKs01fOr@gEEks07")
puts ""

#Upper case letters : 6
#Lower case letters : 4
#Numbers : 1
#Special Characters : 2
countTypeChar("*GeEkS4GeEkS*")