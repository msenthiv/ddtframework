require 'fileutils'
require 'test/unit'
require 'DDTFramework/Create_folder_structure'
require 'DDTFramework/Create_action_classes'
require 'DDTFramework/Create_class_for_browser_open'
require 'DDTFramework/Create_main_class'
require 'DDTFramework/Create_flow_class'

class DDTFramework < Test::Unit::TestCase
	def test_main
		actionClass = Array.new
		actionClassNumber = 1
		
		print "What is the project name: "
		project = gets().chomp
		project = project.capitalize
		print "What is the site name: "
		site = gets().chomp
		site = site.downcase
		
		Create_folder_structure.new.main(project)
		
		while(true)
			print "What is the action class name: <Enter ZERO to exit> "
			actionClass[actionClassNumber] = gets().chomp
			if(actionClass[actionClassNumber] == '0')
				break
			end
			actionClass[actionClassNumber] = actionClass[actionClassNumber].capitalize
			Create_action_classes.new.main(actionClass[actionClassNumber], project)
			actionClassNumber = actionClassNumber + 1
		end
		Create_class_for_browser_open.new.main(project)
		Create_main_class.new.main(project, site)
		Create_flow_class.new.main(project, site, actionClass, actionClassNumber)
	end
end
