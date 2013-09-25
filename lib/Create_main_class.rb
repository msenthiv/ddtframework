class Create_main_class
	def main(project, site)
		fileName = 'C:\Ruby\Projects\\' + project + '\\' + 'Main.rb'
		f3 = File.open(fileName, 'w')
		f3.puts ("require \'test/unit\'")
		f3.puts ("require \'.\\Flow\'")
		f3.puts ("require \'.\\CBrowser\'")
		f3.puts ("require \'win32ole\'")
		f3.puts ("")
		f3.puts ("")
		f3.puts ("class Main" + " < Test::Unit::TestCase")
		f3.puts("\tdef test_" + project)
		
		f3.puts("\t\t#Sample website has been created.")
		f3.puts("\t\t#Sample excel sheet has been created for testing and understanding.  This file will be in the input folder.")
		f3.puts("\t\t#Sample excel sheet will be saved in the output folder.")
		f3.puts("")
		
		f3.puts("\t\tinputFileName = \'C:\\Ruby\\Input\\" + project + "\\input.xlsx\'")
		f3.puts("\t\toutputFileName = \'C:\\Ruby\\Output\\" + project + "\\output.xlsx\'")
		f3.puts("\t\texcel = WIN32OLE::new(\'excel.Application\')")
		f3.puts("\t\texcel.visible = true")
		f3.puts("\t\tworkbook = excel.Workbooks.Open(inputFileName)")
		f3.puts("\t\twbWin = workbook.Worksheets(\'Sheet1\')")
		f3.puts("\t\twbWin.Select")
		
		f3.puts("")
		f3.puts("\t\tsite = \'" + site + "\'")
		f3.puts("\t\tbrowser = CBrowser.new.createFFBrowser(site)")
		f3.puts("\t\tFlow.new(browser, site).main()")
		f3.puts("\t\tsleep 2")
		f3.puts("\t\tbrowser.close")
		f3.puts("")
		
		f3.puts("\t\tworkbook.saveAs(outputFileName)")
		f3.puts("\t\tworkbook.close")
		f3.puts("\t\texcel.quit")

		f3.puts("\tend")
		f3.puts("end")		
	end
end
