library(shiny)

runShinyApp <- function(appdir, ...) {
	params <- list(...)
	for(i in seq_len(length(params))) {
		.GlobalEnv[[names(params)[i]]] <- params[[i]]
		# on.exit(rm(names(params)[i], envir=.GlobalEnv))
	}
	if(length(params) > 0) {
		on.exit(rm(list = names(params), envir = .GlobalEnv))
	}
	runApp(appdir)
}


if(FALSE) {
	runShinyApp('shiny_test2')
	runShinyApp('shiny_test2', mtcars = mtcars)
	runShinyApp(appdir = 'shiny_test2', 
				param = 'Testing parameters',
				param2 = 'Testing a second parameter')
}
