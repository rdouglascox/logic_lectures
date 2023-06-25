
STYLEX:= ../../styles/slidy_style.css
STYLE:= slidy_style.css
STYLEL:= styles/handout_style.css

HTML2PDF:= wkhtmltopdf

QTREE:= filters/tikz-qtree.lua
PROOFTREE:= filters/tikz-prooftree.lua

QTREES:= filters/tikz-qtree.lua
PROOFTREES:= filters/tikz-prooftree.lua

L00:= 00_introduction_and_overview
L01:= 01_what_is_logic
L02:= 02_connectives_and_logical_form
L03:= 03_the_formal_language_PL
L04:= 04_issues_in_translation_assertability_and_implicature
L05:= 05_the_semantics_of_PL
L06:= 06_uses_of_truth_tables
L07:= 07_validity_and_logical_form
L08:= 08_functional_completeness
L09:= 09_issues_in_translation_conjunction
L10:= 10_trees_for_PL
L11:= 11_uses_of_trees_for_PL
L12:= 12_issues_in_translation_conditional
L13:= 13_the_formal_language_MPL
L14:= 14_the_syntax_of_MPL
L15:= 15_the_semantics_of_MPL_part1
L16:= 16_the_semantics_of_MPL_part2
L17:= 17_trees_for_MPL
L18:= 18_uses_of_trees_for_MPL
L19:= 19_the_formal_language_GPL
L20:= 20_the_semantics_of_GPL_and_trees_for_GPL
L21:= 21_the_formal_language_GPLI
L22:= 22_trees_for_GPLI
L23:= 23_numerical_quantifiers_and_definite_descriptions_in_GPLI
L24:= 24_beyond_GPLI

all : build/$(L00).pdf build/$(L01).pdf build/$(L02).pdf build/$(L03).pdf build/$(L04).pdf build/$(L05).pdf build/$(L06).pdf build/$(L07).pdf build/$(L08).pdf build/$(L09).pdf build/$(L10).pdf build/$(L11).pdf build/$(L12).pdf build/$(L13).pdf build/$(L14).pdf build/$(L15).pdf build/$(L16).pdf build/$(L17).pdf build/$(L18).pdf build/$(L19).pdf build/$(L20).pdf build/$(L21).pdf build/$(L22).pdf build/$(L23).pdf build/$(L24).pdf 
.PHONY: all	

build/$(L00).pdf: source/$(L00).md
	pandoc -s -i source/$(L00).md -o build/$(L00)/$(L00).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L05)/$(L05).html -o build/$(L05)/$(L05)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)

build/$(L01).pdf: source/$(L01).md
	pandoc -s -i source/$(L01).md -o build/$(L01)/$(L01).html -t slidy --css=$(STYLE) -i	
	pandoc -s build/$(L01)/$(L01).html -o build/$(L01)/$(L01)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)

build/$(L02).pdf: source/$(L02).md
	pandoc -s -i source/$(L02).md -o build/$(L02)/$(L02).html -t slidy --css=$(STYLE) -i	
	pandoc -s build/$(L02)/$(L02).html -o build/$(L02)/$(L02)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)

build/$(L03).pdf: source/$(L03).md
	pandoc -s -i --mathml source/$(L03).md -o build/$(L03)/$(L03).html -t slidy --css=$(STYLE) -i	
	pandoc -s build/$(L03)/$(L03).html -o build/$(L03)/$(L03)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)

build/$(L04).pdf: source/$(L04).md
	pandoc -s -i --mathml source/$(L04).md -o build/$(L04)/$(L04).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L04)/$(L04).html -o build/$(L04)/$(L04)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)

build/$(L05).pdf: source/$(L05).md
	pandoc -s -i --mathml source/$(L05).md -o build/$(L05)/$(L05).html -t slidy --css=$(STYLE) -i	
	pandoc -s build/$(L05)/$(L05).html -o build/$(L05)/$(L05)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)

build/$(L06).pdf: source/$(L06).md
	pandoc -s -i --mathml source/$(L06).md -o build/$(L06)/$(L06).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L06)/$(L06).html -o build/$(L06)/$(L06)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)

build/$(L07).pdf: source/$(L07).md
	pandoc -s -i --mathml source/$(L07).md -o build/$(L07)/$(L07).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L07)/$(L07).html -o build/$(L07)/$(L07)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)

