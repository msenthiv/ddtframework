class Create_flow_class
	def main(project, site, actionClass, actionClassNumber)
		fileName = 'C:\Ruby\Projects\\' + project + '\\' + 'Flow.rb'
		f3 = File.open(fileName, 'w')
		1.upto(actionClassNumber - 1).each {|i| f3.puts "require \'.\\" + actionClass[i] + "\'"}
		f3.puts("")
		f3.puts("")
		f3.puts('class Flow')
		f3.puts("\tdef initialize(browser, site)")
		f3.puts("\t\t@browser = browser")
		f3.puts("\t\t@site = site")
		f3.puts("\tend")
		f3.puts("\tdef main()")
		1.upto(actionClassNumber - 1).each {|i| f3.puts("\t\t" + actionClass[i] + ".new(@browser).main()")}
		f3.puts("\tend")
		f3.puts('end')	
	end
end
