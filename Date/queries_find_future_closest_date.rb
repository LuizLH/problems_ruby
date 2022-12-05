#Queries to find the future closest date
#Given an array arr[] consisting of N strings and an array Query[] consisting of Q queries. 
#Each string in arrays arr[] and Query[] is of the form D/M/Y where D, M and Y denotes the date, 
#month and year. For each query, the task is to print the next closest date from the given array arr[]. 
#If no such date exists, print “-1”.

#
def find_future_closest_date(list, qry)

    dateList = Array.new
    list.each do |d|
        dmy = d.split('/', -1)
        d = Time.new(dmy[2], dmy[1], dmy[0])
        dateList.append(d)
    end 
    dateList = dateList.sort

    qryList = Array.new
    qry.each do |q|
        qr = q.split('/', -1)
        q = Time.new(qr[2], qr[1], qr[0])
        qryList.append(q)
    end

    #Compare
    future = -1
    qryList.each do |q|
        future = -1
        dateList.each do |d, i|
            if (future == -1) and (d > q) 
                future = d
            end
        end
        puts future
    end
end

lista = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"] 
query = ["23/3/4345", "12/3/2"]

find_future_closest_date(lista, query)
#Output:
#3/5/56645
#4/12/233
#Explanation:
#Query 1: The closest date after “23/3/4345” is “23/5/56645”.
#Query 2: The closest date after “12/3/2” is “4/12/233”.

lista = ["22/4/1233", "4/12/233", "1/3/633", "23/5/56645"] 
query = ["4/4/34234234"]

find_future_closest_date(lista, query)
#Output: -1

