{
  options(conflicts.policy = list(warn.conflicts = FALSE))

  library(dplyr) # A Grammar of Data Manipulation
  library(here) # A Simpler Way to Find Your Files
  library(httr)
  library(janitor) # Simple Tools for Examining and Cleaning Dirty Data
  library(purrr) # Functional Programming Tools
  library(stringr) # Simple, Consistent Wrappers for Common String Operations
  library(tidyr) # Tidy Messy Data
  # library(rvest)
}


# # the rvest way
# # prone to timing out, and retrieves minified CSS files
# xml2::read_html("https://carbon.now.sh") %>%
#   rvest::html_nodes("head link[rel = 'stylesheet']") %>%
#   rvest::html_attr("href") %>%
#   stringr::str_subset("/theme/") %>%
#   paste0("https:", .) %>%
#   myrmidon::download_files(download_dir = "css_themes", quiet = TRUE, overwrite = TRUE)


# the github API way
# (thanks https://stackoverflow.com/a/59100287/5168907 for the tip)
# I prefer to use the API than to faff around with sparse checkouts or whatever
# This retrieves readable (not minified) CSS files from the CodeMirror repo
httr::GET("https://api.github.com/repos/codemirror/CodeMirror/contents/theme") %>%
  httr::content() %>%
  purrr::map("download_url") %>%
  myrmidon::download_files(download_dir = "css_themes", overwrite = TRUE)
