
# ==============
# Parse XML File
# ==============


# rxml_cdc_drug_od_rate ---------------------------------------------------

# https://catalog.data.gov/dataset/drug-overdose-death-rates-by-drug-type-sex-age-race-and-hispanic-origin-united-states-3f72f
# Usage: f <- rxml_cdc_drug_od_rate("data.xml")

rxml_cdc_drug_od_rate <- function(f) {

  do <- xml2::read_xml(f)
  
  # xml2::xml_structure(do, file = "schema.txt")
  
  # Get all row nodes
  rw <- xml2::xml_find_all(do, "/response/row/row")

  # Get one child node's children
  rowchild <- xml2::xml_children(rw[1])
  
  # Get column names
  col_names <- xml2::xml_name(rowchild)
  
  # Loop columns 
  i <- 1
  l <- list()
  for (nm in col_names) {
    
    cnm <- paste("./", nm, sep = "")
    c <- xml2::xml_find_first(rw, cnm)
  
    cstr <- xml2::xml_text(c)
    l[[i]] <- cstr
    
    i <- i + 1
    print(length(cstr))
  }
  
  df <- dplyr::bind_cols(l)
  names(df) <- col_names
  
  df

}

# find_all and find_first
# c <- xml2::xml_find_all(do, "/response/row/row")
# c2 <- xml2::xml_find_first(c, "./estimate")
# c3 <- xml2::xml_text(c2)

