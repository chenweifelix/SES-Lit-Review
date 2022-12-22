colored <- function(x, color) {
  if (knitr::is_latex_output()) {
    sprintf("\\textcolor{%s}{%s}", color, x)
  } else if (knitr::is_html_output()) {
    sprintf("<span style='color: %s;'>%s</span>", color,x)
  } else x
}

#usage: `r colored("Hi", "red")`

#Insert arrows 
arr = function(x){
  if (stringr::str_starts(x, "r")){
    x = "&rarr;"
  }else if(stringr::str_starts(x, "l")){
    x = "&larr;"
  }else if(stringr::str_starts(x, "u")){
    x = "&uarr;"
  }else if(stringr::str_starts(x, "d")){
    x = "&darr;"}
  sprintf("<span>%s</span>", x)}

#Add sidenote 
side_note = function(text){
  sprintf("<div class='sidenote'>%s</div>", text)
}

