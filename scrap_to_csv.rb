require  'rubygems'
require 'open-uri'
require 'hpricot'
require 'fastercsv'

			
@url = "http://www.indianfoodforever.com/"

	doc = Hpricot(open(@url).read)




	links = Array.new
	link_name = Array.new
	innerlinks = Array.new
	innerlinks_name = Array.new
	link_text = Array.new



	doc.search("a").each do |a|
	 	link_name << a.inner_html
		links << a.attributes['href']

			end

				 FasterCSV.open("aaa.csv","w") do |csv|
					
					links.each do |i|					
					csv << [i]
					end
				end






	
