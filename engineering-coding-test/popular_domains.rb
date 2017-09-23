####  find the top 10 most popular queries from the data file given
#
domains = []
entire_line = []
counts = Hash.new(0)
i = 0 

 File.open('query-data.txt', 'r') do | file |
      while line = file.gets
         entire_line = line.chomp.split(",")
	 # create an array of just the domain names so we can 
	 # use array metnods to search 
	 domains.insert(i, entire_line[3].chomp)
	 i +=1
      end
      # create a hash of the number of occurances of each name
      domains.each do | name |
	counts[name] += 1
      end
      # sort the hash values from greatest to least and print the first 10 values
     sorted_counts =  counts.sort_by{ |key, value| value }.reverse.to_h.first 10
     sorted_counts.each do | key, value | 
	     puts "#{key}: #{value}"
     end

 end



