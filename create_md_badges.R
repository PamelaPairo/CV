# create doi badges 

create_badge <- function(label = "DOI", doi, color = "ae027e"){
  glue::glue("https://img.shields.io/static/v1?label={label}&message={doi}&color={color}")  
}

create_md_badge <- function(doi, ...){
  bdg <- create_badge(doi = doi, ...)
  glue::glue("[![DOI]({bdg})](https://doi.org/{doi})")
}

create_md_badge(doi = "10.25260/EA.17.27.3.0.465")

create_md_badge(doi = "10.1101/2020.10.12.334011")
