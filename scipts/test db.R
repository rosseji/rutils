
library(tidyverse)

library(DBI)

cn <- dbConnect(drv = RMySQL::MySQL(),
                username = "trendlock",
                password = "",
                host = "tldb.cx8scgskutrh.ap-southeast-2.rds.amazonaws.com",
                port = 3306,
                dbname = "bomweather")



dbWriteTable(cn, name = "test", value = mtcars)

dbWriteTable(cn, name = "test2", value = mtcars %>% mutate(gear2 = 2))

check <- dbGetQuery(cn, "SELECT * FROM test2;")


test_lg_df <- seq(10000) %>%
  map( ~ mtcars %>%
         mutate(grp = .x)) %>%
  bind_rows()

object.size(test_lg_df) %>% gdata::humanReadable()


dbWriteTable(cn, name = "lg_df", value = test_lg_df, overwrite = T)


check <- dbGetQuery(cn, "SELECT * FROM lg_df;")


DBI::dbGetInfo(cn)
DBI::stat
dbDisconnect(cn)
