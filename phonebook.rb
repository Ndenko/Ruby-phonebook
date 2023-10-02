class PhoneBook
    
    @listed_database 
    @unlisted_database 
    @shared_database

    def initialize
        @listed_database = [[]]
        @unlisted_database = [[]]
        @shared_database = [[]]
        
    end

    def add(name, number, is_listed)
        #If the person already exists, then the entry
        #cannot be added to the PhoneBook.

        #Search both databases for this name, if either find them, we will
        #not add this entry
        entry = 1
        while entry < @listed_database.length()
            if name == @listed_database[entry][0]
                #puts "Name already exists1"
                return false
            end
            entry += 1
        end
        entry = 1
        while entry < @unlisted_database.length()
            if name == @unlisted_database[entry][0]
                #puts "Name already exists2"
                return false
            end
            entry += 1
        end
        
        #If number is not in the format NNN-NNN-NNNN,
        #the entry cannot be added to the PhoneBook.
        if (number.to_s[0] !=  '0' &&
            number.to_s[0] !=  '1' &&
            number.to_s[0] !=  '2' &&
            number.to_s[0] !=  '3' &&
            number.to_s[0] !=  '4' &&
            number.to_s[0] !=  '5' &&
            number.to_s[0] !=  '6' &&
            number.to_s[0] !=  '7' &&
            number.to_s[0] !=  '8' &&
            number.to_s[0] !=  '9')
            #puts "First char invalid"
            return false
        end
        if (number.to_s[1] !=  '0' &&
            number.to_s[1] !=  '1' &&
            number.to_s[1] !=  '2' &&
            number.to_s[1] !=  '3' &&
            number.to_s[1] !=  '4' &&
            number.to_s[1] !=  '5' &&
            number.to_s[1] !=  '6' &&
            number.to_s[1] !=  '7' &&
            number.to_s[1] !=  '8' &&
            number.to_s[1] !=  '9')
            #puts "Second char invalid"
            return false
        end
        if (number.to_s[2] !=  '0' &&
            number.to_s[2] !=  '1' &&
            number.to_s[2] !=  '2' &&
            number.to_s[2] !=  '3' &&
            number.to_s[2] !=  '4' &&
            number.to_s[2] !=  '5' &&
            number.to_s[2] !=  '6' &&
            number.to_s[2] !=  '7' &&
            number.to_s[2] !=  '8' &&
            number.to_s[2] !=  '9')
            #puts "Third char invalid"
            return false
        end
        if (number.to_s[3] !=  '-')
            #puts "Fourth char invalid"
            return false
        end
        if (number.to_s[4] !=  '0' &&
            number.to_s[4] !=  '1' &&
            number.to_s[4] !=  '2' &&
            number.to_s[4] !=  '3' &&
            number.to_s[4] !=  '4' &&
            number.to_s[4] !=  '5' &&
            number.to_s[4] !=  '6' &&
            number.to_s[4] !=  '7' &&
            number.to_s[4] !=  '8' &&
            number.to_s[4] !=  '9')
            #puts "Fifth char invalid"
            return false
        end
        if (number.to_s[5] !=  '0' &&
            number.to_s[5] !=  '1' &&
            number.to_s[5] !=  '2' &&
            number.to_s[5] !=  '3' &&
            number.to_s[5] !=  '4' &&
            number.to_s[5] !=  '5' &&
            number.to_s[5] !=  '6' &&
            number.to_s[5] !=  '7' &&
            number.to_s[5] !=  '8' &&
            number.to_s[5] !=  '9')
            #puts "Sixth char invalid"
            return false
        end
        if (number.to_s[6] !=  '0' &&
            number.to_s[6] !=  '1' &&
            number.to_s[6] !=  '2' &&
            number.to_s[6] !=  '3' &&
            number.to_s[6] !=  '4' &&
            number.to_s[6] !=  '5' &&
            number.to_s[6] !=  '6' &&
            number.to_s[6] !=  '7' &&
            number.to_s[6] !=  '8' &&
            number.to_s[6] !=  '9')
            #puts "Seventh char invalid"
            return false
        end
        if (number.to_s[7] !=  '-')
            #puts "Eighth char invalid"
            return false
        end
        if (number.to_s[8] !=  '0' &&
            number.to_s[8] !=  '1' &&
            number.to_s[8] !=  '2' &&
            number.to_s[8] !=  '3' &&
            number.to_s[8] !=  '4' &&
            number.to_s[8] !=  '5' &&
            number.to_s[8] !=  '6' &&
            number.to_s[8] !=  '7' &&
            number.to_s[8] !=  '8' &&
            number.to_s[8] !=  '9')
            #puts "Ninth char invalid"
            return false
        end
        if (number.to_s[9] !=  '0' &&
            number.to_s[9] !=  '1' &&
            number.to_s[9] !=  '2' &&
            number.to_s[9] !=  '3' &&
            number.to_s[9] !=  '4' &&
            number.to_s[9] !=  '5' &&
            number.to_s[9] !=  '6' &&
            number.to_s[9] !=  '7' &&
            number.to_s[9] !=  '8' &&
            number.to_s[9] !=  '9')
            #puts "Tenth char invalid"
            return false
        end
        if (number.to_s[10] !=  '0' &&
            number.to_s[10] !=  '1' &&
            number.to_s[10] !=  '2' &&
            number.to_s[10] !=  '3' &&
            number.to_s[10] !=  '4' &&
            number.to_s[10] !=  '5' &&
            number.to_s[10] !=  '6' &&
            number.to_s[10] !=  '7' &&
            number.to_s[10] !=  '8' &&
            number.to_s[10] !=  '9')
            #puts "Eleventh char invalid"
            return false
        end
        if (number.to_s[11] !=  '0' &&
            number.to_s[11] !=  '1' &&
            number.to_s[11] !=  '2' &&
            number.to_s[11] !=  '3' &&
            number.to_s[11] !=  '4' &&
            number.to_s[11] !=  '5' &&
            number.to_s[11] !=  '6' &&
            number.to_s[11] !=  '7' &&
            number.to_s[11] !=  '8' &&
            number.to_s[11] !=  '9')
            #puts "Twelth char invalid"
            return false
        end

        if number.to_s.length != 12
            #puts "Too many char!"
            return false
        end

        #A number can be added as unlisted any number of times, but can only be 
        #added as listed once. This means that if number already exists and is 
        #listed in the PhoneBook, the new entry can only be added if the entry
        #will be unlisted.

        #package the new info and get it ready to be stored
        new_entry = Array.new(2)
        new_entry[0] = name
        new_entry[1] = number

        if is_listed == true
            entry = 0
            while entry < @listed_database.length
                #search to make sure the number isnt in the listed database, 
                #return false if it is
                if number == @listed_database[entry][1]
                    #puts "Listed number already exists!"   
                    return false
                end    
                entry += 1
            end
            #if we didnt find it there, add it
            @listed_database.push(new_entry) 
            @shared_database.push(new_entry)
            return true
        end
        #if its unlisted, add it to the unlisted database
        if is_listed == false
            @unlisted_database.push(new_entry)
            @shared_database.push(new_entry)
            return true
        end
        #if something strange happens and we didn't return earlier, return
        #the sneaky user back a false
        return false
    end

    #Looks up name in the PhoneBook and returns the corresponding phone 
    #number in the format NNN-NNN-NNNN ONLY if the entry is listed. 
    #Otherwise, return nil.
    def lookup(name)
        entry = 0
        while entry < @listed_database.length
            #if the name is found, return the number for that entry
            if @listed_database[entry][0] == name
                return @listed_database[entry][1]
            end
            entry += 1
        end
        #if it wasnt found, or perhaps was unlisted, return nil
        return nil
    end

    def lookupByNum(number)
        entry = 0
        while entry < @listed_database.length
            #if the name is found, return the number for that entry
            if @listed_database[entry][1] == number
                return @listed_database[entry][0]
            end
            entry += 1
        end
        #if it wasnt found, or perhaps was unlisted, return nil
        return nil
    end

    def namesByAc(areacode)
        
        names_arr = []
        entry = 1
        while entry < @shared_database.length()
            
            if @shared_database[entry][1][0] == areacode[0] &&
            @shared_database[entry][1][1] == areacode[1] &&
            @shared_database[entry][1][2] == areacode[2] 

                names_arr.push(@shared_database[entry][0])
            
            end
            entry += 1
        end
        return names_arr 
    end
    def printer
        puts "Listed Database:"
          
        print @listed_database
            
        puts
        puts "Unlisted Database:"
        
       
        print @unlisted_database
        
        puts
        puts "Shared Database:"
        
        print @shared_database
        
        puts

    end
