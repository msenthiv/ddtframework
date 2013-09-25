class Create_class_for_browser_open
	def main(project)
		fileName = 'C:\Ruby\Projects\\' + project + '\\' + 'CBrowser.rb'
		f3 = File.open(fileName, 'w')
		f3.puts "require \'watir-webdriver\'"

		f3.puts "class CBrowser"
			f3.puts "\t# Creating the Browser"
			f3.puts "\t# Also navigate to the site, given by the siteName"
			f3.puts "\t# Return the browser to request"
			f3.puts "\t# By default it will open FireFox"
			f3.puts "\tdef createFFBrowser(siteName)"
				f3.puts "\t\tbrowser = Watir::Browser.new"
				f3.puts "\t\tbrowser.goto (siteName)"
				f3.puts "\t\treturn browser"
			f3.puts "\tend"
			f3.puts "\t# :IE - Will open Internet Explorer Browser"
			f3.puts "\tdef createIEBrowser(siteName)"
				f3.puts "\t\tbrowser = Watir::Browser.new:IE"
				f3.puts "\t\tbrowser.goto (siteName)"
				f3.puts "\t\treturn browser"
			f3.puts "\tend"
			f3.puts "\t# :Chrome - Will open Chormoe Browser"
			f3.puts "\tdef createCHBrowser(siteName)"
				f3.puts "\t\tbrowser = Watir::Browser.new:Chrome"
				f3.puts "\t\tbrowser.goto (siteName)"
				f3.puts "\t\treturn browser"
			f3.puts "\tend"
		f3.puts "end"		
	end
end
