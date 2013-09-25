class Create_action_classes
	def main(actionClassName, project)
		fileName = 'C:\Ruby\Projects\\' + project + '\\' + actionClassName + '.rb'
		f3 = File.open(fileName, 'w')
		f3.puts('class '+ actionClassName)
		f3.puts("\tdef initialize(browser)")
		f3.puts("\t\t@browser = browser")
		f3.puts("\tend")
		f3.puts("\tdef main()")
		f3.puts(" ")
		f3.puts("\tend")
		f3.puts('end')
	end
end
