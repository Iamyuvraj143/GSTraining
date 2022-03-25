require 'csv'
 file1 = CSV.read("data.csv")
 puts file1

 File.open("data.csv" ,"r+") do |file|
 puts file.read()
 file.write("5,Yuvi")
end
