
# ===============
# Parse CSV Files
# ===============

# Parse a CSV file --------------------------------------------------------

pcsv <- function(f){
  df <- readr::read_csv(f, col_types = list(
    .default = readr::col_character()
  ))
}

# Parse CSV and write to Excel --------------------------------------------

wcsv <- function(f){
  # Read CSV
  df <- readr::read_csv(f, col_types = list(
    .default = readr::col_character()
  ))  
  xlname <- gsub(".csv", ".xlsx", f)
  # Write to Excel
  fpath <- writexl::write_xlsx(df, xlname)
  cat(fpath, "written!")
}