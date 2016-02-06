all: bylaws.docx bylaws.pdf

%.docx: %.cform
	commonform render -f docx -n outline $< > $@

%.pdf: %.docx
	doc2pdf $<
