#Find the largest three distinct elements

def findLargest3Dist(list)
    first  = 0  ## Maior
    second = 0
    third  = 0  ## Menor

    list.each do |x| 
        if x > first
            # This order of assignment is important
            third = second
            second = first
            first = x   
        elsif (x > second) and (x != first)
            third = second
            second = x 
        elsif (x > third) and (x != second)
            third = x
        end 
    end
    
    puts "Output: #{first}, #{second}, #{third}"
end



lista = [10, 4, 3, 50, 23, 90]

#Output: 90, 50, 23
findLargest3Dist(lista)

puts ""

lista = [12, 13, 1, 10, 34, 1]

#Output: 34, 13, 12
findLargest3Dist(lista)