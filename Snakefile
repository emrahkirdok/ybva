
OUTPUT="../gh-pages/"

rule create_pdf:
    input: "metin_{file}.Rmd"
    output: "metin_{file}.pdf"
    shell: 
        """
        Rscript -e 'rmarkdown::render ("{input}", output_format="bookdown::pdf_document2")'
        """

rule create_html:
    input: "metin_{file}.Rmd"
    output: "metin_{file}.html"
    shell: 
        """
        Rscript -e 'rmarkdown::render ("{input}", output_format="bookdown::html_document2")'
        """


rule create_ioslides_html:
    input: "sunum_{file}.Rmd"
    output: "sunum_{file}.html"
    shell: 
        """
        Rscript -e 'rmarkdown::render ("{input}", output_format="ioslides_presentation")'
        """
