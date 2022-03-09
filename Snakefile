

rule create_pdf:
    input: "{file}.Rmd"
    output: "{file}.pdf"
    shell: 
        """
        Rscript -e 'rmarkdown::render ("{input}", output_format="bookdown::pdf_document2")'
        """

rule create_html:
    input: "{file}.Rmd"
    output: "{file}.pdf"
    shell: 
        """
        Rscript -e 'rmarkdown::render ("{input}", output_format="bookdown::html_document2")'
        """