end

=begin
phonebook = PhoneBook.new
puts phonebook.add("John", "110-192-1862", false) 
puts phonebook.add("Jane", "220-134-1312", false) 
puts phonebook.add("John", "110-192-1862", false) 
puts phonebook.add("Ravi", "110", true) 

phonebook2 = PhoneBook.new
puts phonebook2.add("Alice", "123-456-7890", false) 
puts phonebook2.add("Bob", "123-456-7890", false) 
puts phonebook2.add("Eve", "123-456-7890", true) 
puts phonebook2.add("Rob", "123-456-7890", true) 
puts phonebook2.add("Johnny B. Good", "123-456-7890", false) 
=end

=begin
phonebook = PhoneBook.new
puts phonebook.add("John", "110-192-1862", false) 
puts phonebook.add("Jane", "220-134-1312", true) 
puts phonebook.add("Jack", "114-192-1862", false) 
puts phonebook.add("Jessie", "410-124-1131", true) 
puts phonebook.add("Ravi", "110", true) 

puts phonebook.lookup("John") 
puts phonebook.lookup("Jack") 
puts phonebook.lookup("Jane") 
puts phonebook.lookup("Jessie") 
puts phonebook.lookup("Ravi") 
=end

=begin 
phonebook = PhoneBook.new
puts phonebook.add("John", "110-192-1862", false) 
puts phonebook.add("Jane", "220-134-1312", true) 
puts phonebook.add("Jack", "114-192-1862", false) 
puts phonebook.add("Jessie", "410-124-1131", true) 

puts phonebook.lookupByNum("110-192-1862")  
puts phonebook.lookupByNum("114-192-1862")  
puts phonebook.lookupByNum("220-134-1312")  
puts phonebook.lookupByNum("410-124-1131") 
=end

=begin
arr = []
phonebook = PhoneBook.new
puts phonebook.add(arr[0], "110-192-1862", true)
puts phonebook.add("B", "114-192-1862", false) 
puts phonebook.add("C", "220-134-1312", true)
puts phonebook.add("D", "110-124-1131", true) 
puts phonebook.add("E", "240-600-6002", false) 
puts phonebook.add("F", "240-600-6002", false) 
puts phonebook.add("G", "240-600-6002", true) 
puts phonebook.add("H", "240-600-6002", false) 

phonebook.printer() 
=end


=begin 
print phonebook.namesByAc("110") 
puts
print phonebook.namesByAc("114") 
puts
print phonebook.namesByAc("111") 
puts
=end