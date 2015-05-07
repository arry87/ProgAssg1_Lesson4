read_data <- function(filename){
  
    if(is.null(filename)){
        print("Enter valid filename")
    }
    else {
      
        ## FEEL DATA
        ## ############################################
        ## Create connection
        ## Read first few lines
        ## Understand data format
        ## ############################################
        
        ## CODE: FEEL DATA
        conn <- file(filename)
        z5 <- readLines(conn, 5)
        close(conn)
        ###############################################
        
        ## PROCESS DATA - RAW to ANALYTIC DATA
        ## ############################################
        ## 1 Read table, treat ? as NA with na.strings
        ## 2 Check if all dates are valid
        ## 3 Set the dates to the POSIXct format
        ## 4 Append formatted dates to data table
        ## 5 Define required dates
        ## 6 Identify indices of only the dates required
        ## 7 Re-create the table with only reqd. data.
        ## ############################################
        
        ## CODE: DATA PROCESSING (step by step)
        ## ############################################
        ## 1
        DT <- read.table(filename, header = TRUE, sep = ";", na.strings = "?")
        
        ## 2
        Num.NA.Values <- length(which(is.na(DT$Date) == TRUE))
        
        ## 3, 4
        if (Num.NA.Values == 0) {
          dates <- DT$Date
          times <- DT$Time
          raw.date.time <- str_c(dates, times, sep = " ")
          form.dates <- strptime(raw.date.time, "%d/%m/%Y %H:%M:%S")
          DT <- data.frame(DT, Formatted.Dates = form.dates)
          dates <- strptime(dates, "%d/%m/%Y")
        }
        
        ## 5
        DATE1 <- strptime("2007-02-01", "%Y-%m-%d")
        DATE2 <- strptime("2007-02-02", "%Y-%m-%d")
        
        ## 6
        inds <- which(dates == DATE1 | dates == DATE2)
        
        ## 7
        DT <- DT[inds, 3:10]
        
        DT
        
        ## RETURN DATA FRAME
        ## ############################################
      
    }
  
}