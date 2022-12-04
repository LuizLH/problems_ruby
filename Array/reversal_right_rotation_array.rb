#Reversal Algorithm Right Rotation Array

def rotate(list, k)
    
    (1..k).each do
        n = list.length
        temp = list[n-1]
        until n == 1
            n -= 1
            #puts "->#{n}, #{n-1}"
            list[n] = list[n-1]
        end
        list[0] = temp
    end
end

lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#k = 3
#Output: 8 9 10 1 2 3 4 5 6 7
rotate(lista, 3)
p lista

lista = [121, 232, 33, 43 ,5]

#k = 2
#Output: 43 5 121 232 33
rotate(lista, 2)
p lista