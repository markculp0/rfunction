
# ===============
# Parse CSV Files
# ===============


# rcsv --------------------------------------------------------------------

# Read from CSV file
# Usage: df <- rcsv("file.csv")

rcsv <- function(f){
  df <- readr::read_csv(f, col_types = list(
    .default = readr::col_character()
  ))
}

# wcsv --------------------------------------------------------------------

# Parse CSV and Write to Excel
# Usage: wcsv("data.csv")

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