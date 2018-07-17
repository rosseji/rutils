

R
options(help_type = "html")

library(tidyverse)
library('devtools')
install_github("mkearney/rtweet")

library(rtweet)
ls("package:rtweet")

rt <- search_tweets(
  "#rstats", n = 18000, include_rts = FALSE
)

appname <- "testappzz2322"
# key <- "HLIY3DoKyXhSeB6kwZNCYvezd"
# secret <- "TiAR36gnhrYIXekpjJNSPwdEqYBnGOGPUZXkFURkVef6k5A2qB"

twitter_token <- create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret)

  ## path of home directory
home_directory <- path.expand("~/")

## combine with name for token
file_name <- file.path(home_directory, "twitter_token.rds")

## save token to home directory
saveRDS(twitter_token, file = file_name)

cat(paste0("TWITTER_PAT=", file_name),
    file = file.path(home_directory, ".Renviron"),
    append = TRUE)
