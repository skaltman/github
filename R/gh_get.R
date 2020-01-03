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
