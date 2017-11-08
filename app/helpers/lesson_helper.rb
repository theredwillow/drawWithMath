module LessonHelper

	def showLesson (name)
		@filename = File.join(Rails.root, "db", "lessons", name + ".xml")
		if File.file?(@filename)
			Nokogiri::XML(File.open(@filename)).traverse do |node|
				if node.name == "svg"
					concat render "canvas"
				elsif not node.text?
					concat node.name
				end
				concat "<br>".html_safe
				# node.ancestors("lesson,document") {do |node| concat node.name }
			end
		else
			concat "No lesson found."
		end
	end



end
