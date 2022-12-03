#Pangram is a sentence containing every letter in the English alphabet. 
#Given a string, find all characters that are missing from the string, i.e., 
#the characters that can make the string a Pangram. We need to print output 
#in alphabetic order.
require "benchmark"

#My personal implementation
def pangram(phrase)

    result = Array.new

    for i in (97..122)
        result.append(i.chr)
        for x in (0..phrase.length-1)
            if (i.chr == phrase[x].downcase)
                result.delete_at(result.length-1)
                break
            end
        end
    end

    result.join()
end

#Output abdhijnpquvxyz
result = Benchmark.measure do
    puts pangram("welcome to geeksforgeeks")
end

puts result

#Output adglvyz
result = Benchmark.measure do
    puts pangram("The quick brown fox jumps")
end

puts result