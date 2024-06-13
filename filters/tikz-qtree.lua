local system = require("pandoc.system")

local tikz_doc_template = [[
\documentclass{standalone}
\usepackage{xcolor}
\usepackage{qtree}
\usepackage{fouriernc}
\usepackage{fontspec}
\setmainfont{Gill Sans}
\usepackage{amsmath}
\begin{document}
\nopagecolor
\begin{Huge}
%s
\end{Huge}
\end{document}
]]

local function tikz2image(src, filetype, outfile)
	system.with_temporary_directory("tikz2image", function(tmpdir)
		system.with_working_directory(tmpdir, function()
			local f = io.open("tikz.tex", "w")
			f:write(tikz_doc_template:format(src))
			f:close()
			os.execute("xelatex tikz.tex")
			if filetype == "pdf" then
				os.rename("tikz.pdf", outfile)
			else
				os.execute("pdf2svg tikz.pdf " .. outfile)
			end
		end)
	end)
end

extension_for = {
	html = "svg",
	html4 = "svg",
	html5 = "svg",
	latex = "pdf",
	beamer = "pdf",
}

local function file_exists(name)
	local f = io.open(name, "r")
	if f ~= nil then
		io.close(f)
		return true
	else
		return false
	end
end

local function starts_with(start, str)
	return str:sub(1, #start) == start
end

function CodeBlock(el)
	if el.classes[1] == "tree" then
		local filetype = extension_for[FORMAT] or "svg"
		local fbasename = pandoc.sha1(el.text) .. "." .. filetype
		local fname = system.get_working_directory() .. "/" .. fbasename
		if not file_exists(fname) then
			tikz2image(el.text, filetype, fname)
		end
		-- get the content of the file
		local filecontent = io.open(fname, "r")
		-- read the file content
		local content = filecontent:read("*all")
		-- remove just the first line of the svg file no matter what it is
		local content1 = content:gsub("^.-\n", "", 1)
		-- we change the glyph id thoughout so that it is unique (we use the filename). This is to avoid conflicts with other svgs in the same presentation
		-- so we just search for "glyph" and replace it with "glyph" + filename
		local content2 = content1:gsub("glyph", "glyph" .. fbasename)
		-- we also remove the width and height attributes from the svg tag
		-- local content2 = content1:gsub('width=".-"', "")
		-- local content3 = content2:gsub('height=".-"', "")
		-- we also remove the viewbox attribute from the svg tag
		-- local content4 = content:gsub('viewBox=".-"', "")
		-- embed it as a raw html block in pandoc
		-- let's put it in a div called tree
		-- we make a pandoc div called 'tree' with the content in it
		-- we also need to add style information with the div tag
		-- position absolute, top 0, left 0, width 100%, height 100%
		-- this will make the tree fill the whole slide
		local div = pandoc.Div(pandoc.RawBlock("html", content2), pandoc.Attr("", { fname }, {}))
		-- close the file
		io.close(filecontent)
		return div
	else
		return el
	end
end
