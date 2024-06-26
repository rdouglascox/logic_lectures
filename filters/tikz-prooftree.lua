local system = require("pandoc.system")

local tikz_doc_template = [[
\documentclass{standalone}
\usepackage{xcolor}
\usepackage{qtree}
\usepackage{prooftrees}
\usepackage{amssymb}
\usepackage{makecell}
\usepackage[all]{xy}
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
			os.execute("pdflatex tikz.tex")
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
	if el.classes[1] == "prooftree" then
		local filetype = extension_for[FORMAT] or "svg"
		local fbasename = pandoc.sha1(el.text) .. "." .. filetype
		local fname = system.get_working_directory() .. "/" .. fbasename
		if not file_exists(fname) then
			tikz2image(el.text, filetype, fname)
		end
		local img = { pandoc.Image({}, fbasename) }
		img.attr = { class = "tree" }
		return pandoc.Div(img, { class = "tree" })
	else
		return el
	end
end
