
# ===============
# Parse JSON File
# ===============

# rjson_nyc_dem_by_zip ----------------------------------------------------

# https://catalog.data.gov/dataset/demographic-statistics-by-zip-code
# Usage: f <- rjson_nyc_dem_by_zip("data.json") 

rjson_nyc_dem_by_zip <- function(f) {

  ny <- jsonlite::fromJSON(f)
  c <- ny$meta$view$columns$fieldName
  
  df <- tibble::as_tibble(ny$data)
  names(df) <- c
  
  df

}
