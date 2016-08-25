my_publish <- function (repo, username = getOption("github.user"), browse_URL = FALSE, folder = FALSE) 
{
  if (!file.exists("libraries")) {
    message("Please set mode to selfcontained and run Slidify")
    message("This would place library files in the slide folder")
    message("making it self-contained")
    invisible(return(FALSE))
  }
  if (!file.exists(".nojekyll")) {
    message("Adding .nojekyll to your repo...")
    file.create(".nojekyll")
  }
  message("Publishing deck to ", username, "/", repo)
  system("git config --global user.email \"you@example.com\"")
  system(sprintf("git config --global user.name %s", username))
  system("git add .")
  system("git commit -a -m \"publishing deck\"")
  system(sprintf("git push"))
  if (browse_URL == TRUE) {
    if (folder == TRUE) {
      folder_name = basename(getwd())
    }
    link = sprintf("http://%s.github.io/%s/%s", username, repo, folder_name)
    message("You can now view your slide deck at ", link)
    browseURL(link)
  }
}