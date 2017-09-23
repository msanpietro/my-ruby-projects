####  find the top 10 most popular queries from the data file given
#
domain = []
entire_line = []
counts = {}
numofelements = 0 
WORDS_COUNT = {}


 File.open('query-data.txt', 'r') do | file |
   file.each_line do | line |
      domain = line.chomp.split(",")
      puts domain[3]
      domain.each do |domain|
        if WORDS_COUNT[domain]
	   WORDS_COUNT[domain] += 1 
        else
          WORDS_COUNT[domain] = 1 
        end

   end
  end

 WORDS_COUNT.sort {|a,b| a[1] <=> b[1]}.each do |key,value|
	   puts "#{key} => #{value}"
 end
 end      
      
      
      
      
      
      










