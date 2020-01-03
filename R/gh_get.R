#' Retrieve information about a file or folder
#'
#' @param repo_name Name of the repository
#' @param org GitHub organization
#' @param path Path to the file or folder
#'
#' @return A list
#' @export
#'
#' @examples
#' \donttest{
#' gh_get("sara", "sara-org", "README.md")
#' }
gh_get <- function(repo_name, org, path) {
  httr::GET(
    stringr::str_glue(
      "https://api.github.com/repos/{org}/{repo_name}/contents/{path}"
    ),
    gh_auth()
  )
}

#' Retrieve information about a repository
#'
#'
#' @param repo_name Name of the repository
#' @param org Name of the organization
#'
#' @return Response object
#' @export
#'
#' @examples
#' \donttest{
#' gh_get_repo("sara", "sara-org")
#' }
gh_get_repo <- function(repo_name, org) {
  httr::GET(
    stringr::str_glue(
      "https://api.github.com/repos/{org}/{repo_name}"
    ),
    gh_auth()
  )
}
