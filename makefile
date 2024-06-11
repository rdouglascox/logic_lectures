
STYLEX:= ../../styles/slidy_style.css
STYLE:= slidy_style.css

QTREE:= filters/tikz-qtree_small.lua
PROOFTREE:= filters/tikz-prooftree-embed.lua

L00:= 00_introduction_and_overview
L01:= 01_what_is_logic
L02:= 02_connectives_and_logical_form
L03:= 03_the_formal_language_PL
L04:= 04_lost_in_translation_1
L05:= 05_the_semantics_of_PL
L06:= 06_uses_of_truth_tables
L07:= 07_validity_and_logical_form
L08:= 08_functional_completeness
L09:= 09_trees_for_PL
L10:= 10_uses_of_trees_for_PL
L11:= 11_the_formal_language_MPL
L12:= 12_the_syntax_of_MPL
L13:= 13_lost_in_translation_2
L14:= 14_the_semantics_of_MPL_part1
L15:= 15_the_semantics_of_MPL_part2
L16:= 16_trees_for_MPL
L17:= 17_uses_of_trees_for_MPL
L18:= 18_the_formal_language_GPL
L19:= 19_the_semantics_of_GPL_and_trees_for_GPL
L20:= 20_the_formal_language_GPLI
L21:= 21_trees_for_GPLI
L22:= 22_numerical_quantifiers_and_definite_descriptions_in_GPLI

all : build/$(L00)/$(L00).html build/$(L01)/$(L01).html build/$(L02)/$(L02).html build/$(L03)/$(L03).html build/$(L04)/$(L04).html build/$(L05)/$(L05).html build/$(L06)/$(L06).html build/$(L07)/$(L07).html build/$(L08)/$(L08).html build/$(L09)/$(L09).html build/$(L10)/$(L10).html build/$(L11)/$(L11).html build/$(L12)/$(L12).html build/$(L13)/$(L13).html build/$(L14)/$(L14).html build/$(L15)/$(L15).html build/$(L16)/$(L16).html build/$(L17)/$(L17).html build/$(L18)/$(L18).html build/$(L19)/$(L19).html build/$(L20)/$(L20).html build/$(L21)/$(L21).html build/$(L22)/$(L22).html 
.PHONY: all	

build/$(L00)/$(L00).html: source/$(L00).md
	pandoc -s -i source/$(L00).md -o build/$(L00)/$(L00).html -t slidy --css=$(STYLE) -i

build/$(L01)/$(L01).html: source/$(L01).md
	pandoc -s -i source/$(L01).md -o build/$(L01)/$(L01).html -t slidy --css=$(STYLE) -i	

build/$(L02)/$(L02).html: source/$(L02).md
	pandoc -s -i source/$(L02).md -o build/$(L02)/$(L02).html -t slidy --css=$(STYLE) -i	

build/$(L03)/$(L03).html: source/$(L03).md
	pandoc -s -i --mathml source/$(L03).md -o build/$(L03)/$(L03).html -t slidy --css=$(STYLE) -i	

build/$(L04)/$(L04).html: source/$(L04).md
	pandoc -s -i --mathml source/$(L04).md -o build/$(L04)/$(L04).html -t slidy --css=$(STYLE) -i

build/$(L05)/$(L05).html: source/$(L05).md
	pandoc -s -i --mathml source/$(L05).md -o build/$(L05)/$(L05).html -t slidy --css=$(STYLE) -i	

build/$(L06)/$(L06).html: source/$(L06).md
	pandoc -s -i --mathml source/$(L06).md -o build/$(L06)/$(L06).html -t slidy --css=$(STYLE) -i

build/$(L07)/$(L07).html: source/$(L07).md
	pandoc -s -i --mathml source/$(L07).md -o build/$(L07)/$(L07).html -t slidy --css=$(STYLE) -i

build/$(L08)/$(L08).html: source/$(L08).md
	pandoc -s -i --mathml source/$(L08).md -o build/$(L08)/$(L08).html -t slidy --css=$(STYLE) -i

build/$(L09)/$(L09).html: source/$(L09).md
	pandoc -s -i --lua-filter=$(QTREE) --mathml source/$(L09).md -o build/$(L09)/$(L09).html -t slidy --css=$(STYLE) -i	

build/$(L10)/$(L10).html : source/$(L10).md
	pandoc -s -i --lua-filter=$(QTREE) --mathml source/$(L10).md -o build/$(L10)/$(L10).html -t slidy --css=$(STYLE) -i

build/$(L11)/$(L11).html: source/$(L11).md
	pandoc -s -i --lua-filter=$(PROOFTREE) --mathml source/$(L11).md -o build/$(L11)/$(L11).html -t slidy --css=$(STYLE) -i

build/$(L12)/$(L12).html: source/$(L12).md
	pandoc -s -i --mathml source/$(L12).md -o build/$(L12)/$(L12).html -t slidy --css=$(STYLE) -i

build/$(L13)/$(L13).html: source/$(L13).md
	pandoc -s -i --mathml source/$(L13).md -o build/$(L13)/$(L13).html -t slidy --css=$(STYLE) -i

build/$(L14)/$(L14).html: source/$(L14).md
	pandoc -s -i --mathml source/$(L14).md -o build/$(L14)/$(L14).html -t slidy --css=$(STYLE) -i

build/$(L15)/$(L15).html: source/$(L15).md
	pandoc -s -i --mathml source/$(L15).md -o build/$(L15)/$(L15).html -t slidy --css=$(STYLE) -i
	
build/$(L16)/$(L16).html: source/$(L16).md
	pandoc -s -i --mathml source/$(L16).md -o build/$(L16)/$(L16).html -t slidy --css=$(STYLE) -i

build/$(L17)/$(L17).html: source/$(L17).md
	pandoc -s -i --lua-filter=$(PROOFTREE) --mathml source/$(L17).md -o build/$(L17)/$(L17).html -t slidy --css=$(STYLE) -i

build/$(L18)/$(L18).html: source/$(L18).md
	pandoc -s -i --lua-filter=$(PROOFTREE) --mathml source/$(L18).md -o build/$(L18)/$(L18).html -t slidy --css=$(STYLE) -i

build/$(L19)/$(L19).html: source/$(L19).md
	pandoc -s -i --mathml source/$(L19).md -o build/$(L19)/$(L19).html -t slidy --css=$(STYLE) -i

build/$(L20)/$(L20).html: source/$(L20).md
	pandoc -s -i --lua-filter=$(PROOFTREE) --mathml source/$(L20).md -o build/$(L20)/$(L20).html -t slidy --css=$(STYLE) -i

build/$(L21)/$(L21).html: source/$(L21).md
	pandoc -s -i --lua-filter=$(PROOFTREE) --mathml source/$(L21).md -o build/$(L21)/$(L21).html -t slidy --css=$(STYLE) -i

build/$(L22)/$(L22).html: source/$(L22).md
	pandoc -s -i --lua-filter=$(PROOFTREE) --mathml source/$(L22).md -o build/$(L22)/$(L22).html -t slidy --css=$(STYLE) -i




	