build/$(L08).pdf: source/$(L08).md
	pandoc -s -i --mathml source/$(L08).md -o build/$(L08)/$(L08).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L08)/$(L08).html -o build/$(L08)/$(L08)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)	

build/$(L09).pdf: source/$(L09).md
	pandoc -s -i --mathml source/$(L09).md -o build/$(L09)/$(L09).html -t slidy --css=$(STYLE) -i	
	pandoc -s build/$(L09)/$(L09).html -o build/$(L09)/$(L09)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)

build/$(L10).pdf : source/$(L10).md
	pandoc -s -i --lua-filter=$(QTREE) --mathml source/$(L10).md -o build/$(L10)/$(L10).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L10)/$(L10).html -o build/$(L10)/$(L10)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)
	mv *.svg build/$(L10)

build/$(L11).pdf: source/$(L11).md
	pandoc -s -i --lua-filter=$(PROOFTREE) --mathml source/$(L11).md -o build/$(L11)/$(L11).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L11)/$(L11).html -o build/$(L11)/$(L11)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)
	mv *.svg build/$(L11)


build/$(L12).pdf: source/$(L12).md
	pandoc -s -i --mathml source/$(L12).md -o build/$(L12)/$(L12).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L12)/$(L12).html -o build/$(L12)/$(L12)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)

build/$(L13).pdf: source/$(L13).md
	pandoc -s -i --mathml source/$(L13).md -o build/$(L13)/$(L13).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L13)/$(L13).html -o build/$(L13)/$(L13)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)

build/$(L14).pdf: source/$(L14).md
	pandoc -s -i --mathml source/$(L14).md -o build/$(L14)/$(L14).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L14)/$(L14).html -o build/$(L14)/$(L14)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)

build/$(L15).pdf: source/$(L15).md
	pandoc -s -i --mathml source/$(L15).md -o build/$(L15)/$(L15).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L15)/$(L15).html -o build/$(L15)/$(L15)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)
	
build/$(L16).pdf: source/$(L16).md
	pandoc -s -i --mathml source/$(L16).md -o build/$(L16)/$(L16).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L16)/$(L16).html -o build/$(L16)/$(L16)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)


build/$(L17).pdf: source/$(L17).md
	pandoc -s -i --lua-filter=$(PROOFTREE) --mathml source/$(L17).md -o build/$(L17)/$(L17).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L17)/$(L17).html -o build/$(L17)/$(L17)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)
	mv *.svg build/$(L17)

build/$(L18).pdf: source/$(L18).md
	pandoc -s -i --lua-filter=$(PROOFTREE) --mathml source/$(L18).md -o build/$(L18)/$(L18).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L18)/$(L18).html -o build/$(L18)/$(L18)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)	
	mv *.svg build/$(L18)

build/$(L19).pdf: source/$(L19).md
	pandoc -s -i --mathml source/$(L19).md -o build/$(L19)/$(L19).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L19)/$(L19).html -o build/$(L19)/$(L19)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)


build/$(L20).pdf: source/$(L20).md
	pandoc -s -i --lua-filter=$(PROOFTREE) --mathml source/$(L20).md -o build/$(L20)/$(L20).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L20)/$(L20).html -o build/$(L20)/$(L20)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)	
	mv *.svg build/$(L20)


build/$(L21).pdf: source/$(L21).md
	pandoc -s -i --lua-filter=$(PROOFTREE) --mathml source/$(L21).md -o build/$(L21)/$(L21).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L21)/$(L21).html -o build/$(L21)/$(L21)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)	
	mv *.svg build/$(L21)


build/$(L22).pdf: source/$(L22).md
	pandoc -s -i --lua-filter=$(PROOFTREE) --mathml source/$(L22).md -o build/$(L22)/$(L22).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L22)/$(L22).html -o build/$(L22)/$(L22)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)	
	mv *.svg build/$(L22)

build/$(L23).pdf: source/$(L23).md
	pandoc -s -i --mathml source/$(L23).md -o build/$(L23)/$(L23).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L23)/$(L23).html -o build/$(L23)/$(L23)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)


	

build/$(L24).pdf: source/$(L24).md
	pandoc -s -i --mathml source/$(L24).md -o build/$(L24)/$(L24).html -t slidy --css=$(STYLE) -i
	pandoc -s build/$(L24)/$(L24).html -o build/$(L24)/$(L24)_handout.pdf  --pdf-engine=$(HTML2PDF) --css=$(STYLEL)


	








