if(!require("xml2")) install.packages("xml2", repos = "http://cran.rstudio.com/")
x <- xml2::read_html("Taxonomy.html")

# remove table
tab <- xml2::xml_find_first(x, "//table")
xml2::xml_remove(tab)

# strip cran task view h2
h2 <- xml2::xml_find_first(x, '//h2[contains(text(), "CRAN Task View: Taxonomy")]')
xml2::xml_text(h2) <- "Taxonomy"

# write
xml2::write_html(x, "Taxonomy.html")
