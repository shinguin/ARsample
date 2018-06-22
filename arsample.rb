#ActiveRecord_Sample
#VM-Env:VirtualBox
#OS:ubuntu

require "active_record"
require "sqlite3"



$word = ARGV[0]
$id = ARGV[1]
$answer = []

#DB Connection
ActiveRecord::Base.establish_connection(
	"adapter" => "sqlite3",
	"database" => "./sample.db")

#問題DBのクラス化
class Tbl < ActiveRecord::Base
	self.table_name = "table1"
end

#Minimum value of ID in Matching Sample
se = Tbl.where(:sample => $field).minimum("id")
#Maximum value of ID in Matching Sample
et = Tbl.where(:sample => $field).maximum("id")
#Total value of ID in Matching Sample and ID
ct = Tbl.where(:sample => $word, :id => $id).count

#Random_Number_Array
rarray = (se..et).to_a.sort_by{rand}

#Start_Number
st = se
#End_Number
ed = rarray.count - 1

#Matching Random_Number
until st == ed do
	$tempoint = rarray[st]
	point = Exm.find_by_id($tempoint).sample
	if point == $word then
		$answer.push($p)
	else
	end
st = st + 1
end


puts "Random_Array"
puts s
puts "Total of Random_Number"
puts s.count
puts "Minimum value of ID in Matching Sample"
puts se
puts "Maximum value of ID in Matching Sample"
puts et
puts "Total of Calculate_Number"
puts ed
puts "Total value in Matching Sample and ID"
puts ct
puts "Matching Random_Number"
puts $answer

