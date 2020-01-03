#' Authenticate to GitHub using PAT
#'
#' @return List
#' @export
#'
#' @examples
#' gh_auth()
gh_auth <- function() {
  httr::authenticate(pat_github(), "")
}

#' Retrieve GitHub PAT from .Renviron
#'
#' @return A string
#' @export
#'
#' @examples
#' pat_github()
pat_github <- function() {
  Sys.getenv("GITHUB_PAT")
}
