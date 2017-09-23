# find the number of used and available inodes on a system
#
require 'net/ssh'

hostname = []
i = 0 

 File.open('/home/deploy/hostlist.txt', 'r') do | file |
      i += 1 
      output = []
      while line = file.gets
         hostname[i] = line.chomp
	 puts ""
	 puts hostname[i]
	 puts "........................................"
         Net::SSH.start( hostname[i], "smark", :password => ""  ) do |ssh|
         ssh.exec "df -i | awk '{print $1,   $3,   $4 }' "
         end
      end
 end
