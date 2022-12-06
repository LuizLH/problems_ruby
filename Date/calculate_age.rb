#Calculate Age

#Given the current date and birth date, find the present age. 

#Examples: 

#Input : Birth date = 07/09/1996 
#        Present date = 07/12/2017
#Output : Present Age = Years: 21  Months: 3  Days: 0

def calculateAge(prCurrent_date, prBirth_date)

    cur_date = prCurrent_date.split('/', -1)
    bir_date = prBirth_date.split('/', -1)

    mes = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    #Time.new(1972, 07, 10)  # (format: year/month/day)
    #Time.new(dmy[2], dmy[1], dmy[0])

    current_date  = cur_date[0].to_i 
    current_month = cur_date[1].to_i
    current_year  = cur_date[2].to_i

    birth_date    = bir_date[0].to_i
    birth_month   = bir_date[1].to_i
    birth_year    = bir_date[2].to_i

    # if birth date is greater than
    # current date, then do not
    # count this month and add 30 to the
    # date so as to subtract the date and
    # get the remaining days
    if (birth_date > current_date)
        current_month -= 1
        current_date = current_date + mes[birth_month - 1]
    end

    # if birth month exceeds current month,
    # then do not count this year and add
    # 12 to the month so that we can
    # subtract and find out the difference
    if (birth_month > current_month)
        current_year  = current_year - 1
        current_month = current_month + 12
    end

    # calculate date, month, year
    calculated_date  = current_date - birth_date
                    
    calculated_month = current_month - birth_month
                   
    calculated_year  = current_year - birth_year

    # print the present age
    puts "Present Age"
    puts "Years: #{calculated_year} Months: #{calculated_month} Days #{calculated_date}"
end

dataHoje   = "05/12/2022"
dataAniver = "10/07/1972"

calculateAge(dataHoje, dataAniver)

#Present Age
#Years: 7  Months: 11  Days: 22
dataHoje   = "07/12/2017"
dataAniver = "16/12/2009"

calculateAge(dataHoje, dataAniver)

#Present Age 
#Years: 21  Months: 3  Days: 0
dataHoje   = "07/12/2017"
dataAniver = "07/9/1996"

calculateAge(dataHoje, dataAniver)