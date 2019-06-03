if(!require("stringr")) install.packages("stringr", repos="https://cran.rstudio.com")
template <- readLines("Taxonomy.ctv")
pattern <- "pkg>[[:alnum:]]+[[:alnum:].]*[[:alnum:]]+"
out <- paste0(template, collapse = " ")
pkgs <- stringr::str_extract_all(out, pattern)[[1]]
pkgs <- unique(gsub("^pkg>", "", pkgs))
priority <- c('taxize', 'taxa')
pkgs <- pkgs[ !pkgs %in% priority] # remove priority packages
pkgs <- lapply(as.list(sort(pkgs)), function(x) list(package=x))
output <-
c(paste0('<CRANTaskView>
  <name>Taxonomy</name>
  <topic>Taxonomy</topic>
  <maintainer email="myrmecocystus@gmail.com">Scott Chamberlain</maintainer>
  <version>',Sys.Date(),'</version>'),
  '  <info>',
  paste0("    ",template),
  '  </info>',
  '  <packagelist>',
  # list priority packages explicitly
  paste0('    <pkg priority="core">', priority, '</pkg>', collapse = "\n"),
  # add all other packages from `pkgs`
  paste0('    <pkg>', unlist(unname(pkgs)), '</pkg>', collapse = "\n"),
  '  </packagelist>',
  '  <links>',
  '    <a href="https://cran.rstudio.com/web/views/Phylogenetics.html">Phylogenetics Task View</a>',
  '  </links>',
  '</CRANTaskView>')

writeLines(output, "Taxonomy.ctv")
