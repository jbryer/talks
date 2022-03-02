# install.packages('scholar')

library(scholar)
library(tidyverse)
library(lubridate)

# RC Team: https://scholar.google.com/citations?user=yvS1QUEAAAAJ&hl=en&oi=sra
id <- 'yvS1QUEAAAAJ'

profile <- get_profile(id)
profile$name

pubs <- get_publications(id) %>%
	subset(author == 'RC Team')
View(pubs)

cites <- get_citation_history(id) %>%
	subset(year < year(Sys.Date()))
ggplot(cites, aes(year, cites)) + 
	geom_line() + 
	geom_point() +
	scale_x_continuous(breaks = seq(min(pubs$year, na.rm = TRUE), year(Sys.Date())-1)) +
	xlab('Year') + ylab('Number of Citations') +
	ggtitle('Number of Citations to R Core Team') +
	theme_bw()

					   