require 'win32ole'

class Create_folder_structure
	def main(name)
		excel = WIN32OLE::new('excel.Application')
		excel.visible = true
		workbook = excel.Workbooks.Add
		wbWin = workbook.Worksheets('Sheet1')
		
		wbWin.cells(1,1).value = 'Matt'
		wbWin.cells(2,1).value = 'Tony'
		wbWin.cells(3,1).value = 'Link'
		wbWin.cells(4,1).value = 'Pete'
		wbWin.cells(1,2).value = 'Java'
		wbWin.cells(2,2).value = 'Ruby'
		wbWin.cells(3,2).value = 'C#'
		wbWin.cells(4,2).value = 'Python'
		wbWin.cells(1,3).value = 'Both'
		wbWin.cells(2,3).value = 'Both'
		wbWin.cells(3,3).value = 'Both'
		wbWin.cells(4,3).value = 'Both'
		wbWin.cells(1,4).value = '1.9.2'
		wbWin.cells(2,4).value = '1.9.2'
		wbWin.cells(3,4).value = '1.9.2'
		wbWin.cells(4,4).value = '1.9.2'
		
		FileUtils.mkdir_p 'C:\Ruby\Input\\' + name
		
		workbook.saveAs('C:\Ruby\Input\\' + name + '\input.xlsx')
		workbook.close
		excel.quit		
		
		FileUtils.mkdir_p 'C:\Ruby\Output\\' + name
		FileUtils.mkdir_p 'C:\Ruby\Projects\\' + name
	end
end
