task :invoice_generate => :environment do

	json_text = File.read("mockdata.json") #read json file
	json_parser = JSON.parse json_text #parse json data
	wireitems = json_parser["wireitems"] #get all wireitens
	byebug
	wireitems.group_by{|v| v["wireitem_type"]}.each do |wireitem_group| #loop on wireitems
		group = wireitem_group.first
		puts "Template: "+group
		puts "\n"
		byebug
		wireitem_group.last.each do |wireitem|
			wireitem_id = wireitem["wireitem_id"] # save wireitem_id
			wireitem_cid = wireitem["wireitem_cid"] # save wireitem_cid
			templates = wireitem["templates"] # get wireitem templates
			templates.each do |template| #loop on wireitems templates
				if template["type"] == group && !template["story"].nil?
					puts "WireItem_id: "+wireitem_id
					puts "WireItem_cid: "+wireitem_cid
					puts 'hed: "'+template["story"]["hed"]+'"'
					puts "\n"
				end
			end
		end
	end

end
