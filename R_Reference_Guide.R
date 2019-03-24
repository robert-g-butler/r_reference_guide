
# R Reference Guide

# Section 1 - Introduction ----

{
  # Section 1.1 - Q & A ----
  
  # Q: What is this file?
  # A: This guide goes over some useful commands in R with examples. This file is pretty big, so press
  #    ALT + O on your keyboard now to "collapse" the file into chapters or sections. As you read the
  #    sections below, run each block of code with ALT + Enter to see what it does.
  
  # Q: What is R?
  # A: R is a computer language that is very good at manipulating data and visually showing it. You 
  #    know how you can create graphs and tables in Excel? R can do that better and faster. R can also
  #    do a lot of other things and is mainly limited by your creativity and how well you can search
  #    for answers on stackoverflow.com.
  
  # Q: Yo, there's too much text in this file and I don't like reading. Is there a TLDR version or
  #    something?
  # A: I think you can get away with just reading the sections for dplyr and ggplot2 below, under
  #    the "Packages" section.
  
  # Q: Oh boy, I'm super exited about R! Where else can I go to quench my insatiable thirst for
  #    knowledge?
  # A: Easy there, tiger. Here are some other resources that I found useful:
  #       1. http://r4ds.had.co.nz/
  #       2. https://cfss.uchicago.edu/dataviz_grammar_of_graphics.html
  #       3. http://tutorials.iq.harvard.edu/R/Rgraphics/Rgraphics.html
  
  # Q: Learning is hard. Why should I learn R?
  # A: If you have a job working with data or explaining data to others, then R can make your life much
  #    easier. After you get comfortable with R, you will be much faster and more effective at your
  #    job (giving you free time and street cred). After you get very good at R, you can start
  #    automating your job. R also applies to a lot of cutting-edge jobs (like Data Science or Big Data
  #    Analytics), so it gives you more options in your career path.
  
  # Q: I think that I've got the hang of R. What should I do next?
  # A: Once you are good at manipulating data with dplyr, creating visuals with ggplot2, and creating
  #    websites with shiny, here are some things you can start thinking about:
  #       1. Learn Python. This is a language that is similar to R, but it is better at general-purpose
  #          programming. It also is used by more industries, which is good to consider if you get
  #          tired of clinical trials.
  #       2. Take an online course at www.coursera.org for machine learning in R or Python. This may
  #          sound scary, but machine learning in R and Python is actually pretty straight-forward
  #          nowadays. It will let you program things that you couldn't do beforehand.
  #       3. Go to a conference or meetup (www.meetup.com/R-Users) to talk with others who program.
  #          This will give you ideas of what else you can do, and networking is always good.
  
  # Q: I want to know more about a function. How do I do that?
  # A: Place your cursor in a function, and press F1 on your keyboard. This will open up the function's
  #    documentation in the help window.
  
  # Q: I'm confused and I have questions! Help me!
  # A: Try looking for an answer by googling your question. This is how I've learned 99% of the 
  #    programming that I've done. If that doesn't work, email someone else in your company who works
  #    with R.
  
  # Section 1.2 - Useful Keyboard Shortcuts ----
  
  # SHIFT + ALT + K : Show keyboard shortcuts
  
  # ALT + O : Collapse all sections
  # SHIFT + ALT + O : Expand all sections
  
  # ALT + L : Collapse selected section
  # SHIFT + ALT + L : Expand selected section
  
  # ALT + - : Add assignment operator ( <- )
  # SHIFT + CTRL + M: Add pipe command ( %>% )
  
  # ALT + Enter : Run selected line(s)
  # CTRL + Enter : Run selected line(s) and move the cursor down
  # CTRL + ALT + B : Run from the top of the script to the selected line
  
  # Section 1.3 - Useful URLs ----
  
  # Basic R Tutorials:
  
  #   https://www.datacamp.com/
  #   https://dss.iq.harvard.edu/workshop-materials
  #   ftp://cran.r-project.org/pub/R/doc/manuals/r-release/R-lang.html
  
  # Blogs:
  
  #   https://deanattali.com/
  #   http://fportman.com/blog/
  #   https://fronkonstin.com/
  #   http://www.sthda.com/english/
  #   http://jkunst.com/
  
  # dplyr Tutorials:
  
  #   https://github.com/genomicsclass/labs/blob/master/intro/dplyr_tutorial.Rmd
  #   http://genomicsclass.github.io/book/pages/dplyr_tutorial.html
  
  # ggplot2 Tutorials:
  
  #   http://tutorials.iq.harvard.edu/R/Rgraphics/Rgraphics.html
  #   https://cfss.uchicago.edu/dataviz_grammar_of_graphics.html
  #   http://eriqande.github.io/rep-res-web/lectures/making-maps-with-R.html
  
  # shiny Tutorials:
  
  #   http://shiny.rstudio.com/tutorial/
  #   http://shiny.rstudio.com/articles/basics.html
  #   http://rstudio.github.io/shiny/tutorial/#welcome
  #   https://github.com/thomaskellough/Personal-Projects/tree/master/shiny-css-cheatsheet
  
  # Example and Resource Repositories:
  
  #   https://www.r-graph-gallery.com/
  #   http://r-statistics.co/Top50-Ggplot2-Visualizations-MasterList-R-Code.html
  #   https://paulvanderlaken.com/2017/08/10/r-resources-cheatsheets-tutorials-books/
  
  # Books:
  
  #   R for Data Science: http://r4ds.had.co.nz/
  #   Plotly for R: https://plotly-book.cpsievert.me/index.html
  #   Efficient R programming: https://csgillespie.github.io/efficientR/index.html#building-the-book
  
  # Classes or Class Materials:
  
  #   https://www.coursera.org/learn/exploratory-data-analysis
  #   https://www.coursera.org/learn/clinical-research
  #   https://www.biostat.washington.edu/suminst/sismid2018/modules/
  #   http://www.biostat.washington.edu/suminst/sisbid2018/modules
  #   http://www.biostat.washington.edu/suminst/sismid
  #   https://jonpage.github.io/r-course/
  #   http://omgenomics.com/plotting-in-r-for-biologists/
  #   https://homepage.divms.uiowa.edu/~luke/classes/STAT4580/qqpp.html
  
}

# Section 2 - Data Types & Operators & Functions  ----

# Description:
#   As we work in R, we will interact with lots of types of data. This data can be numbers, letters,
#   tables, formulas, and much more. We'll be doing a lot of tinkering with the data, and we do this
#   with Operators and Functions. In general, Operators will do logical things to data. For example
#   "x > 4" means "is x greater than 4?". Functions are used for getting information from and changing
#   our data. For example, "sqrt(x)" means "what is the square root of x?". In Sections 2.1 - 2.12 below,
#   we'll look at examples of data, and we will use operators and functions on that data. Run each
#   chunk of code below with CTRL + Enter. When you run the code, take a look in the console (either
#   to the right or below) to see what R says back to you.

{
  # Section 2.1 - Strings ----
  
  # Description:
  #   Strings are sets of characters surrounded in quotes. Run each block of code below with CTRL + Enter,
  #   and see what the R Console says back.
  
  {
    # Examples: ----
    
    "This is a string surrounded in double-quotes!"
    
    'This one has single quotes around it.'
    
    "This one is surrounded by double-quotes, and has 'single-quotes' in it. How fun! :D"
    
    "This string has \n in it, which R interprets as a new line."
    
    # Functions: ----
    
    # NOTE: Some of the 'base' functions in R are poorly designed, and there is a package called 'stringr'
    #       that contains better string-related functions. There is a section below that goes over the
    #       'stringr' package.
    
    # toupper() and tolower() capitalize and un-capitalize strings.
    toupper("i write emails in captials so that people listen to me!")
    tolower("AND I DON'T LIKE CAPITALS... MAKE ME LOWER CASE, PLEASE...")
    
    # nchar() tells us the length of a string.
    nchar("Oh boy! This string has 44 characters in it.")
    
    # class() tells us the type of data that we are using.
    class("class() isn't too imporant, so try to forget it.")
    
    # is.character() tells us if something is a string.
    is.character("Am I a string?")
    
    # paste() concatenates strings together.
    paste("This", "is", "a", "string.")
    
    # paste() with sep & collapse specifies how to concatenate strings. We'll learn about c() later in
    # the section about vectors.
    paste(c("a", "b", "c", "d"), c("A", "B", "C", "D"),
          sep = "_",
          collapse = ", ")
    
    # paste0() concatenates strings with sep = "".
    paste0("Where", "Da", "Spaces", "At?")
    
    # substr() returns a subset of a string.
    substr("I want a string with just the words plumpus rumpus in it. Provide this to me.",
           start = 37,
           stop = 50)
    
    # print() sends things to the console.
    print("This string will go right to the console!")
    
    # sprintf() inserts values into a string, and the values are represented by %s, %d, %i, etc.
    sprintf("The %s in this string is a placeholder of where to insert the next string.",
            "STRING")
    sprintf("The first integer is %i and the second is %i. How delightful!",
            42, 5)
    sprintf("My number with 5 decimal places is %1.5f. ",
            pi)
    sprintf("My 7-digit-long integer with leading spaces is %7i.",
            36)
    sprintf("My 5-digit-long integer with leading zeroes is %05i.",
            183)
    
    # regexpr() returns information on the first position that a 'pattern' is found in some text.
    regexpr(pattern = "e",
            text = "I have found 5 e's in this sentence, at positions 6, 16, 29, 32, and 35.")
    
    # c(regexpr()) will give you the first position that the 'pattern' is found in the text.
    c(regexpr(pattern = "e",
              text = "I have found 5 e's in this sentence, at positions 6, 16, 29, 32, and 35."))
    
    # gregexpr() returns information on all positions that a 'pattern' is found in some text.
    gregexpr(pattern = "e",
             text = "I have found 5 e's in this sentence, at positions 6, 16, 29, 32, and 35.")
    
    # c(gregexpr()[[1]]) will give you all position that the 'pattern' is found in the text.
    c(gregexpr(pattern = "e",
               text = "I have found 5 e's in this sentence, at positions 6, 16, 29, 32, and 35.")[[1]])
    
    # sub() replaces the first 'pattern' in a string with some 'replacement'.
    sub("She sells sea shells by the sea shore. The sea is harsh mistress.",
        pattern = "sea",
        replacement = "___")
    
    # gsub() replaces all 'patterns' in a string with 'replacements'.
    gsub("She sells sea shells by the sea shore. The sea is harsh mistress.",
         pattern = "sea",
         replacement = "___")
    
    # strsplit() creates a list from a string. We will learn about lists in the list section below.
    strsplit("She sells sea shells by the sea shore. The sea is harsh mistress.",
             split = " ")
    
  }
  
  # Section 2.2 - Numbers ----
  
  # Description:
  #   Numbers are exactly what they sound like - things that you can use for math.
  #   R stores numbers in different ways, depending if they have decimals or not, or if they are 'imaginary'.
  #   The default number type is called "numeric", which can be a whole number or number with decimals.
  #   These take up 8 bytes in memory.
  #   Next up are integers, which have to be specified by typing an L after the number (e.g., "10L"). These
  #   take up 4 bytes in memory, they can't have decimals, and they can only be up to ~2 billion.
  #   Last are complex numbers. I didn't do so good in algebra class, so I don't remember what these are.
  #   At the very least, there are some examples below.
  
  #   You should only ever need to use numeric numbers (the default number type), but it's good to know what
  #   integers and complex numbers are, in case they pop up.
  #   Run each line of code below with CTRL + Enter to see how R works with numbers.
  
  {
    # Examples: ----
    
    # Numerics
    1
    42
    5.6
    9e3
    7.5e32
    
    # Integers
    1L
    42L
    2147483647L
    
    # Complex
    3i
    1 + 7i
    4 + 25i
    
    # Functions: ----
    
    # The class(), typeof(), and is...() functions let us know what kind of number we have. These are not
    # too useful because we should always be using numerics.
    class(1)
    typeof(1)
    is.numeric(1)
    
    class(1L)
    typeof(1L)
    is.integer(1L)
    
    class(1 + 1i)
    typeof(1 + 1i)
    is.complex(1 + 1i)
    
    # Simple algebra can be done with the math operators +, -, *, /, ^, %%. The %% symbol is called modulo,
    # and is the remainder.
    5 + 5
    10 - 5
    4 * 7
    21 / 7
    5 ^ 3
    28 %% 6
    
    # sqrt() tells us the square root.
    sqrt(100)
    
    # log() tells us the logarith of a number. For example with '2^x = 16', you can find x with
    # 'log(16, base = 2)'.
    log(10, base = 10)
    log(100, base = 10)
    log(1000, base = 10)
    log(2, base = 2)
    log(4, base = 2)
    log(8, base = 2)
    
    # round() rounds a number to the nearest number of decimals.
    round(pi)
    round(pi, digits = 1)
    round(pi, digits = 4)
    
    # ceiling() rounds up to the nearest whole number.
    ceiling(pi)
    
    # floor() rounds down to the nearest whole number.
    floor(pi)
    
  }
  
  # Section 2.3 - Dates ----
  
  # Description:
  #   Dates in R are specially formatted numbers. Let's go over some functions for formatting and working
  #   with dates below.
  #   Run each line of code below with CTRL + Enter to see how R works with dates.
  
  # Sys.Date() gives us the the current date.
  Sys.Date()
  
  # Sys.time() gives us the current datetime.
  Sys.time()
  
  # format() turns the date into a string, with the specified format.
  format(Sys.Date(), format = "%d %b %Y")
  format(Sys.Date(), format = "%Y-%m-%d")
  format(Sys.Date(), format = "%A, %d %B %Y")
  format(Sys.Date(), format = "%y.%m.%d")
  
  # You can look up the different date formats online. Run the code below to see them all together:
  writeLines(format(Sys.Date(), "Numeric Day   %%d - %d\nShort Weekday %%a - %a\nLong Weekday  %%A - %A\nNumeric Month %%m - %m\nShort Month   %%b - %b\nFull Month    %%B - %B\n2-digit Year  %%y - %y\n4-digit Year  %%Y - %Y"))
  
  # You can add or subtract dates and numbers.
  Sys.Date() - 30
  Sys.Date() + 365
  Sys.Date() - Sys.Date()
  Sys.time() + 9e7
  Sys.time() - Sys.time()
  
  # as.Date() turns a string into a date, with the specified format.
  as.Date("2018-09-20", format = "%Y-%m-%d")
  as.Date("03/18/2008", format = "%m/%d/%Y")
  as.Date("07Jan1995", format = "%d%b%Y")
  
  # NOTE: The lubridate package below is able to more easily turn strings to dates than the as.Date()
  #       function.
  
  # Section 2.4 - Booleans & Operators ----
  
  # Description:
  #   Boolean is the programming name for "True" and "False". We will use booleans quite a lot to tell the
  #   computer what to do.
  #   Operators are simple symbols that are used to compare or combine values.
  #   Run each line of code below with CTRL + Enter to see how R works with TRUE, FALSE, and operators.
  
  {
    # Booleans: ----
    
    # The class of TRUE is "logical", which means the same as "boolean".
    class(TRUE)
    
    # The two possible values of booleans are TRUE and FALSE.
    TRUE
    FALSE
    
    # Operators: ----
    
    # Putting the NOT operator (!) in front of a boolean makes it invert.
    !(TRUE)
    !(FALSE)
    
    # The AND operator (&) returns TRUE if all compared values are TRUE.
    TRUE & TRUE
    TRUE & FALSE
    FALSE & FALSE
    
    # The OR operator (|) returns TRUE if any compared values are TRUE.
    TRUE | TRUE
    TRUE | FALSE
    FALSE | FALSE
    
    # xor() returns TRUE if only one argument is TRUE.
    xor(TRUE, TRUE)
    xor(TRUE, FALSE)
    xor(FALSE, FALSE)
    
    # The operators below are used to compare values with one another.
    1 == 2
    1 != 2
    1 < 2
    1 <= 2
    1 > 2
    1 >= 2
    
    # There are also && and || operators, which perform left-to-right evaluation of the first element of
    # each clause. These are mostly used in if() statements, and we can ignore them for now.
    TRUE && TRUE
    TRUE && FALSE
    FALSE && FALSE
    TRUE || TRUE
    TRUE || FALSE
    FALSE || FALSE
    
  }
  
  # Section 2.4 - Assigning Variables ----
  
  # Description:
  #   If you assign a variable with <-, then that variable will store a value in R.
  #   Variables must start with a letter, and they can include most alphanumeric characters.
  #   We will use variables a LOT in our scripts so that we can save things in one place and use them
  #   in another.
  #   Run each line of code below with CTRL + Enter to see how R assigns variables.
  
  # Assign a string to the variable "x" with "<-" .
  x <- "This string is being assigned to the variable 'x'. From now on, 'x' is the same as this string."
  x
  
  # Assign numbers to num_first and num_second. Then do math with them.
  num_first <- 5
  num_second <- 7
  num_first + num_second
  num_first - num_second
  num_first * num_second
  num_first / num_second
  
  # exists() lets us know if variables have been assigned to something.
  exists("Z")
  exists("y")
  exists("x")
  
  # ls() tells us what variables are stored in memory.
  ls()
  
  # Use rm() to delete the variables num_first and num_second.
  rm(num_first, num_second)
  
  # Use rm(list = ls()) to delete all other variables.
  rm(list = ls())
  
  # Section 2.5 - NA & NULL ----
  
  # Description:
  #   NA and NULL are meant to represent when something is "missing".
  #   NA usually pops up when you have an empty space in a vector or data frame, which we will get to later.
  #   NULL pops up when you ask R for something that doesn't exist.
  #   Run each line of code below with CTRL + Enter to see how R works with NA and NULL.
  
  # NA represents a missing value.
  NA
  
  # is.na() lets you check if something is NA.
  is.na(NA)
  
  # There are also NA values specifially for character, numeric, and other data types.
  NA_character_
  NA_integer_
  
  # NULL represents a missing object.
  NULL
  
  # is.null() lets you check if something is NULL.
  is.null(NULL)
  
  # For example, let's see if the string "hello" has the attribute "length".
  # It doesn't, and R tells us "NULL".
  attr("hello", which = "length")
  
  # Section 2.6 - Vectors ----
  
  # Description:
  #   Vectors are sets of values that all have the same data type.
  #   The most common ones we will use are character (string) vectors, numeric vectors,
  #   and logical (boolean) vectors.
  #   Run each line of code below with CTRL + Enter to seel how R works with vectors.
  
  {
    # Logical Vectors ----
    
    # logical() and vector() let us make a blank logical vector. Let's make one with a length of 0.
    vec_zero_values <- logical(length = 0)
    vec_zero_values
    vec_zero_values <- vector(mode = "logical", length = 0)
    vec_zero_values
    
    # Use vector() to assign a logical vector with a length of 5.
    vec_five_values <- vector(mode = "logical", length = 5)
    vec_five_values
    
    # c() lets us combine values into a vector. Let's do this with some TRUE and FALSE values.
    vec_logical_values <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
    vec_logical_values
    
    # rep() lets us make a vector from repeating values.
    rep(x=c(TRUE, FALSE), time=3)
    rep(x=c(TRUE, FALSE), each=2)
    rep(x=c(TRUE, FALSE), time=3, each=2)
    
    # [ ] lets us find values at different positions in the vector.
    vec_logical_values <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
    vec_logical_values[3]  # Value at position 3
    vec_logical_values[c(2, 5)]  # Value at positions 2 and 5
    vec_logical_values[3:5]  # Value at positions 3 through 5
    vec_logical_values[-3]  # All values except position 3
    
    # Use rm() to remove all saved variables.
    rm(list = ls())
    
    # Numeric Vectors ----
    
    {
      # Examples: ----
      
      # numeric() and vector() let us make a blank numeric vector. Let's make one with a length of 0.
      vec_zero_values <- numeric(length = 0)
      vec_zero_values
      vec_zero_values <- vector(mode = "double", length = 0)
      vec_zero_values
      
      # Use vector() to assign a numeric vector of length 5.
      vec_five_values <- vector(mode = "double", length = 5)
      vec_five_values
      
      # c() lets us combine values into a vector. Let's do this with some numbers.
      vec_numbers <- c(4, 2, NA, 4, 42, 17)
      vec_numbers
      
      # #:# lets us make a vector from a sequence of numbers.
      vec_numbers <- 1:20
      vec_numbers
      
      # [ ] lets us find values at different positions in the vector.
      vec_numbers <- c(4, 2, NA, 4, 42, 17)
      vec_numbers[5]  # Value at position 5
      vec_numbers[c(1, 6)]  # Values at positions 1 and 6
      vec_numbers[3:5]  # Values at positions 3 through 5
      vec_numbers[-3]  # All values except position 3
      
      # Functions: ----
      
      # seq() lets us make a vector from a sequence of numbers.
      seq(from = 3,
          to = 27,
          by = 3)
      seq(from = 10,
          by = 10,
          length.out = 15)
      
      # rep() lets us make a vector from repeating values.
      rep(x = c(1, 2, 3),
          time = 3)
      rep(x = c(1, 2, 3),
          each = 2)
      rep(x = c(1, 2, 3),
          time = 3,
          each = 2)
      
      # sample() lets us make a vector with shuffled values.
      sample(x = 0:1,
             size = 10,
             replace = TRUE)
      sample(x = 1:5,
             size = 5,
             replace = FALSE)
      sample(x = 1:100,
             size = 1)
      
      # length() tells us how long a vector is.
      vec_numbers <- c(3, 2, 3, 0, NA, 1, 8, 42, 1, 17, 23)
      length(vec_numbers)
      
      # We can use algebra operators to do math on each elements in vectors, or to do math with 2 vectors
      # against each other.
      vec_numbers <- 1:10
      vec_numbers + 5
      vec_numbers - 5
      vec_numbers * 5
      vec_numbers / 5
      vec_numbers %% 5
      vec_numbers + 1:10
      vec_numbers - 1:10
      vec_numbers * 1:10
      vec_numbers / 1:10
      vec_numbers %% 1:10
      
      # sum(), mean(), median(), min(), max(), and range() lets us get math info about a vector.
      # na.rm means "skip over NA values".
      vec_numbers <- c(3, 2, 3, 0, NA, 1, 8, 42, 1, 17, 23)
      sum(vec_numbers,
          na.rm = TRUE)
      mean(vec_numbers,
           na.rm = TRUE)
      median(vec_numbers,
             na.rm = TRUE)
      min(vec_numbers,
          na.rm = TRUE)
      max(vec_numbers,
          na.rm = TRUE)
      range(vec_numbers,
            na.rm = TRUE)
      
      # cumsum(), cumprod(), cummin(), and cummax() lets us get the rolling sum/product/min/max of a
      # vector. Don't worry about remembering these functions, they're not too useful.
      vec_numbers <- c(3, 2, 3, 0, 5, 1, 8, 42, 1, 17, 23)
      cumsum(vec_numbers)
      cumprod(vec_numbers)
      cummin(vec_numbers)
      cummax(vec_numbers)
      
      # %in% lets us see if one set of values is in another.
      vec_numbers <- c(3, 2, NA, 0, 5, 1, 8, 42, 1, 17, 23)
      2 %in% vec_numbers
      NA %in% vec_numbers
      102 %in% vec_numbers
      1:5 %in% vec_numbers
      
      # sort() lets us order a vector.
      # "na.last" lets us specify how to handle NAs, and "decreasing" lets us flip the sort order.
      vec_numbers <- c(3, 2, NA, 0, 5, 1, 8, 42, 1, 17, 23)
      sort(vec_numbers)
      sort(vec_numbers,
           decreasing = TRUE)
      sort(vec_numbers,
           na.last = TRUE)
      
      # Use rm() to remove all saved variables.
      rm(list = ls())
      
    }
    
    # Character Vectors ----
    
    {
      # Examples: ----
      
      # character() and vector() let us make a blank character vector. Let's make one with a length of 0.
      vec_zero_values <- character(length = 0)
      vec_zero_values
      vec_zero_values <- vector(mode = "character", length = 0)
      vec_zero_values
      
      # Use vector() to assign a character vector of length 5.
      vec_five_values <- vector(mode = "character", length = 5)
      vec_five_values
      
      # c() lets us combine values into a vector. Let's do this with some strings.
      vec_three_strings <- c("Yo, I'm string #1.",
                             "And I'm the cool string, #2.",
                             "Yeah, but I'm the hippest string - #3.")
      vec_three_strings
      
      # [ ] lets us find values at different positions in the vector.
      vec_strings <- c("Nicholas Gelman", "Nathan Huang", "Robbicus Butticus", "Roger Kwan", "David Lim",
                       "Kevin Chiang", "Lee Sun", "Lu Zhang", "Daniel Park", "Shirley Vu")
      vec_strings[7]  # Value at position 7
      vec_strings[c(3, 5)]  # Values at positions 3 and 5
      vec_strings[4:6]  # Values at positions 4 through 6
      vec_strings[-3]  # All values except position 3
      
      # names() lets us assign names for each value in a vector. This isn't very useful for vectors,
      # but will become useful once we start working with data frames. name() allows us to find values
      # based on their names.
      vec_strings <- c("Robert Butler", "27", "16-Aug-1991", "Male", "Caucasian", "Human Bean")
      vec_strings
      names(vec_strings) <- c("Name", "Age", "Birthdate", "Gender", "Race", "Species")
      vec_strings
      vec_strings[c(1, 6)]  # Values at positions 1 and 6
      vec_strings[c("Name", "Species")]  # Values with names "Name" and "Species"
      
      # Functions: ----
      
      # NOTE: Some "base" R functions for string vectors are below, but there are much better options in
      #       the "stringr" package. I'd recommend that you ignore the functions below and instead use
      #       the ones from the "stringr" package.
      
      # length() tells us how long a vector is.
      vec_strings <- c("Robert Butler", "27", "16-Aug-1991", "Male", "Caucasian", "Human Bean")
      length(vec_strings)
      
      # match() does the same thing as grep(), but uses an "exact match" instead of a "pattern".
      vec_strings <- c("Robert Butler", "27", "16-Aug-1991", "Male", "Caucasian", "Human Bean")
      match(x = "27",
            table = vec_strings)  # "27" is at position 2.
      match(x = "STRING!",
            table = vec_strings)  # "STRING!" is not present.
      
      # grep() tells us which strings in a vector contain a pattern. This is similar to match(), but uses a
      # "pattern" instead of an "exact match".
      vec_strings <- c("I'm the 1st string.", "And I'm string #2!", "Me be string 3!")
      grep(pattern = "I'm",
           x = vec_strings)  # "I'm" is present in strings #1 and #2.
      grep(pattern = "Me",
           x = vec_strings)  # "Me" is present in string #3.
      
      # grep(value = TRUE) gives us the strings, instead of their position in a vector.
      vec_strings <- c("I'm the 1st string.", "And I'm string #2!", "Me be string 3!")
      grep(pattern = "I'm",
           x = vec_strings,
           value = TRUE)  # "I'm" is present in strings #1 and #2.
      grep(pattern = "Me",
           x = vec_strings,
           value = TRUE)  # "Me" is present in string #3.
      
      # grepl() tells us with TRUE/FALSE whether each string in a vector contains a pattern.
      vec_strings <- c("I'm the 1st string.", "And I'm string #2!", "Me be string 3!")
      grepl(pattern = "I'm",
           x = vec_strings)  # "I'm" is present in strings #1 and #2.
      grepl(pattern = "Me",
           x = vec_strings)  # "Me" is present in string #3.
      
      # %in% lets us see if one set of values is in another.
      vec_strings <- c("Robert Butler", "27", "16-Aug-1991", "Male", "Caucasian", "Human Bean")
      "27" %in% vec_strings
      NA %in% vec_strings
      5 %in% vec_strings
      "Human Bean" %in% vec_strings
      
      # sort() lets us order a vector.
      # "na.last" lets us specify how to handle NAs, and "decreasing" lets us flip the sort order.
      vec_strings <- c("Robert Butler", "27", "16-Aug-1991", NA, "Male", "Caucasian", "Human Bean")
      sort(vec_strings)
      sort(vec_strings,
           decreasing = TRUE)
      sort(vec_strings,
           na.last = TRUE)
      
      # All of the string functions from above also work on string vectors.
      vec_strings <- c("Robert Butler", "27", "16-Aug-1991", "Male", "Caucasian", "Human Bean")
      toupper(vec_strings)
      tolower(vec_strings)
      nchar(vec_strings)
      paste(vec_strings, collapse = ", ")
      substr(vec_strings, 1, 3)
      regexpr(pattern = "a", text = vec_strings)
      gregexpr(pattern = "a", text = vec_strings)
      sub(pattern = "a", replacement = "___", x = vec_strings)
      gsub(pattern = "a", replacement = "___", x = vec_strings)
      
      # Use rm() to remove all saved variables.
      rm(list = ls())
      
    }
    
  }
  
  # Section 2.7 - Matrices ----
  
  is.matrix(as.matrix(1))
  
  # Create a matrix with matrix().
  matrix1 <- matrix(1:9, byrow = F, nrow = 3)
  matrix1
  
  # Get information about the matrix.
  dim(matrix1)
  
  # Get values from the matrix.
  matrix1[1,2]  # row 1, col 2
  matrix1[1,]
  matrix1[,2]
  matrix1[2:3,]
  matrix1[-1,]
  
  # Assign row & column names for the matrix.
  colnames(matrix1) <- c("Col1", "Col2", "Col3")
  rownames(matrix1) <- c("Row1", "Row2", "Row3")
  matrix1
  
  # Use cbind() and rbind() to combine columns and rows of matrices.
  cbind(matrix1, matrix1)
  rbind(matrix1, matrix1)
  
  # Calculate summaries for each row & column
  rowSums(matrix1)
  colSums(matrix1)
  rowMeans(matrix1)
  colMeans(matrix1)
  
  # Transpose a matrix with t()
  matrix1
  t(matrix1)
  
  # Math on Matrices
  matrix1
  matrix1 + matrix1
  matrix1 - matrix1
  matrix1 * matrix1
  matrix1 / matrix1
  matrix1 ^ matrix1
  matrix1 %% matrix1
  matrix1 %*% matrix1 # Matrix multiplication?
  matrix1 %o% matrix1 # Matrix outer multiplication?
  
  # Section 2.8 - Arrays ----
  
  # Arrays are very similar to vectors & matrices, but they can be multi-dimensional.
  
  # Create a 1-dimensional array.
  array1 <- array(1:4, dim = 4)
  array1
  
  # Create a 2-dimensional array.
  array2 <- array(1:4^2, dim = c(4, 4))
  array2
  
  # Create a 3-dimensional array.
  array3 <- array(1:4^3, dim = c(4, 4, 4))
  array3
  
  # Section 2.9 - Lists ----
  
  # Create a list with a vector, matrics, and data frame.
  list(1:10, matrix(1:4, ncol = 2), head(mtcars))
  
  # Assign the list, and create names for each component.
  list1 <- list(vec = 1:10,
                mat = matrix(1:4, ncol = 2),
                dat = head(mtcars))
  list1
  
  # Append a string to the list with c(). Don't use list() because this just wraps the 1st list in another
  # list.
  list1 <- c(list1,
             str = "Hello World!")
  list1
  
  # Get information on list1.
  names(list1)
  str(list1)
  
  # Get components from list1.
  list1[[1]]
  list1[[2]]
  list1[["dat"]]
  list1[["str"]]
  list1$vec
  list1$mat
  
  # Why use [[]] instead of []? [] returns the element wrapped in a list, while [[]] returns the element.
  class(list1[1])
  class(list1[[1]])
  class(list1$vec)
  
  # Get values from list1 components.
  list1[[2]][1, 2]
  list1[["dat"]][, c("mpg", "hp")]
  list1$vec[3]
  
  # Section 2.10 - Factors ----
  
  # Factors are when you store a Data Dictionary of values. Values are stored as numbers (like Coded Data).
  # Levels = Unique values (like entries in a Data Dictionary)
  # Labels = Labels that are displayed for each Level. Like User Data String).
  
  # Create a NOMINAL factor with factor().
  factor.direction <- factor(x = c("U", "L", "R", "D", "L", "U"))
  factor.direction
  
  # Rename levels with levels()
  levels(factor.direction) <- c("Down", "Left", "Right", "Up")
  factor.direction
  
  # Get information about the factor.
  class(factor.direction)
  is.factor(factor.direction)
  levels(factor.direction)
  summary(factor.direction)
  factor.direction[1]
  factor.direction[-2]
  factor.direction[2:3]
  factor.direction[c(2, 4)]
  
  # Create a ORDINAL factor by specifying order and levels.
  factor.temp <- factor(x = c("High", "Low", "High", "Low", "Medium"),
                        ordered = T,
                        levels = c("Low", "Medium", "High"))
  factor.temp
  
  # Compare values in the ordinal factor
  factor.temp[1] > factor.temp[2]
  
  # Section 2.11 - Data Frames ----
  
  is.data.frame(as.data.frame(1))
  
  # Look at the built-in dataset "mtcars"
  mtcars
  
  # Get information about mtcars.
  head(mtcars, 10)
  tail(mtcars, 10)
  dim(mtcars)
  str(mtcars)
  colnames(mtcars)
  rownames(mtcars)
  summary(mtcars)
  
  # Get values from mtcars.
  mtcars[1, 1]  # row 1, col 1
  mtcars[1, 1:5]  # row 1, col 1-5
  mtcars[1:3, 2]  # rows 1-3, col 2
  mtcars[2, ]  # row 2
  mtcars[, 3]  # col 3
  mtcars[, -5:-7]  # all col, except 5-7
  mtcars[, "mpg"]  # col "mpg"
  mtcars[, c("mpg", "hp")]  # col "mpg" & "hp"
  mtcars$mpg  # col "mpg"
  
  # Use subset() to get values from mtcars.
  subset(x = mtcars,
         subset = mpg > 25,
         select = mpg:hp)
  
  # Re-order mtcars by hp.
  mtcars[order(mtcars$hp), ]
  
  # Dp the same thing with with(), so that you don't have to specify table$column.
  with(mtcars, mtcars[order(hp), ])
  
  # Create a data frame with vectors.
  name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
  type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
  diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
  rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
  df.planets <- data.frame(name, type, diameter, rotation,
                           stringsAsFactors = F)
  df.planets
  
  # Use cbind() to add a column to df.planets.
  rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
  df.planets <- cbind(df.planets, rings)
  df.planets
  
  # Use rbind() to add a row to df.planets.
  pluto <- c("Pluto", "Terrestrial planet", 0.187, 6.39, FALSE)
  df.planets <- rbind(df.planets, pluto)
  
  # Rename the "rotation" column.
  colnames(df.planets)[4] <- "Sidereal rotation period"
  df.planets
  
  # Section 2.12 - Raws ----
  
  class(charToRaw("string"))
  
}

# Section 3 - Conditional Logic ----

# Use the if() function to return expressions conditionally.
age <- sample.int(100, 1)
if(age < 16){
  sprintf("%i is too young to drive.", age)
} else if(age < 21){
  sprintf("%i is too young to vote.", age)
} else if(age < 40){
  sprintf("%i is prior to a mid-life crisis.", age)
} else if(age < 65){
  sprintf("%i is still waiting for social security.", age)
} else {
  sprintf("%i is during the twighlight years.", age)
}

# Use the switch() function to return expressions conditionally.
grade <- c("A", "B", "C", "D", "F")[sample.int(5, 1)]
switch(grade,
       "A" = print("A is perfect."),
       "B" = print("B is good."),
       "C" = print("C is passing."),
       "D" = print("D is below passing."),
       "F" = print("F is failing."),
       sprintf("%s is not a grade.", grade)
)

# ifelse() for conditional logic within dataframe variable.
ifelse()

# Section 4 - Looping ----

# Repeat = loop until a break
i=1
repeat{
  print(i)
  i=i+1
  if(i>5){
    break
  }
}

# While = loop while condition is met.
i=10
while(i>0){
  i=i-1
  if(i%%2==0){
    next
  }
  print(i)
}

# For = loop for a set duration
for(i in 1:10){
  print(i)
}

# Section 5 - User-Defined Functions ----

func.getsum <- function(arg1, arg2){
  return(arg1 + arg2) # Return returns the value
}
func.getsum(2, 3)

func.getdiff <- function(arg1=0, arg2=0){ # Set default values with =
  arg1 - arg2 # If there's no return, then the last statement is returned
}
func.getdiff(15, 4)

func.makelist <- function(arg1=""){
  return(strsplit(arg1, split=" "))
}
func.makelist("Hello there!")

func.checkmissing <- function(arg1, arg2, arg3){
  if(missing(arg1) && missing(arg2) && missing(arg3)){
    return("All arguments are missing.") # Missing lets you know if an argument was not provided.
  } else if(!missing(arg1) && !missing(arg2) && !missing(arg3)){
    return("All arguments are provided.")
  } else {
    return("Some arguments are provided.")
  }
}
func.checkmissing(1, 2, 3)
func.checkmissing(1, 2)
func.checkmissing(1)
func.checkmissing()

func.sumall <- function(...){ # ... allows any number of arguments.
  list.args <- list(...)
  num.sum <- 0
  for(i in list.args){
    num.sum <- num.sum + i
  }
  return(num.sum)
}
func.sumall(1,5,6,7)

# Use a one-time / disposable function
list.numbers <- 1:10
list.doublenumbers <- (function(x) x * 2)(list.numbers)
list.doublenumbers

# Use a function inside a function
func.power <- function(exponent){
  function(inputnum){
    return(inputnum ^ exponent)
  }
}
func.cubed <- func.power(3)
func.cubed(2)
func.cubed(1:5)

# Create functions inside a list (you'd probably never do this)
func.adding <- list(
  add2 = function(x) x+2,
  add3 = function(x) x+3
)
func.adding$add2(5)

# Section # - Evaluating Expressions ----

# Stack Overflow for !! & quosure - https://stackoverflow.com/questions/49469982/r-using-a-string-as-an-argument-to-mutate-verb-in-dplyr
# Book on Evaluation - https://adv-r.hadley.nz/evaluation.html
# Good dplyr example - https://dplyr.tidyverse.org/articles/programming.html
# Blog post that might be good - https://edwinth.github.io/blog/nse/

# https://cran.r-project.org/web/packages/dplyr/vignettes/programming.html
#   !!parse_quosure()
#   !!!
#   !!paste0() := VAR

# Section 6 - Exception Handling ----

func.divide <- function(num1, num2){
  tryCatch(
    num1 / num2,
    error = function(e){
      if(!is.numeric(num1) || !is.numeric(num2)){
        print("Arguments must be numeric.")
      }
    }
  )
}
func.divide("dog", 2)
func.divide(7, pi)

# Section 7 - Statistics ----

# TODO: https://uc-r.github.io/kmeans_clustering

{
  # K-Means Clustering ----
  
  library(ggplot2)
  
  # Shows coloring by Species (each species is in its own area)
  ggplot(data = iris,
         mapping = aes(x = Petal.Length,
                       y = Petal.Width,
                       shape = Species,
                       color = Species)) +
    geom_point()
  
  # Do K-Means clustering for the selected columns. X is everything that you want to compare.
  kmeans_cluster_iris <- kmeans(x = iris[, 3:4],
                                centers = 3,  # Number of clusters
                                iter.max = 20)  # Number of tries for grouping
  
  # Check the Species vs clusters
  table(kmeans_cluster_iris$cluster, iris$Species)  # It wasn't perfect (misgrouped a few)
  
  # Graph by cluster
  ggplot(data = iris,
         mapping = aes(x = Petal.Length,
                       y = Petal.Width,
                       shape = as.character(kmeans_cluster_iris$cluster),
                       color = as.character(kmeans_cluster_iris$cluster))) +
    geom_point()
  
  # Heirarchical Clustering ----
  
  # Create a distance matrix with dist()
  distance_matrix <- dist(x = iris[, 3:4],
                          method = 'euclidean')  # OR: "maximum", "manhattan", "canberra", "binary", "minkowski"
  
  # Create a cluster with hclust()
  complete_clusters <- hclust(d = distance_matrix,
                     method = 'complete')
  
  plot(complete_clusters)
  
  # Cut the tree into 3 clusters
  cut_complete_clusters <- cutree(tree = complete_clusters,
                         k = 3)
  
  # Check which species got cut into which clusters (it did a bad job)
  table(cut_complete_clusters, iris$Species)
  
  # Do clustering again with an 'average' method, to see if we can do better
  average_clusters <- hclust(d = distance_matrix,
                     method = 'average')
  plot(average_clusters)
  cut_average_clusters <- cutree(tree = average_clusters,
                                 k = 3)
  table(cut_average_clusters, iris$Species)  # We did much better
  
  # Graph it as a final step (we clustered pretty well)
  library(ggplot2)
  ggplot(data = iris,
         mapping = aes(x = Petal.Length,
                       y = Petal.Width,
                       color = Species)) +
    geom_point(alpha = .2, size = 3.5) +
    geom_point(color = cut_average_clusters)
  
  # Basic Stats Functions ----
  str()
  summary()
  dim ()
  nrow()
  ncol()
  names()
  attr()
  attributes()
  aggregate()
  
  # Find row in a data frame by doing:
  mtcars[which.max(mtcars$mpg), ]
  mtcars[which.min(mtcars$wt), ]
  
  # Find aggregate data by doing:
  aggregate(mpg~gear, data=mtcars, FUN="mean")
  # Find the mean MPG for each GEAR.
  
  # Plotting variables against each other
  plot(mtcars) # Plot all variables
  
  plot(mtcars$hp ~ mtcars$disp) # Plot mtcars$disp on x-axis, vs mtcars$hp on y-axis
  table(mtcars$am) # Get the COUNT of each value within mtcars$am.
  boxplot(hp ~ cyl, data=mtcars) # Boxplot, with ranges of mtcars$hp for each mtcars$cyl
  barplot(table(mtcars$cyl))  # Show counts of cars for each mtcars$cyl
  
  # Regression Analysis (Line through data) ----
  
  head(faithful, 3)
  
  coef(lm(eruptions ~ waiting, data = faithful))
  
  # Kernel Density - https://stat.ethz.ch/R-manual/R-devel/library/stats/html/density.html
  #  Hook it up with geom_density() - https://ggplot2.tidyverse.org/reference/geom_density.html
  
  # Create a linear model relationship ( ex. y = 2x + 3 )
  relation.erpt.wait <- lm(faithful$waiting ~ faithful$eruptions) # lm(y~x)
  
  plot(x = faithful$eruptions,
       y = faithful$waiting,
       main = "Geyser Eruptions VS Waiting",
       xlab = "Eruptions",
       ylab = "Waiting",
       abline(a = relation.erpt.wait, # Linear models are input this way for abline.
              col = "red",
              lty = 2)) # abline can be added to a plot, inside the plot function.
  
  abline(a = 80, # Intercept
         b = -5, # Slope
         col = "blue",
         lty = 3)
  
  # Correlation ----
  
  # cor.test by default returns the Pearson's Correlation
  # If the p-value is less that 0.05, then the null hypothesis is rejected and the 2 variables are related
  
  attach(anorexia) # Default dataframe
  library(MASS)
  cor.test(Prewt, Postwt)
  detach(anorexia)
  
  # Analysis of Variance (ANOVA) ----
  
  aov(count ~ spray, data = InsectSprays)
  fit <- aov(count ~ spray, data = InsectSprays)
  summary(fit)
  
  # Chi-Squared Test ----
  
  data(HairEyeColor)
  mydata <- data.frame(HairEyeColor)
  head(mydata)
  attach(mydata)
  chisq.test(Hair, Eye)  # P-value = 1, so no relation
  chisq.test(Hair, Freq)  # P-value = 0.05..., so some relation
  detach(mydata)
  
  # One Sample t-test ----
  
  data(anorexia, package = "MASS")
  t.test(anorexia$Prewt, mu = 3)
  
  # Independent t-test (ex. scores from 2 schools) ----
  
  data(anorexia, package = "MASS")
  t.test(anorexia$Prewt, anorexia$Postwt)
  t.test(iris$Sepal.Length, iris$Sepal.Width)
  
  # Pairwise t-tests (ex. scores from 1 school before & after training)
  
  data(anorexia, package = "MASS")
  t.test(anorexia$Prewt, anorexia$Postwt, paired = T)  # p-value = 0.0044, so there is correlation
  
}

# Section 8 - Base R Visualization ----

xy1 <- matrix(data=c(1:25),
              nrow=5,
              ncol=5)
xy1
plot(xy1) # It looks like plot just uses Col1=X and Col2=Y

x2 <- c(1:5)
y2 <- c(2,1,4,3,5)
plot(x2, y2, type="p") # Points can be connected with Points, Lines, Both, or Overlapping
plot(x2, y2, type="l")
plot(x2, y2, type="b")
plot(x2, y2, type="o")

plot(x2, y2, type="o",
     main="Plot Title",
     xlab="X Label",
     ylab="Y Label",
     col="steelblue") # Type "colors()" into the console below for a list of all colors.

plot(x2, y2, type="b",
     pch=2, # There are 1 - 25 types of points
     lty=2, # There are 1 - 6 types of lines
     main="Plot Title",
     xlab="X Label",
     ylab="Y Label",
     col="magenta1",
     xlim=c(-2,7), # Define the x-axis limits.
     ylim=c(-2,7)) # Define the y-axis limits.

points(x=c(0,6), y=c(4,2), col="brown", pch=3) # Add points in plot.

abline(h=c(1,5), # Add lines across the whole plot.
       col="red",
       lty=3)

segments(x0=-2, y0=2, x1=-2, y1=4, # Add one line segment, with starting and ending coordinates.
         col="sienna3",
         lty=4)

segments(x0=c(1,5), y0=c(5,5), x1=c(1,5), y1=c(1,1), # Add two line segments.
         col="seagreen1",
         lty=5)

arrows(x0=3, y0=-.5, x1=2.35, y1=.5, # Add one arrow.
       col="blue",
       lty=6)

text(x=3.7, y=-.8, col="khaki4", labels="Rock Bottom") # Add Text

# There are built in data frames. "Faithful" is one.
head(faithful, 3)

plot(faithful) # Plot all faithful datapoints.

points(faithful[faithful$eruptions > 4,], col="red", pch=4)




vector.perc <- c(10, 40, 15, 20, 5)
vector.names <- c("Robert", "Lucinda", "Nikki", "Ricko", "Cynthia")

rainbow(15)
colorlist <- rainbow(length(vector.perc))

# Use the below statement to save the work to a file. Once done, use dev.off().
# png(file="P:/General/R/pie_chart.png")

pie(x = vector.perc,
    labels = vector.names,
    main = "Pie Chart Title",
    col = colorlist)

legend(x = "topright",
       legend = vector.names,
       cex = 0.8, # Shrinks the size of text
       fill = colorlist,
       inset = .02 # Moves the legend in from the window edge.
)

dev.off() # Running this after using png() will save the PNG file.

# To create a 3D pie chart, you must install plotrix with the statements below.
#install.packages("plotrix") # This apparently goes in the console window below.
#library(plotrix)
# pie3D(x = vector.perc, labels = vector.names, main = "Pie Chart Title",
#      explode = 0.1, # Separates each pie section
#      start = pi/2, # Specifies what angle to start drawing.
#      labelcex = 0.8)

barplot(height = vector.perc,
        names.arg = vector.names,
        xlab = "%",
        ylab = "Names",
        main = "Bar Chart Table",
        col = colorlist)

# Section 9 - Working with Files & Folders ----

# Get the current working directory.
getwd()

# Set the working directory.
setwd("P:/General/R")

# See stored variables.
ls()

# Remove all stored variables.
rm(list=ls())

# Show arguments for a function
args(data.frame)

# Show help for a function
?plot

# Read / Write CSV
visdt <- read.table(file=file.choose(),
                    header=T,
                    sep=",",
                    na.strings = " ",
                    stringsAsFactors = F)
visdt

write.table(x=visdt,
            file=file.choose(),
            sep=",",
            na="",
            quote=F,
            row.names = F)

dt_base <- read.csv(file = "02_SYSBP Raw Data.csv",
                    stringsAsFactors = F,
                    fileEncoding = "UTF-8-BOM")

# Section 10 - Packages ----

{
  # Section 10.1 Downloading & Loading Packages ----
  
  # Check all installed packages
  installed.packages()
  
  # See if the installed packages include xtable and plotrix
  "xtable" %in% rownames(installed.packages())
  "plotrix" %in% rownames(installed.packages())
  
  # If plotrix is not installed, then install it.
  if("plotrix" %in% rownames(installed.packages()) == FALSE){install.packages("plotrix")}
  
  if("tidyverse" %in% rownames(installed.packages()) == FALSE){install.packages("tidyverse")}
  
  library('tibble')
  library('readr')
  library('readxl')
  library('haven')
  
  # Section 10.2 tidyverse Package (Data Science) ----
  
  # Section 10.3 tibble Package (Clean Data Tables) ----
  
  # Section 10.4 dplyr Package (Data Table Manipulation) ----
  
  # https://dplyr.tidyverse.org/reference/select.html
  
  # Read in example sleep data
  url.sleep <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
  data.sleep <- read.csv(file = url.sleep)
  head(data.sleep)
  
  if("dplyr" %in% rownames(installed.packages()) == FALSE){install.packages("dplyr")}
  library(dplyr)
  
  if("nycflights13" %in% rownames(installed.packages()) == FALSE){install.packages("nycflights13")}
  library(nycflights13)
  dim(flights)
  head(flights)
  glimpse(flights)
  
  # dplyr includes:
  #   filter()
  #   arrange()
  #   select() & rename()
  #   mutate() & transmute()
  #   summarize()
  #   sample_n() & sample_frac()
  #   
  #   group_by()
  #   ...
  #   ungroup()
  #   
  #   mutate_each()
  #   mutate_if()
  #   mutate_at()
  #   mutate_all()
  #   summarise_each()
  #   summarise_if()
  #   summarise_at()
  #   summarise_all()
  #   
  #   left_join()
  #   full_join()
  #   ..._join()
  
  # Open help menu --> Introduction to dplyr
  help(package = dplyr)
  
  # Open website for another viewpoint
  "http://genomicsclass.github.io/book/pages/dplyr_tutorial.html"
  
  # Filter w/ base
  flights[flights$month == 1 & flights$day == 1, ]
  
  # Filter w/ dplyr filter()
  filter(flights, month == 1, day == 1)
  
  # arrange() - Arrange w/ base
  flights[order(flights$year, flights$month, flights$day), ]
  flights[order(-flights$year, -flights$month, -flights$day), ]
  
  # Section 10.5 tidyr Package (Data Table Restructuring) ----
  
  # Section 10.6 stringr Package (String Manipulation) ----
  
  # Section 10.7 lubridate Package (Date Manipulation) ----
  
  # Section 10.8 readxl / writexl Packages (Working with Excel Files) ----
  
  if("readxl" %in% rownames(installed.packages()) == FALSE){install.packages("readxl")}
  library("readxl")
  
  # Example dataset
  readxl_example("datasets.xlsx")
  
  # Read datasets
  xltable <- read_excel("P:/General/R/Metrics Project/SQL Query Metrics 01-11-2018.xlsx")
  xltable <- read_excel(readxl_example("datasets.xlsx"))
  head(xltable)
  
  # Section 10.9 haven Package (Working with SAS Datasets) ----
  
  # Section 10.10 ggplot2 Package (Visualization) ----
  
  # Description:
  #   ggplot2 is a REALLY good package for making graphs, and it's one of the main reasons that people
  #   say "R is data visualization software".
  #   I can talk all day about ggplot2, but the best way to learn it is through examples. So here's
  #   how this is going to go:
  #      - I'm going to make a few "Walkthrough" sections below that walk through aspects of ggplot2.
  #      - After each walkthrough, I'm going to list a bunch of examples with things we learned from
  #        the walkthrough.
  #   For you, I'd recommend running the code in each "Walkthrough" below and trying to understand what
  #   is being done. I try to explain each part of the code below, so read through the comments if you
  #   have time. That might help make things easier to understand. Once the walkthrough kind-of makes
  #   sense, then run the code for the examples to see all the different ways you might be able to
  #   adjust the code for different uses.
  
  
  
  # Use Groups from: https://www.rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf
  # Use examples from: https://www3.nd.edu/~steve/computing_with_data/11_geom_examples/ggplot_examples.html
  # Make sure to show all "Useful Stats" from here: http://sape.inf.usi.ch/quick-reference/ggplot2/geom
  # Make sure to mention everything here: https://ggplot2.tidyverse.org/reference/
  
  library(dplyr); library(ggplot2)
  glimpse(diamonds)
  glimpse(economics)
  glimpse(economics_long)
  glimpse(faithful)
  glimpse(midwest)
  glimpse(mpg)
  glimpse(msleep)
  glimpse(presidential)
  glimpse(seals)
  glimpse(txhousing)
  glimpse(luv_colours)
  
  {
    # Walkthrough # - ggplot(), Data, Aesthetics, & Geometries (geom_*) ----
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Take a look at the mpg data frame. "mpg" is a built-in data frame from the ggplot2 package. Each
    # record represents a test for miles-per-gallon, and each variable (column) represents information
    # about that car.
    View(mpg)
    
    # Open the help text for mpg, and take a look at what each variable is for (e.g., "cyl" is the
    # "number of cylinders" for each car).
    ?mpg
    
    # Good - now that you've taken a look at the data frame, let's start using ggplot2. Start off by
    # creating a ggplot() with mpg.
    ggplot(data = mpg)
    
    # Good job, you made your first plot! Before we move on, you should see a grey-ish rectangle pop up
    # in the "Plots" window.
    # There ain't too much to look at now, so let's start assigning some "aesthetics".
    
    # Use aes() to map the aesthetics "x" and "y" to some variables.
    ggplot(data = mpg,
           mapping = aes(x = cyl,
                         y = hwy))
    
    # Nice! "cyl" and "hwy" are 2 variables in the "mpg" data frame. By setting these to "x" and "y" in
    # aes(), ggplot2 uses them for the x-axis and y-axis.
    # So we've assigned data, the x-axis, and the y-axis. Now, let's add some points to our plot.
    
    # Add geom_point() to the graph to add points for each record in mpg.
    ggplot(data = mpg,
           mapping = aes(x = cyl,
                         y = hwy)) +
      geom_point()
    
    # Oh yeah - that's one nice lookin' plot!
    # Before we move on, take a look at the part of the code that says "mapping = aes(...)". See how it's
    # inside of the ggplot() function? 
    # If we specify the "X" and "y" aesthetics in ggplot(), then the geom_plot() inherits those aesthetics.
    # That's good because we can just specify aesthetics in ggplot() and then they get inherited by
    # everything we add onto the plot.
    # If we wanted to specify the "x" and "y" aesthetics in geom_point(), we can do that instead.
    
    # Specify the "x" and "y" aesthetics in geom_point().
    ggplot(data = mpg) +
      geom_point(mapping = aes(x = cyl,
                               y = hwy))
    
    # See how the graph didn't change? So this means that we can specify aes() inside geom_point() or ggplot().
    # If we don't specify aes() in geom_point(), then it will pull the aes() from ggplot().
    # With that done, let's add some color!
    
    # Assign color to geom_point().
    ggplot(data = mpg) +
      geom_point(mapping = aes(x = cyl,
                               y = hwy),
                 color = "magenta")
    
    # Oh yes, that's one good looking plot!
    # But even thought the plot's good looking, I bet you have some questions.
    
    # Question 1: First off - what in tarnation are aesthetics and where did you get "color" from?!
    # Answer 1: Good question. Before I tell you, run the code below:
    ?geom_point()
    #    Once you have the help-menu for geom_point() open, scroll down to the part about "Aesthetics".
    #    You should see some bullet point things like "x", "y", "alpha", "color", "fill", "group", "shape",
    #    "size", and "stroke".
    #    There's your answer - geom_point() can use these aesthetics. Other geom_*'s might have a few more,
    #    but these are the basic ones.
    
    # Question 2: Okay, thanks. But in your code above, I see that "x" and "y" are inside of the aes()
    #    thing and "color" is outside of it. What's with that?!
    # Answer 2: This one's a bit more complicated, but here's the best/shortest explanation I can give:
    #       - If you map an aesthetic to a VARIABLE (cyl, hwy) then it goes INSIDE aes().
    #       - If you map an aesthetic to a STATIC value ("magenta") then it goes OUTSIDE of aes().
    #    This might be confusing right now, but keep that in mind as you go through the examples below.
    #    It might make more sense seeing it in action a few times.
    #    VARIABLES INSIDE aes(), NON-VARIABLES OUTSIDE aes()!
    
    # Question 3: Alright. I don't really get it, but whatever. Anyway, where did you find that geom_point()
    #    thing?
    # Answer 3: There are a LOT of geom_*() things, and they each create a different shape on the plot.
    #    How about this, let's start making some examples.
    #    I'll go over all the geom_*()s that I know, and if you still don't see one that you want, then
    #    feel free to search online for the geom_*() that you want.
    
    # Example #.# - (Points) geom_point() ----
    
    # Description:
    #   geom_point() draws points on a graph.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_point() to draw points on a plot.
    ggplot(data = mpg,
           mapping = aes(x = cyl,
                         y = hwy)) +
      geom_point()
    
    # Plot geom_point() and map all aesthetics.
    ggplot(data = mpg,
           mapping = aes(x = manufacturer,
                         y = model,
                         fill = class)) +
      geom_point(shape = 22,
                 color = "grey20",
                 size = 4,
                 stroke = 2,
                 alpha = 1)
    
    # Look at all the different shapes you can specify by running the code below.
    ggplot(data = data.frame(col1 = c(0:25, 32:127))) +
      scale_shape_identity() +
      geom_point(mapping = aes(x = col1 %% 16, y = -(col1 %/% 16), shape = col1),
                 size = 5, fill = "green") +
      geom_text(mapping = aes(x = col1 %% 16, y = -(col1 %/% 16) + 0.3, label = col1), size = 3 ) +
      theme(axis.title = element_blank(), axis.text = element_blank(), axis.ticks = element_blank(),
            panel.background = element_blank(), plot.title = element_text(hjust = .5)) +
      ggtitle("geom_point() Shapes")
    
    # Example #.# - (Points) geom_count() ----
    
    # Description:
    #   geom_count() draws dots like geom_point(), but it also counts the number of overlapping points.
    #   It calls this ..n.., and maps it to the "size" aesthetic.
    #   geom_count() is good to use when you have overlapping points in a plot.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_count() to count the number of classes per manufacturer.
    ggplot(data = mpg,
           mapping = aes(x = class,
                         y = manufacturer)) +
      geom_count()
    
    # When geom_count() counts overlapping data, it gives us the count as "..n.." and automatically
    # maps it to "size". Let's also map "..n.." to color.
    ggplot(data = mpg,
           mapping = aes(x = class,
                         y = manufacturer,
                         color = ..n..)) +
      geom_count()
    
    # Plot geom_count() and map all aesthetics.
    ggplot(data = mpg,
           mapping = aes(x = class,
                         y = manufacturer,
                         fill = ..n..,
                         size = ..n..)) +
      geom_count(shape = 24,
                 color = "orange",
                 stroke = 1.5,
                 alpha = .8)
    
    # Example #.# - (Points) geom_jitter() ----
    
    # Description:
    #   geom_jitter() draws points like geom_point(), but it "scatters" them slightly.
    #   This is good to use when you have overlapping data.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_jitter() to draw scattered points.
    ggplot(data = mpg,
           mapping = aes(x = class,
                         y = manufacturer)) +
      geom_jitter()
    
    # You can change how much jitter there is with height and width.
    ggplot(data = mpg,
           mapping = aes(x = class,
                         y = manufacturer)) +
      geom_jitter(height = .1,
                  width = .1)  # Between 0 - 0.4 jitter is good.
    
    # Plot geom_jitter() and map all aesthetics.
    ggplot(data = mpg,
           mapping = aes(x = class,
                         y = manufacturer)) +
      geom_jitter(height = .2,
                  width = .2,
                  shape = 23,
                  color = "red",
                  fill = "orange",
                  size = 4,
                  stroke = 2,
                  alpha = .2)
    
    # Example #.# - (Points) geom_rug() ----
    
    # Description:
    #   geom_rug() is a pretty useless geom, and it makes tick marks on the x-axis and y-axis that align
    #   with points on a plot. There are better ways to put information on the x-axis and y-axis, which
    #   we will go over in later sections.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_rug() to plot tick marks along the x-axis and y-axis for geyser eruption times.
    ggplot(data = faithful,
           mapping = aes(x = waiting,
                         y = eruptions)) +
      geom_rug()
    
    # Plot geom_rug() and map all aesthetics. Add a geom_point(), so it's obvious what it's plotting.
    ggplot(data = faithful,
           mapping = aes(x = waiting,
                         y = eruptions)) +
      geom_point() +
      geom_rug(color = "red",
               linetype = "solid",
               size = 1,
               alpha = 1)
    
    # Example #.# - (Shapes) geom_col() ----
    
    # Description:
    #   geom_col() draws bars, and it gets its height from the values in its y-axis.
    #   This geom is useful for comparing values in categories.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_col() to plot the total populations for each state.
    ggplot(data = midwest,
           mapping = aes(x = state,
                         y = poptotal)) +
      geom_col()
    
    # Make the same plot, but color each county a different color.
    ggplot(data = midwest,
           mapping = aes(x = state,
                         y = poptotal,
                         fill = county)) +
      geom_col(show.legend = FALSE)
    
    # Plot geom_col() and map all aesthetics.
    ggplot(data = midwest,
           mapping = aes(x = state,
                         y = poptotal,
                         fill = county)) +
      geom_col(width = .5,
               color = "black",
               alpha = .8,
               linetype = "dashed",
               size = .5,
               show.legend = FALSE)
    
    # Example #.# - (Shapes) geom_bar() ----
    
    # Description:
    #   geom_bar() draws bars to show how many records are in each category.
    #   This geom is useful to find the size of categories in data.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_bar() to count the number of records per manufacturer.
    ggplot(data = mpg,
           mapping = aes(x = manufacturer)) +
      geom_bar()
    
    # Make the same plot, but color each car class a different color.
    ggplot(data = mpg,
           mapping = aes(x = manufacturer,
                         fill = class)) +
      geom_bar()
    
    # Plot geom_bar() and map all aesthetics.
    ggplot(data = mpg,
           mapping = aes(x = manufacturer,
                         y = ..count..,
                         fill = class)) +
      geom_bar(color = "black",
               linetype = "dotted",
               size = 1,
               alpha = .8)
    
    # Example #.# - (Shapes) geom_rect() ----
    
    # Description:
    #   geom_rect() draws rectanges on a plot.
    #   You can specify the location and size of the rectanges with their bottom (ymin), top (ymax),
    #   left (xmin), and right (xmax) edges.
    #   This is good to use when you want to draw rectangles of different sizes and positions.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_rect() to plot where seals moved on a beach.
    ggplot(data = seals,
           mapping = aes(xmin = long,
                         xmax = long + delta_long,
                         ymin = lat,
                         ymax = lat + delta_lat)) +
      geom_rect()
    
    # Use geom_rect() to plot car city mpg vs highway mpg.
    ggplot(data = mpg,
           mapping = aes(xmin = cty,
                         xmax = cty + (displ * .1),
                         ymin = hwy,
                         ymax = hwy + .5)) +
      geom_rect()
    
    # Plot geom_rect() and map all aesthetics.
    ggplot(data = seals,
           mapping = aes(xmin = long,
                         xmax = long + delta_long,
                         ymin = lat,
                         ymax = lat + delta_lat,
                         fill = sqrt((delta_long ^ 2) + (delta_lat ^ 2)))) +
      geom_rect(alpha = .9,
                color = "green",
                linetype = "dotdash",
                size = .1)
    
    # Example #.# - (Shapes) geom_tile() ----
    
    # Description:
    #   geom_tile() draws rectanges on a plot.
    #   You can specify the location and size of the rectanges with their position (x, y), height,
    #   and width.
    #   This is good to use when you want to draw rectangles of different sizes and positions.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_tile() to plot where seals moved on a beach.
    ggplot(data = seals,
           mapping = aes(x = long,
                         width = delta_long,
                         y = lat,
                         height = delta_lat)) +
      geom_tile()
    
    # Use geom_rect() to plot car city mpg vs highway mpg.
    ggplot(data = mpg,
           mapping = aes(x = cty,
                         width = displ * .1,
                         y = hwy,
                         height = .5)) +
      geom_tile()
    
    # Plot geom_rect() and map all aesthetics.
    ggplot(data = seals,
           mapping = aes(x = long,
                         width = delta_long,
                         y = lat,
                         height = delta_lat,
                         fill = sqrt((delta_long ^ 2) + (delta_lat ^ 2)))) +
      geom_tile(alpha = .9,
                color = "green",
                linetype = "dotdash",
                size = .1)
    
    # Example #.# - (Shapes) geom_raster() ----
    
    # Description:
    #   geom_raster() draws rectangles, where every rectangle has the same size. Because all rectangles
    #   are the same size, geom_raster() is much faster than geom_rect() and geom_tile().
    #   This geom only needs x and y to plot, but fill is also best to be used.
    #   This geom is good to use for making heatmaps.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_raster() to plot the highway mpg of car manufacturers vs engine cylinders.
    ggplot(data = mpg,
           mapping = aes(x = cyl,
                         y = manufacturer,
                         fill = hwy)) +
      geom_raster()
    
    # Use geom_raster() to plot the hours that animals sleep by their order and vore.
    ggplot(data = msleep,
           mapping = aes(x = vore,
                         y = order,
                         fill = sleep_total)) +
      geom_raster()
    
    # Use geom_raster() to make a heatmap of eruptions and waiting times for a geyser.
    ggplot(data = faithfuld,
           mapping = aes(x = waiting,
                         y = eruptions,
                         fill = density)) +
      geom_raster()
    
    # Add interpolation to smooth the heatmap.
    ggplot(data = faithfuld,
           mapping = aes(x = waiting,
                         y = eruptions,
                         fill = density)) +
      geom_raster(interpolate = TRUE)
    
    # Plot geom_raster() and map all aesthetics.
    ggplot(data = msleep,
           mapping = aes(x = vore,
                         y = order,
                         fill = sleep_total)) +
      geom_raster(alpha = .8)
    
    # Example #.# - (Shapes) stat_ellipse() ----
    
    # Description:
    #   stat_ellipse() draws ellipses around data, and is good at highlighting parts of a plot.
    #   I have no idea why they named it stat_ellipse() instead of geom_ellipse().
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use stat_ellipse() to put a circle around the data from the faithful data frame.
    ggplot(data = faithful,
           mapping = aes(x = waiting,
                         y = eruptions)) +
      geom_point() +
      stat_ellipse()
    
    # Draw different types of ellipses by changing "type".
    ggplot(data = faithful,
           mapping = aes(x = waiting,
                         y = eruptions)) +
      geom_point() +
      stat_ellipse(color = "red", type = "t",
                   size = 2) +
      stat_ellipse(color = "green2", type = "norm",
                   size = 2) +
      stat_ellipse(color = "blue", type = "euclid",
                   size = 2)
    
    # Draw circles around differnet "confidence interval levels" of the data by changing "level".
    ggplot(data = faithful,
           mapping = aes(x = waiting,
                         y = eruptions)) +
      geom_point() +
      stat_ellipse(color = "red", level = .1,
                   size = 2) +
      stat_ellipse(color = "orange", level = .2,
                   size = 2) +
      stat_ellipse(color = "yellow3", level = .4,
                   size = 2) +
      stat_ellipse(color = "green2", level = .6,
                   size = 2) +
      stat_ellipse(color = "cyan3", level = .8,
                   size = 2) +
      stat_ellipse(color = "blue", level = .95,
                   size = 2)
    
    # We can fill in the ellipse by setting "geom" to "polygon".
    ggplot(data = faithful,
           mapping = aes(x = waiting,
                         y = eruptions)) +
      geom_point() +
      stat_ellipse(geom = "polygon",
                   fill = "red",
                   alpha = .2)
    
    # Plot stat_ellipse() and map all aesthetics.
    ggplot(data = faithful,
           mapping = aes(x = waiting,
                         y = eruptions)) +
      geom_point() +
      stat_ellipse(geom = "polygon",
                   type = "t",
                   level = .95,
                   fill = "yellow",
                   color = "firebrick",
                   size = 2,
                   linetype = "dotted",
                   alpha = .2)
    
    # Example #.# - (Shapes & Maps) geom_polygon() ----
    
    # Description:
    #   geom_polygon() draws shapes across a plot. It does this by drawing a line between the x & y
    #   coordinates of each record in a dataset, and then filling in the area.
    #   If you have multiple shapes on a plot, then they can be separated by group.
    #   This geom can also be used for drawing maps.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_polygon() to draw rectangles.
    ggplot(data = data.frame(x = c(1, 2, 2, 3, 4, 4),
                             y = c(1, 1, 2, 2, 2, 3),
                             grp = c("a", "a", "a", "b", "b", "b")),
           mapping = aes(x = x,
                         y = y,
                         group = grp)) +
      geom_polygon()
    
    # Use the map data for the USA to draw the country as a polygon.
    ggplot(data = map_data("usa"),
           mapping = aes(x = long,
                         y = lat,
                         group = group)) +
      geom_polygon(color = "red")
    
    # NOTE: map_data() pulls data from a package called "maps". We will go over the "maps" package
    #       below (in the maps package section).
    
    # Use the map data for US States to draw each state.
    ggplot(data = map_data("state"),
           mapping = aes(x = long,
                         y = lat,
                         group = group)) +
      geom_polygon(color = "red",
                   fill = NA)
    
    # Plot geom_polygon() and map all aesthetics.
    ggplot(data = map_data("state"),
           mapping = aes(x = long,
                         y = lat,
                         group = group,
                         fill = region)) +
      geom_polygon(color = "blue",
                   linetype = "dotdash",
                   alpha = .5,
                   size = 1,
                   show.legend = FALSE)
    
    # Example #.# - (Maps) geom_map() ----
    
    # Description:
    #   geom_map() is very similar to geom_polygon(), in that it draws shapes on a plot.
    #   This geom takes 2 data frames - one for region "data" and one for region "map" coordinates
    #   It also requires a "map_id" variable that it uses to join the "data" and "map" data frames.
    #   There is really no reason to use this geom over geom_polygon(). It just saves you the step of
    #   joining 2 data frames, which you should already know how to do.
    
    # NOTE: Feel free to skip over geom_map(). geom_polygon() already draws maps better than
    #       geom_maps() does.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use the poorly designed geom_map() to create a plot, which could have been made more easily
    # with geom_polygon().
    ggplot(data = data.frame(state = tolower(rownames(USArrests)), USArrests),
           mapping = aes(map_id = state)) +
        geom_map(map = map_data("state"),
                 mapping = aes(fill = Murder)) +
        expand_limits(x = map_data("state")$long,
                      y = map_data("state")$lat)
    
    # Example #.# - (Maps) geom_sf() ----
    
    # Description:
    #   geom_sf() is a very recent addition to ggplot2, and it is used for drawing shapes on plots.
    #   This geom works hand-in-hand with a package named "sf". I'm not very familiar with "sf",
    #   but I have listed out some examples below. For more information on geom_sf, look up the "sf"
    #   package online and review this website: https://ggplot2.tidyverse.org/reference/ggsf.html
    
    # NOTE: Feel free to skip over geom_sf(). It's confusing, and don't know it well. Also, I think
    #       that geom_polygon() already can do all of the stuff geom_sf() does.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2", "sf", "maps", "maptools", "rgeos"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_sf() and the "sf" package to draw a map.
    dt_nc <- sf::st_read(system.file("shape/nc.shp", package = "sf"), quiet = TRUE)
    ggplot(data = dt_nc) +
      geom_sf(mapping = aes(fill = AREA))
    
    # Combine two geom_sf()s together with slightly differing coordinates.
    dt_nc_3857 <- sf::st_transform(x = dt_nc,
                                   crs = "+init=epsg:3857")
    ggplot() +
      geom_sf(data = dt_nc) +
      geom_sf(data = dt_nc_3857,
              color = "red",
              fill = NA)
    
    # Plot the map, and also plot a point to show each region's area.
    dt_nc_3857$mid <- sf::st_centroid(x = dt_nc_3857$geometry)
    ggplot(dt_nc_3857) +
      geom_sf(colour = "white") +
      geom_sf(aes(geometry = mid,
                  size = AREA),
              show.legend = "point")
    
    # Plot a map and draw a red point on it.
    ggplot(dt_nc) +
      geom_sf() +
      annotate(geom = "point",
               x = -80,
               y = 35,
               colour = "red",
               size = 4)
    
    # Plot a map of the world.
    dt_world <- sf::st_as_sf(maps::map('world',
                                 plot = FALSE,
                                 fill = TRUE))
    ggplot() +
      geom_sf(data = dt_world)
    
    # Plot a map of the top of the world.
    dt_world_top <- sf::st_transform(x = dt_world,
                                     crs = "+proj=laea +y_0=0 +lon_0=155 +lat_0=-90 +ellps=WGS84 +no_defs")
    ggplot() +
      geom_sf(data = dt_world_top)
    
    # Example #.# - (Text) geom_text() ----
    
    # Description:
    #   geom_text() draws text directly only a plot.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2", "dplyr"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_text() to draw car names on a plot.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name)) +
      geom_text()
    
    # "check_overlap" stops geom_text() from drawing overlapping words.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name)) +
      geom_text(check_overlap = TRUE)
    
    # "nudge_x" and "nudge_y" allow us to move the text around.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)) %>% filter(gear == 5),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name)) +
      geom_point() +
      geom_text(nudge_y = 1,
                color = "red") +
      geom_text(nudge_y = -1,
                color = "yellow3") +
      geom_text(nudge_x = .2,
                color = "green3") +
      geom_text(nudge_x = -.2,
                color = "blue")
    
    # "vjust" and "hjust" allow us to algin the text.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)) %>% filter(gear == 5),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name)) +
      geom_point() +
      geom_text(vjust = "bottom",
                color = "red") +  # OR vjust = 0
      geom_text(vjust = "top",
                color = "yellow3") +  # OR vjust = 1
      geom_text(hjust = "left",
                color = "green3") +  # OR hjust = 1
      geom_text(hjust = "right",
                color = "blue")  # OR hjust = 0
    
    # "vjust" and "hjust" also can be set to "inward" or "outward".
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)) %>% filter(gear == 5),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name)) +
      geom_point() +
      geom_text(vjust = "inward",
                hjust = "inward",
                color = "green3") +
      geom_text(vjust = "outward",
                hjust = "outward",
                color = "red")
    
    # "angle" lets us adjust the angle of the text.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)) %>% filter(gear == 5),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name)) +
      geom_point() +
      geom_text(color = "red", angle = 0,
                hjust = "left") +
      geom_text(color = "orange", angle = 45,
                hjust = "left") +
      geom_text(color = "greenyellow", angle = 90,
                hjust = "left") +
      geom_text(color = "green3", angle = 135,
                hjust = "left") +
      geom_text(color = "cyan3", angle = 180,
                hjust = "left") +
      geom_text(color = "blue", angle = 225,
                hjust = "left") +
      geom_text(color = "purple", angle = 270,
                hjust = "left") +
      geom_text(color = "magenta", angle = 315,
                hjust = "left")
    
    # "fontface" allows us to make the text bold or italic.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)) %>% filter(gear == 5),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name)) +
      geom_point() +
      geom_text(fontface = "bold")
    
    # Run the code below to see all fontfaces.
    ggplot(data = data.frame(y_text = c("plain", "bold", "italic", "bold.italic")),
           mapping = aes(x = 1, y = y_text, label = y_text)) +
      geom_text(fontface = c("plain", "bold", "italic", "bold.italic")) +
      scale_y_discrete(limits = c("bold.italic", "italic", "bold", "plain")) +
      theme(axis.title = element_blank(), axis.text = element_blank(), axis.ticks = element_blank(),
            panel.background = element_blank(), plot.title = element_text(hjust = .5)) +
      ggtitle("Fontface Types")
    
    # Plot car names and color them by their cylinder type.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars), cyl = as.character(cyl)),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name,
                         color = cyl)) +
      geom_text()
    
    # You can also make more complicated labels by concatenating strings together.
    # "parse = TRUE" makes R show the label as a formula.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)) %>% filter(gear == 5),
           mapping = aes(x = wt,
                         y = mpg,
                         label = paste0(wt, "^(", cyl, ")"))) +
      geom_text(color = "red", parse = FALSE,
                vjust = "bottom") +
      geom_text(color = "green3", parse = TRUE,
                vjust = "top")
    
    # Plot text with geom_text() and map all aesthetics.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars), cyl = as.character(cyl)),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name,
                         color = cyl)) +
      geom_point() +
      geom_text(nudge_x = 0.02,
                nudge_y = 0.2,
                check_overlap = TRUE,
                alpha = .8,
                angle = 30,
                fontface = "bold",
                hjust = "left",
                vjust = "center",
                size = 3.5,
                lineheight = .8)
    
    # Example #.# - (Text) geom_label() ----
    
    # Description:
    #   geom_label() is similar to geom_tetx() because it draws labels directly on a plot.
    #   The difference is that geom_label() also draws a background panel around the text.
    #   Also, geom_label() can't use the following aesthetics: "check_overlap", "angle"
    
    # Load relevant packages.
    vec_packages <- c("ggplot2", "dplyr"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_text() to draw car names on a plot.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name)) +
      geom_label()
    
    # "nudge_x" and "nudge_y" allow us to move the text around.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)) %>% filter(gear == 5),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name)) +
      geom_point() +
      geom_label(nudge_y = 1,
                color = "red") +
      geom_label(nudge_y = -1,
                color = "yellow3") +
      geom_label(nudge_x = .2,
                color = "green3") +
      geom_label(nudge_x = -.2,
                color = "blue")
    
    # "vjust" and "hjust" allow us to algin the text.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)) %>% filter(gear == 5),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name)) +
      geom_point() +
      geom_label(vjust = "bottom",
                color = "red") +  # OR vjust = 0
      geom_label(vjust = "top",
                color = "yellow3") +  # OR vjust = 1
      geom_label(hjust = "left",
                color = "green3") +  # OR hjust = 1
      geom_label(hjust = "right",
                color = "blue")  # OR hjust = 0
    
    # "vjust" and "hjust" also can be set to "inward" or "outward".
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)) %>% filter(gear == 5),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name)) +
      geom_point() +
      geom_label(vjust = "inward",
                hjust = "inward",
                color = "green3") +
      geom_label(vjust = "outward",
                hjust = "outward",
                color = "red")
    
    # "fontface" allows us to make the text bold or italic.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)) %>% filter(gear == 5),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name)) +
      geom_point() +
      geom_label(fontface = "bold")
    
    # Run the code below to see all fontfaces.
    ggplot(data = data.frame(y_text = c("plain", "bold", "italic", "bold.italic")),
           mapping = aes(x = 1, y = y_text, label = y_text)) +
      geom_label(fontface = c("plain", "bold", "italic", "bold.italic")) +
      scale_y_discrete(limits = c("bold.italic", "italic", "bold", "plain")) +
      theme(axis.title = element_blank(), axis.text = element_blank(), axis.ticks = element_blank(),
            panel.background = element_blank(), plot.title = element_text(hjust = .5)) +
      ggtitle("Fontface Types")
    
    # Plot car names and fill the label background by the cylinder type.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars), cyl = as.character(cyl)),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name,
                         fill = cyl)) +
      geom_label(color = "white",
                 fontface = "bold")
    
    # You can also make more complicated labels by concatenating strings together.
    # "parse = TRUE" makes R show the label as a formula.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)) %>% filter(gear == 5),
           mapping = aes(x = wt,
                         y = mpg,
                         label = paste0(wt, "^(", cyl, ")"))) +
      geom_label(color = "red", parse = FALSE,
                vjust = "bottom") +
      geom_label(color = "green3", parse = TRUE,
                vjust = "top")
    
    # "label.padding" lets us adjust the whitespace in the labels.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)) %>% filter(gear == 5),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name)) +
      geom_label(label.padding = unit(1, "lines"))
    
    # "label.r" lets us adjust the roundness of the label corners. "0" is square and ".5" is round.
    # Setting "label.r" below "0" or above ".5" gives funky shapes.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)) %>% filter(gear == 5),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name)) +
      geom_label(label.r = unit(0, "lines"))
    
    # label.size" lets us set the thickness of the label border.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars)) %>% filter(gear == 5),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name)) +
      geom_label(label.size = 3)
    
    # Plot labels with geom_label() and map all aesthetics.
    ggplot(data = mtcars %>% mutate(name = rownames(mtcars), cyl = as.character(cyl)),
           mapping = aes(x = wt,
                         y = mpg,
                         label = name,
                         fill = cyl)) +
      geom_point() +
      geom_label(nudge_x = 0,
                nudge_y = 0,
                label.padding = unit(.5, "lines"),
                label.r = unit(.7, "lines"),
                label.size = 0,
                alpha = .6,
                color = "white",
                fontface = "bold",
                hjust = "right",
                vjust = "top",
                size = 3.5,
                lineheight = .8)
    
    # Example #.# - (Lines) geom_vline() ----
    
    # Description:
    #   geom_vline() draws vertical lines on a plot.
    #   This can be useful for calling out ranges in a graph.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_vline() to draw a vertical line where x = 3.
    ggplot(data = faithful,
           mapping = aes(x = eruptions,
                         y = waiting)) +
      geom_point() +
      geom_vline(xintercept = 3)
    
    # Draw vertical lines at every .5 interval.
    ggplot(data = faithful,
           mapping = aes(x = eruptions,
                         y = waiting)) +
      geom_point() +
      geom_vline(xintercept = seq(from = 1.5,
                                  to = 5,
                                  by = .5))
    
    # Draw a vertical line for every eruption in the data frame.
    ggplot(data = faithful,
           mapping = aes(x = eruptions,
                         y = waiting)) +
      geom_point() +
      geom_vline(mapping = aes(xintercept = eruptions))
    
    # NOTE: xintercept MUST be specified inside geom_vline(), even if it is part of the aes() variables.
    #       geom_vline not inherit xintercept if it is specified in ggplot(mapping = aes()).
    
    # Plot a vertical line and map all aesthetics.
    ggplot(data = faithful,
           mapping = aes(x = eruptions,
                         y = waiting)) +
      geom_point() +
      geom_vline(xintercept = 3,
                 linetype = "dotted",
                 color = "red",
                 size = 2,
                 alpha = 1)
    
    # Look at all the different linetypes you can specify by running the code below.
    ggplot(data = data.frame(lt = c("blank", "solid", "dashed", "dotted", "dotdash", "longdash",
                                    "twodash", "1F", "F1", "4C88C488", "12345678")),
           mapping = aes(x = 0, xend = 1, y = lt, yend = lt, linetype = lt)) +
      scale_linetype_identity() + geom_segment(size = 1) +
      theme(axis.title = element_blank(), axis.text.x = element_blank(), axis.ticks.x = element_blank(),
            panel.background = element_blank(), plot.title = element_text(hjust = .5)) +
      ggtitle("geom_*() Linetypes")
    
    # Example #.# - (Lines) geom_hline() ----
    
    # Description:
    #   geom_hline() draws horizontals line on a plot.
    #   This can be useful for calling out ranges in a graph.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_hline() to draw a horizontal line where y = 70.
    ggplot(data = faithful,
           mapping = aes(x = eruptions,
                         y = waiting)) +
      geom_point() +
      geom_hline(yintercept = 70)
    
    # Draw horizontal lines at every 5 interval.
    ggplot(data = faithful,
           mapping = aes(x = eruptions,
                         y = waiting)) +
      geom_point() +
      geom_hline(yintercept = seq(from = 45,
                                  to = 95,
                                  by = 5))
    
    # Draw a horizontal line for every waiting time in the data frame.
    ggplot(data = faithful,
           mapping = aes(x = eruptions,
                         y = waiting)) +
      geom_point() +
      geom_hline(mapping = aes(yintercept = waiting))
    
    # NOTE: yintercept MUST be specified inside geom_hline(), even if it is part of the aes() variables.
    #       geom_hline not inherit yintercept if it is specified in ggplot(mapping = aes()).
    
    # Plot a horizontal line and map all aesthetics.
    ggplot(data = faithful,
           mapping = aes(x = eruptions,
                         y = waiting)) +
      geom_point() +
      geom_hline(yintercept = 70,
                 linetype = "dashed",
                 color = "red",
                 size = 2,
                 alpha = 1)
    
    # Example #.# - (Lines) geom_abline() ----
    
    # Description:
    #   geom_abline() draws lines on a plot, which can be sloped.
    #   This can be useful for calling out ranges in a graph.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_abline() to draw a sloped line.
    ggplot(data = faithful,
           mapping = aes(x = eruptions,
                         y = waiting)) +
      geom_point() +
      geom_abline(intercept = 33.5,
                  slope = 10.7)
    
    # Draw multiple sloped lines.
    ggplot(data = faithful,
           mapping = aes(x = eruptions,
                         y = waiting)) +
      geom_point() +
      geom_abline(intercept = c(33.5, 105, 69.25),
                  slope = c(10.7, -10.7, 0))
    
    # NOTE: intercept and slope MUST be specified inside geom_abline(), even if they are part of the
    #       aes() variables. geom_abline not inherit intercept or slope if they are specified in
    #       ggplot(mapping = aes()).
    
    # Plot a sloped line and map all aesthetics.
    ggplot(data = faithful,
           mapping = aes(x = eruptions,
                         y = waiting)) +
      geom_point() +
      geom_abline(intercept = 33.5,
                  slope = 10.7,
                  linetype = "dotdash",
                  color = "green",
                  size = 2,
                  alpha = 1)
    
    # Example #.# - (Lines) geom_line() ----
    
    # Description:
    #   geom_line() draws a line from point to point, across all records in a dataset.
    #   Lines are drawn on the graph in order from lowest to highest values.
    #   This geom is great for looking at data over time.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_line() to graph the unemployment rate of St. Louis over time.
    ggplot(data = economics,
           mapping = aes(x = date,
                         y = unemploy)) +
      geom_line()
    
    # Plot data from economics_long, and make a line for each value in "Variable".
    ggplot(data = economics_long,
           mapping = aes(x = date,
                         y = value01,
                         group = variable)) +
      geom_line()
    
    # Customize each line from the plot above, so we can understand what we are looking at.
    ggplot(data = economics_long,
           mapping = aes(x = date,
                         y = value01,
                         color = variable)) +
      geom_line(linetype = "solid",
                size = .5,
                alpha = 1)
    
    # Example #.# - (Lines) geom_step() ----
    
    # Description:
    #   geom_step() connects points in a dataset in "steped" lines.
    #   Lines are drawn on the graph in the order they're listed in the data frame.
    #   This geom is a good alternate to geom_line() for looking at data over time.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_step() to graph the unemployment rate of St. Louis over time.
    ggplot(data = economics,
           mapping = aes(x = date,
                         y = unemploy)) +
      geom_step()
    
    # Plot only post-2013 data, so the steps are more obvious.
    ggplot(data = economics[economics$date > as.Date("2013-01-01"), ],
           mapping = aes(x = date,
                         y = unemploy)) +
      geom_step()
    
    # Plot data from economics_long, and make a line for each value in "Variable".
    ggplot(data = economics_long[economics_long$date > as.Date("2013-01-01"), ],
           mapping = aes(x = date,
                         y = value01,
                         group = variable)) +
      geom_step()
    
    # Customize each line from the plot above, so we can understand what we are looking at.
    ggplot(data = economics_long[economics_long$date > as.Date("2013-01-01"), ],
           mapping = aes(x = date,
                         y = value01,
                         color = variable)) +
      geom_step(linetype = "longdash",
                size = 1,
                alpha = 1)
    
    # Example #.# - (Lines) geom_path() ----
    
    # Description:
    #   geom_path() draws a line from point to point, across all records in a dataset.
    #   This is the same as geom_line(), EXCEPT that lines are drawn on the plot in the order that
    #   they're listed in the data frame.
    #   This geom is pretty similar to geom_polygon(), but without the fill.
    #   geom_path() is good at drawing paths across maps.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Plot economic data for unemployment vs personal saving rate.
    ggplot(data = economics,
           mapping = aes(x = unemploy,
                         y = psavert,
                         color = date)) +
      geom_path()
    
    # Draw a checkbox with geom_path(), and map all aesthetics.
    ggplot(data = data.frame(x = c(0, .5, 2, 2, .5, 0),
                             y = c(3, 0, 10, 11, 1, 4)),
           mapping = aes(x = x,
                         y = y)) +
      geom_path(color = "green",
                linetype = "dashed",
                size = 2,
                alpha = .9)
    
    # Example #.# - (Lines) geom_ribbon() ----
    
    # Description:
    #   geom_ribbon() is very similar to geom_line(), and it allows us to draw a line with "area".
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_ribbon() to plot St. Louis unemployment over time.
    ggplot(data = economics,
           mapping = aes(x = date,
                         y = unemploy,
                         ymin = unemploy - 900,
                         ymax = unemploy + 900)) +
      geom_ribbon()
    
    # Plot geom_ribbon() and map all aesthetics.
    ggplot(data = economics,
           mapping = aes(x = date,
                         y = unemploy,
                         ymin = unemploy - 900,
                         ymax = unemploy + 900)) +
      geom_ribbon(color = "red",
                  fill = "cyan",
                  linetype = "dotted",
                  size = .1,
                  alpha = .6)
    
    # Example #.# - (Lines) geom_area() ----
    
    # Description:
    #   geom_area() is similar to geom_line(), and it fills in the area under the line.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_area() to plot St. Louis unemployment over time.
    ggplot(data = economics,
           mapping = aes(x = date,
                         y = unemploy)) +
      geom_area()
    
    # Plot geom_area() and map all aesthetics.
    ggplot(data = economics,
           mapping = aes(x = date,
                         y = unemploy)) +
      geom_area(color = "red",
                  fill = "cyan",
                  linetype = "dotted",
                  size = .1,
                  alpha = .5)
    
    # Example #.# - (Lines) geom_smooth() ----
    
    # Description:
    #   geom_smooth() is a great geom for plotting best-fit lines through data. It draws a grey
    #   "confidence interval" around the best-fit line, and can use a variety of best-fit models
    #   and formulas.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_smooth() to draw a best-fit line for car engine displacement vs highway mpg.
    ggplot(data = mpg,
           mapping = aes(x = displ,
                         y = hwy)) +
      geom_jitter(alpha = .2) +
      geom_smooth()
    
    # Set the "level" of confidence interval to .999 (default is .95).
    ggplot(data = mpg,
           mapping = aes(x = displ,
                         y = hwy)) +
      geom_jitter(alpha = .2) +
      geom_smooth(level = .999)
    
    # Color the confidence interval with "fill".
    ggplot(data = mpg,
           mapping = aes(x = displ,
                         y = hwy)) +
      geom_jitter(alpha = .2) +
      geom_smooth(fill = "cyan")
    
    # Get rid of the confidence interval with se = FALSE (). "se" is short for "standard error".
    ggplot(data = mpg,
           mapping = aes(x = displ,
                         y = hwy)) +
      geom_jitter(alpha = .2) +
      geom_smooth(se = FALSE)
    
    # Adjust the span to make the line more or less smooth.
    ggplot(data = mpg,
           mapping = aes(x = displ,
                         y = hwy)) +
      geom_jitter(alpha = .2) +
      geom_smooth(color = "red", span = .16,
                  se = FALSE) +
      geom_smooth(color = "orange", span = .2,
                  se = FALSE) +
      geom_smooth(color = "yellow3", span = .4,
                  se = FALSE) +
      geom_smooth(color = "green2", span = .6,
                  se = FALSE) +
      geom_smooth(color = "cyan3", span = .8,
                  se = FALSE) +
      geom_smooth(color = "blue", span = 1,
                  se = FALSE)
    
    # Adjust the smoothing method to get different best-fit lines.
    ggplot(data = mpg,
           mapping = aes(x = displ,
                         y = hwy)) +
      geom_jitter(alpha = .2) +
      geom_smooth(color = "red", method = "loess",
                  se = FALSE) +
      geom_smooth(color = "blue", method = "lm",
                  se = FALSE)
    
    # Adjust the smoothing formula to get different best-fit lines.
    ggplot(data = mpg,
           mapping = aes(x = displ,
                         y = hwy)) +
      geom_jitter(alpha = .2) +
      geom_smooth(color = "red", formula = y ~ x,
                  method = "lm",
                  se = FALSE) +
      geom_smooth(color = "orange", formula = y ~ log(x),
                  method = "lm",
                  se = FALSE) +
      geom_smooth(color = "yellow3", formula = y ~ splines::ns(x = x, df = 3),
                  method = "lm",
                  se = FALSE) +
      geom_smooth(color = "green2", formula = y ~ splines::bs(x = x, df = 3),
                  method = "lm",
                  se = FALSE) +
      geom_smooth(color = "blue", formula = y ~ poly(x, 4),
                  method = "lm",
                  se = FALSE)
    
    # Split up each car class into separate lines, and map all aesthetics.
    ggplot(data = mpg,
           mapping = aes(x = displ,
                         y = hwy,
                         color = class,
                         fill = class)) +
      geom_jitter(alpha = .2) +
      geom_smooth(method = "loess",
                  formula = y ~ x,
                  span = .8,
                  level = .5,
                  se = TRUE,
                  size = 1,
                  linetype = "F1")
    
    # Example #.# - (Segments) geom_segment() ----
    
    # Description:
    #   geom_segment() is an extremely useful geom that draws lines between specified points.
    #   This geom is great at plotting events over time (timelines) and also deltas over an area (like
    #   windstrength maps).
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_segment() to plot a few segments.
    ggplot(data = data.frame(x = c(1, 2, 1, 2),
                             y = c(1, 1, 2, 2)),
           mapping = aes(x = x,
                         xend = x + .5,
                         y = y,
                         yend = y + .5)) +
      geom_segment()
    
    # Use geom_segment() to plot the timeline of each president since Eisenhower.
    ggplot(data = presidential,
           mapping = aes(x = start,
                         xend = end,
                         y = party,
                         yend = party)) +
      geom_segment()
    
    # Add some arrows and color to the segments.
    ggplot(data = presidential,
           mapping = aes(x = start,
                         xend = end,
                         y = party,
                         yend = party,
                         color = name)) +
      geom_segment(arrow = arrow(),
                   size = 2)
    
    # NOTE: Arrows are part of the "grid" package, which we cover in another section. When you "load"
    #       ggplot2, it also loads the "grid" package so that it can use arrows.
    
    # Plot the movement of seals, and map all aesthetics.
    ggplot(data = seals,
           mapping = aes(x = long,
                         xend = long + delta_long,
                         y = lat,
                         yend = lat + delta_lat,
                         color = sqrt((delta_long ^ 2) + (delta_lat ^ 2)))) +
      geom_segment(arrow = arrow(angle = 30,
                                 length = unit(x = .2,
                                               units = "cm"),
                                 ends = "last",
                                 type = "open"),
                   size = 1,
                   alpha = 1,
                   linetype = "solid",
                   lineend = "round",
                   linejoin = "mitre")
    
    # Look at the different lineends and linejoins you can specify by running the code below.
    ggplot(data = data.frame(lineend = rep(c("round", "butt", "square"), each = 3),
                             linejoin = rep(c("round", "mitre", "bevel"), times = 3),
                             stringsAsFactors = FALSE),
           mapping = aes(x = 1, xend = 2,
                         y = paste0("lineend: ", lineend, "\nlinejoin: ", linejoin),
                         yend = paste0("lineend: ", lineend, "\nlinejoin: ", linejoin))) +
      geom_segment(arrow = arrow(length = unit(.35, "inches"), ends = "first"),
                   lineend = rep(c("round", "butt", "square"), each = 3),
                   linejoin = rep(c("round", "mitre", "bevel"), times = 3),
                   size = 4) +
      theme(axis.title = element_blank(), axis.text.x = element_blank(), axis.ticks.x = element_blank(),
            panel.background = element_blank(), plot.title = element_text(hjust = .5)) +
      ggtitle("Lineend & Linejoin Types")
    
    # Look at the different arrow types you can specify by running the code below.
    ggplot(data = data.frame(labels = c("angle = 15", "angle = 30", "angle = 45", "ends = \"both\"",
                                       "ends = \"first\"", "ends = \"last\"", "length = .15 inches",
                                       "length = .4 inches", "type = \"closed\"", "type = \"open\""),
                             stringsAsFactors = FALSE),
           mapping = aes(x = 1, xend = 2, y = labels, yend = labels)) +
      geom_segment(arrow = arrow(angle = c(15, 30, 45, 30, 30, 30, 30, 30, 30, 30),
                                 length = unit(x = c(.25, .25, .25, .25, .25, .25, .15, .4, .25, .25),
                                               "inches"),
                                 ends = c("first", "first", "first", "both", "first", "last", "first",
                                          "first", "first", "first"),
                                 type = c("open", "open", "open", "open", "open", "open", "open", "open",
                                          "closed", "open")),
                   size = 3) +
      theme(axis.title = element_blank(), axis.text.x = element_blank(), axis.ticks.x = element_blank(),
            panel.background = element_blank(), plot.title = element_text(hjust = .5)) +
      ggtitle("Arrow Parameters")
    
    # Example #.# - (Segments) geom_curve() ----
    
    # Description:
    #   geom_curve() functions similarly to geom_segment(), but it uses curved lines to connect points.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_curve() to plot a few segments.
    ggplot(data = data.frame(x = c(1, 2, 1, 2),
                             y = c(1, 1, 2, 2)),
           mapping = aes(x = x,
                         xend = x + .5,
                         y = y,
                         yend = y + .5)) +
      geom_curve()
    
    # Change the curviness with "curvature".
    ggplot(data = data.frame(x = c(1, 2, 1, 2),
                             y = c(1, 1, 2, 2)),
           mapping = aes(x = x,
                         xend = x + .5,
                         y = y,
                         yend = y + .5)) +
      geom_curve(curvature = -.2)
    
    # Change the skew of the curve with "angle".
    ggplot(data = data.frame(x = c(1, 2, 1, 2),
                             y = c(1, 1, 2, 2)),
           mapping = aes(x = x,
                         xend = x + .5,
                         y = y,
                         yend = y + .5)) +
      geom_curve(angle = 155)
    
    # Change the smoothness of the curve with "ncp".
    ggplot(data = data.frame(x = c(1, 2, 1, 2),
                             y = c(1, 1, 2, 2)),
           mapping = aes(x = x,
                         xend = x + .5,
                         y = y,
                         yend = y + .5)) +
      geom_curve(ncp = 1)
    
    # Plot the timeline of each president since Eisenhower with geom_curve().
    ggplot(data = presidential,
           mapping = aes(x = start,
                         xend = end,
                         y = party,
                         yend = party)) +
      geom_curve()
    
    # Split the plot up into 2 sets of curves, for Democrats and Republicans. Also, map all aesthetics.
    ggplot(mapping = aes(x = start,
                         xend = end,
                         y = 1,
                         yend = 1)) +
      geom_curve(data = presidential[presidential$party == "Democratic", ],
                 arrow = arrow(angle = 30,
                               length = unit(x = .15,
                                             units = "inches"),
                               ends = "last",
                               type = "open"),
                 color = "blue",
                 curvature = -.5,
                 angle = 90,
                 ncp = 5,
                 size = 2,
                 alpha = 1,
                 linetype = "solid",
                 lineend = "butt") +
      geom_curve(data = presidential[presidential$party == "Republican", ],
                 arrow = arrow(angle = 30,
                               length = unit(x = .15,
                                             units = "inches"),
                               ends = "last",
                               type = "open"),
                 color = "red",
                 curvature = .5,
                 angle = 90,
                 ncp = 5,
                 size = 2,
                 alpha = 1,
                 linetype = "solid",
                 lineend = "butt")
    
    
    # Example #.# - (Segments) geom_spoke() ----
    
    # Description:
    #   geom_spoke() draws lines from positions on a plot, with each line's angle and radius specified.
    #   geom_spoke() is pretty similar to geom_segment(), just with line "endpoints" specified differently.
    #   This geom would be good for graphing wind-strength charts, or maybe clocks.
    #   One thing to keep in mind: The maximum "angle" is 2 * pi. I have no idea why this is.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_spoke() to plot a few segments.
    ggplot(data = data.frame(x = rep(1:10, times = 10),
                             y = rep(1:10, each = 10),
                             angle = seq(from = 0, to = 2*pi, length.out = 100),
                             radius = .5),
           mapping = aes(x = x,
                         y = y,
                         angle = angle,
                         radius = radius,
                         color = angle)) +
      geom_point() +
      geom_spoke()
    
    # NOTE: See the "2*pi" part above? 2pi is geom_spoke()'s max "angle", and I have no idea why.
    #       Maybe something about circumference of a circle?
    
    # Plot spokes with arrows.
    ggplot(data = data.frame(x = rep(1:10, times = 10),
                             y = rep(1:10, each = 10),
                             angle = seq(from = 0, to = 2*pi, length.out = 100),
                             radius = .5),
           mapping = aes(x = x,
                         y = y,
                         angle = angle,
                         radius = radius,
                         color = angle)) +
      geom_point() +
      geom_spoke(arrow = arrow(length = unit(x = .2, units = "cm")))
    
    # Plot geom_spoke() and map all aesthetics.
    ggplot(data = data.frame(x = rep(1:10, times = 10),
                             y = rep(1:10, each = 10),
                             angle = seq(from = 0, to = 2*pi, length.out = 100),
                             radius = .5),
           mapping = aes(x = x,
                         y = y,
                         angle = angle,
                         radius = radius,
                         color = angle)) +
      geom_spoke(arrow = arrow(length = unit(x = .3, units = "cm")),
                 color = rainbow(100),
                 linetype = "solid",
                 lineend = "round",
                 linejoin = "mitre",
                 size = 2,
                 alpha = 1)
    
    # NOTE: The help text for geom_spoke() doesn't mention "arrow", "lineend", or "linejoin".
    #       You'll unfortunately just have to remember that you can use them.
    
    # Example #.# - (Density) geom_histogram() ----
    
    # Description:
    #   geom_histogram() chops the x-axis up into "bins", and then it counts the number of records
    #   in each "bin".
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_histogram() to plot data for highway mileage.
    ggplot(data = mpg,
           mapping = aes(x = hwy)) +
      geom_histogram()
    
    # "bins" lets us specify how many columns there should be.
    ggplot(data = mpg,
           mapping = aes(x = hwy)) +
      geom_histogram(bins = 10)
    
    # "binwidth" lets us specify the width of each column.
    ggplot(data = mpg,
           mapping = aes(x = hwy)) +
      geom_histogram(binwidth = 1)
    
    # When geom_histogram() counts the records in each bin, it gives us the count as variable "..count..".
    # and automatically maps "..count.." to "y". Let's also map this to "fill".
    ggplot(data = mpg,
           mapping = aes(x = hwy,
                         fill = ..count..)) +
      geom_histogram()
    
    # Plot geom_histogram() and map all aesthetics.
    ggplot(data = mpg,
           mapping = aes(x = hwy,
                         y = ..count..,
                         fill = manufacturer)) +
      geom_histogram(color = "black",
                     linetype = "F1",
                     alpha = .8,
                     size = 2)
    
    # Example #.# - (Density) geom_freqpoly() ----
    
    # Description:
    #   geom_freqpoly() is the exact same as geom_histogram(), but it draws lines instead of columns.
    #   geom_freqpoly() chops the x-axis up into "bins", and then it counts the number of records
    #   in each "bin".
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_histogram() to plot data for highway mileage.
    ggplot(data = mpg,
           mapping = aes(x = hwy)) +
      geom_histogram(alpha = .2) +
      geom_freqpoly()
    
    # "bins" lets us specify how many points there should be in the line.
    ggplot(data = mpg,
           mapping = aes(x = hwy)) +
      geom_histogram(bins = 10,
                     alpha = .2) +
      geom_freqpoly(bins = 10)
    
    # "binwidth" lets us specify the width of each "bin".
    ggplot(data = mpg,
           mapping = aes(x = hwy)) +
      geom_histogram(binwidth = 1,
                     alpha = .2) +
      geom_freqpoly(binwidth = 1)
    
    # When geom_freqpoly() counts the records in each bin, it gives us the count as variable "..count..".
    # and automatically maps "..count.." to "y". Let's also map this to "color".
    ggplot(data = mpg,
           mapping = aes(x = hwy,
                         color = ..count..)) +
      geom_freqpoly()
    
    # Plot geom_freqpoly() and map all aesthetics.
    ggplot(data = mpg,
           mapping = aes(x = hwy,
                         y = ..count..,
                         color = manufacturer)) +
      geom_freqpoly(linetype = "solid",
                    alpha = 1,
                    size = 1)
    
    # NOTE: See how the lines in the last plot are jumbled together? If you want them neatly stacked
    #       on top of each other, then use geom_histogram().
    
    # Example #.# - (Density) geom_density() ----
    
    # Description:
    #   geom_density() draws a smoothed line, similar to a histogram. It does this by computing a
    #   "kernel density estimate". I have no idea what this means, but it looks cool.
    #   geom_density() is useful for looking at distributions of data.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2", "dplyr"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_density() to plot the density of mpg for cars.
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_density()
    
    # "adjust" allows us to set the squiggliness of the line. "adjust = .5" means "twice as squiggly".
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_density(adjust = .5)
    
    # "trim" lets us specify if geom_density() should have tapered ends. Normally (trim = FALSE),
    # geom_density() will draw a line that tapers off. With trim = TRUE, geom_density() will
    # immediately chop off the line after each "group" of data.
    ggplot(data = mtcars %>% mutate(cyl = as.character(cyl)),
           mapping = aes(x = mpg,
                         color = cyl)) +
      geom_density(trim = FALSE,
                   linetype = "dotted") +
      geom_density(trim = TRUE)
    
    # "weight" will let us skew each group by another variable. By using "cyl", we make 8-cylinders
    # highest, 6-cylinders next highest, and 4-cylinders lowest.
    ggplot(data = mtcars,
           mapping = aes(x = mpg,
                         color = as.character(cyl),
                         weight = cyl)) +
      geom_density()
    
    # Add color below the lines with "fill".
    ggplot(data = mtcars %>% mutate(cyl = as.character(cyl)),
           mapping = aes(x = mpg,
                         color = cyl,
                         fill = cyl)) +
      geom_density(alpha = .3)
    
    # "kernel" let you adjust the smoothing method. This is way over my head, but I've listed out
    # the different methods below. Feel free to look up "R Kernel Density Estimation" online if
    # this kind of stuff gets you hot and bothered.
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_density(kernel = "gaussian", color = "red") +
      geom_density(kernel = "epanechnikov", color = "orange") +
      geom_density(kernel = "rectangular", color = "yellow3") +
      geom_density(kernel = "triangular", color = "green3") +
      geom_density(kernel = "biweight", color = "cyan3") +
      geom_density(kernel = "cosine", color = "blue") +
      geom_density(kernel = "optcosine", color = "magenta")
    
    # "n" lets you adjust the smoothness of the line. This must be specified as a power of 2 (2^X), and
    # the default is "2^9". Look up "R Kernel Density Estimation" online for more info.
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_density(n = 2^1, color = "red") +
      geom_density(n = 2^2, color = "gold2") +
      geom_density(n = 2^3, color = "green3") +
      geom_density(n = 2^4, color = "cyan3") +
      geom_density(n = 2^5, color = "blue") +
      geom_density(n = 2^6, color = "magenta")
    
    # Plot geom_density() and map all aesthetics.
    ggplot(data = mtcars,
           mapping = aes(x = mpg,
                         color = as.character(cyl),
                         fill = as.character(cyl),
                         weight = cyl)) +
      geom_density(adjust = .5,
                   trim = TRUE,
                   kernel = "gaussian",
                   n = 2^9,
                   alpha = .3,
                   linetype = "dotted",
                   size = 2)
    
    # Example #.# - (Density) geom_violin() ----
    
    # Description:
    #   geom_violin() is very similar to geom_density().
    #   It calculates densities for each x-axis category along the y-axis.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2", "dplyr"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_violin() to plot data for highway mileage.
    ggplot(data = mtcars %>% mutate(cyl = as.character(cyl)),
           mapping = aes(x = cyl,
                         y = mpg)) +
      geom_violin()
    
    # "scale" lets us adjust how wide each violin is.
    # scale = "area" means "each violin has the same area".
    # scale = "count" means "each violin's width is proportional to its # of records".
    # scale = "width" means "all violins have the same width".
    ggplot(data = mtcars %>% mutate(cyl = as.character(cyl)),
           mapping = aes(x = cyl,
                         y = mpg)) +
      geom_violin(color = "red", scale = "area",
                  fill = NA) +
      geom_violin(color = "green3", scale = "count",
                  fill = NA) +
      geom_violin(color = "blue", scale = "width",
                  fill = NA)
    
    # "trim" lets us keep or trim off tapered ends. Default is "trim = TRUE".
    ggplot(data = mtcars %>% mutate(cyl = as.character(cyl)),
           mapping = aes(x = cyl,
                         y = mpg)) +
      geom_violin(color = "red", trim = FALSE,
                  fill = NA) +
      geom_violin(color = "blue", trim = TRUE,
                  fill = NA)
    
    # "adjust" allows us to set the squiggliness of the line. "adjust = .5" means "twice as squiggly".
    ggplot(data = mtcars %>% mutate(cyl = as.character(cyl)),
           mapping = aes(x = cyl,
                         y = mpg)) +
      geom_violin(color = "red", adjust = .3,
                  fill = NA) +
      geom_violin(color = "orange", adjust = .5,
                  fill = NA) +
      geom_violin(color = "yellow3", adjust = .8,
                  fill = NA) +
      geom_violin(color = "green3", adjust = 1,
                  fill = NA) +
      geom_violin(color = "blue", adjust = 2,
                  fill = NA)
    
    # "draw_quantiles" draws lines at each quantile specified.
    ggplot(data = mtcars %>% mutate(cyl = as.character(cyl)),
           mapping = aes(x = cyl,
                         y = mpg)) +
      geom_violin(draw_quantiles = c(.25, .5, .75))
    
    # "kernel" let you adjust the smoothing method. You'll probably never need to adjust this.
    ggplot(data = mtcars %>% mutate(cyl = as.character(cyl)),
           mapping = aes(x = cyl,
                         y = mpg)) +
      geom_violin(kernel = "gaussian", color = "red",
                  fill = NA) +
      geom_violin(kernel = "epanechnikov", color = "orange",
                  fill = NA) +
      geom_violin(kernel = "rectangular", color = "yellow3",
                  fill = NA) +
      geom_violin(kernel = "triangular", color = "green3",
                  fill = NA) +
      geom_violin(kernel = "biweight", color = "cyan3",
                  fill = NA) +
      geom_violin(kernel = "cosine", color = "blue",
                  fill = NA) +
      geom_violin(kernel = "optcosine", color = "magenta",
                  fill = NA)
    
    # Fill each violin by the number of carburetors the engine has.
    ggplot(data = mtcars %>% mutate(cyl = as.character(cyl), carb = as.character(carb)),
           mapping = aes(x = cyl,
                         y = mpg,
                         fill = carb)) +
      geom_violin()
    
    # Plot geom_violin() and map all aesthetics.
    ggplot(data = mtcars %>% mutate(cyl = as.character(cyl), carb = as.character(carb)),
           mapping = aes(x = cyl,
                         y = mpg,
                         fill = carb)) +
      geom_violin(adjust = .5,
                  trim = FALSE,
                  kernel = "gaussian",
                  alpha = .8,
                  linetype = "longdash",
                  color = "navy",
                  size = 2)
    
    # Example #.# - (Density) geom_dotplot() ----
    
    # Description:
    #   geom_dotplot() is super confusing, it has too many options, and it scares me deeply.
    #   geom_dotplot() can (1) plot density curves, (2) plot histograms, and (3) plot violin plots.
    #   It does each of by drawing stacked points instead of columns.
    #   Because it can do so many things, it has a LOT of parameters that you have to mess around
    #   with.
    #   Feel free to skip over this geom if it's too confusing for you. I don't see myself using it
    #   very often.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2", "dplyr"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_dotplot() to plot car highway mileage.
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_dotplot()
    
    # "method" lets us choose geom_dotplots()'s binning method.
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_dotplot(fill = "red", method = "dotdensity",
                   color = NA,
                   alpha = .3) +
      geom_dotplot(fill = "green3",method = "histodot", 
                   color = NA,
                   alpha = .3)
    
    # NOTE: Points don't seem to line up well with "dotdensity", so we're going to use "histodot"
    #       in a lot of examples below. Also, "histodot" makes more sense because each point
    #       corresponds to the records counted (like geom_histogram()).
    
    # "binwidth" lets us change the size of the "binning columns".
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_dotplot(fill = "red", binwidth = .1,
                   method = "histodot",
                   color = NA,
                   alpha = .3) +
      geom_dotplot(fill = "gold2", binwidth = .5,
                   method = "histodot",
                   color = NA, 
                   alpha = .3) +
      geom_dotplot(fill = "green3", binwidth = 1,
                   method = "histodot",
                   color = NA,
                   alpha = .3) +
      geom_dotplot(fill = "cyan3", binwidth = 1.5,
                   method = "histodot",
                   color = NA,
                   alpha = .3) +
      geom_dotplot(fill = "blue", binwidth = 2,
                   method = "histodot",
                   color = NA,
                   alpha = .3)
    
    # NOTE: The default "binwidth" is kind of funky, so I'd recommend that you always specify this
    #       to something like 1, 10, 100, etc.
    
    # "dotsize" lets us change the size of the dots without changing the "binning column" size.
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_dotplot(fill = "red", dotsize = .1,
                   method = "histodot",
                   color = NA,
                   alpha = .3) +
      geom_dotplot(fill = "gold2", dotsize = .5,
                   method = "histodot",
                   color = NA,
                   alpha = .3) +
      geom_dotplot(fill = "green3", dotsize = 1,
                   method = "histodot",
                   color = NA,
                   alpha = .3) +
      geom_dotplot(fill = "cyan3", dotsize = 1.5,
                   method = "histodot",
                   color = NA,
                   alpha = .3) +
      geom_dotplot(fill = "blue", dotsize = 2,
                   method = "histodot",
                   color = NA,
                   alpha = .3)
    
    # "binaxis" = "X" lines dots up on the a-axis.
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_dotplot(binaxis = "x")
    
    # "binaxis" = "y" lines dots up on the a-axis.
    ggplot(data = mtcars,
           mapping = aes(x = 1,
                         y = mpg)) +
      geom_dotplot(binaxis = "y")
    
    # NOTE: geom_dotplot() requires "x", so we have to specify this as "1". This is poor design by
    #       the ggplot2 developers.
    
    # "stackdir" lets us choose where the dots "stack up" on the plot.
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_dotplot(stackdir = "up")
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_dotplot(stackdir = "down")
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_dotplot(stackdir = "center")
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_dotplot(stackdir = "centerwhole")
    
    # "stackratio" lets us specify how close each dot should be stacked together.
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_dotplot(fill = "red", stackratio = .1,
                   color = NA,
                   alpha = .3) +
      geom_dotplot(fill = "gold2", stackratio = 1,
                   color = NA,
                   alpha = .3) +
      geom_dotplot(fill = "green3", stackratio = 1.5,
                   color = NA,
                   alpha = .3) +
      geom_dotplot(fill = "cyan3", stackratio = 2,
                   color = NA,
                   alpha = .3) +
      geom_dotplot(fill = "blue", stackratio = 3,
                   color = NA,
                   alpha = .3)
    
    # "origin" lets us specify how dots should be justified against their bin-axis.
    # This only works for the "histodot" method.
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_dotplot(method = "histodot", origin = 0.5,
                   binwidth = 1,
                   fill = "red",
                   color = NA,
                   alpha = .3) +
      geom_dotplot(method = "histodot", origin = 1,
                   binwidth = 1,
                   fill = "green3",
                   color = NA,
                   alpha = .3)
    
    # "right" does something about "histodot" intervals. I'm not sure what that means, but it
    # looks like TRUE and FALSE do something below...
    ggplot(data = mtcars,
           mapping = aes(x = mpg)) +
      geom_dotplot(method = "histodot", right = TRUE,
                   binwidth = 1,
                   fill = "red",
                   color = NA,
                   alpha = .3) +
      geom_dotplot(method = "histodot", right = FALSE,
                   binwidth = 1,
                   fill = "green3",
                   color = NA,
                   alpha = .3)
    
    # Plot geom_dotplot() like a geom_violin() plot.
    ggplot(data = mtcars %>% mutate(am = as.character(am), cyl = as.character(cyl)),
           mapping = aes(x = am,
                         y = mpg)) +
      geom_dotplot(binaxis = "y",
                   stackdir = "center")
    
    # Plot the same thing, but with colored groups.
    ggplot(data = mtcars %>% mutate(am = as.character(am), cyl = as.character(cyl)),
           mapping = aes(x = am,
                         y = mpg,
                         fill = cyl)) +
      geom_dotplot(binaxis = "y",
                   stackdir = "center",
                   color = NA)
    
    # NOTE: See how each colored group overlaps each other? "stackgroups" = TRUE and
    #       "binpositions" = "all" solves that.
    
    # Fix the dot stacking with "stackgroups" and "binpositions".
    ggplot(data = mtcars %>% mutate(am = as.character(am), cyl = as.character(cyl)),
           mapping = aes(x = am,
                         y = mpg,
                         fill = cyl)) +
      geom_dotplot(binaxis = "y",
                   stackdir = "center",
                   binpositions = "all",
                   stackgroups = TRUE,
                   color = NA)
    
    # Plot geom_dotplot() and map all aesthetics.
    ggplot(data = mtcars %>% mutate(am = as.character(am), cyl = as.character(cyl)),
           mapping = aes(x = am,
                         y = mpg,
                         fill = cyl)) +
      geom_dotplot(binaxis = "y",
                   method = "histodot",
                   stackdir = "center",
                   binpositions = "all",
                   stackgroups = TRUE,
                   stackratio = .8,
                   binwidth = 2,
                   dotsize = 1,
                   origin = 0,
                   righy = 0,
                   color = NA,
                   alpha = .8)
    
    # Example #.# - (Density) geom_density2d() ----
    
    # Description:
    #   geom_density2d() takes a numeric x-axis and y-axis, and then plots the density with
    #   contours. geom_density2d() calculates ..level.. to get the density.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_density2d() to plot the density of eruptions vs waiting times.
    ggplot(data = faithful,
           mapping = aes(x = waiting,
                         y = eruptions)) +
      geom_point(alpha = .1) +
      geom_density2d()
    
    # Use geom_density2d() to plot the density of car city vs highway mpg.
    ggplot(data = mpg,
           mapping = aes(x = cty,
                         y = hwy)) +
      geom_point(alpha = .1) +
      geom_density2d()
    
    # Use geom_density2d() to plot the price of diamonds vs their quality.
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price)) +
      geom_point(alpha = .005) +
      geom_density2d()
    
    # "bins" lets us choose how many contours should be drawn.
    ggplot(data = faithful,
           mapping = aes(x = waiting,
                         y = eruptions)) +
      geom_point(alpha = .1) +
      geom_density2d(bins = 20, color = "blue") +
      geom_density2d(bins = 2, color = "red",
                     size = 2)
    
    # "binwidth" lets us specify how far apart each contour should be.
    ggplot(data = faithful,
           mapping = aes(x = waiting,
                         y = eruptions)) +
      geom_density2d(binwidth = .001, color = "blue") +
      geom_density2d(binwidth = .01, color = "red",
                     size = 2)
    
    # geom_density2d() calculates "..level..", which corresponds to the contour height.
    ggplot(data = faithful,
           mapping = aes(x = waiting,
                         y = eruptions,
                         color = ..level..)) +
      geom_density2d()
    
    # Make a custom data frame and plot it with geom_density2d().
    ggplot(data = data.frame(x = runif(n = 10000),
                             y = runif(n = 10000)),
           mapping = aes(x = x,
                         y = y)) +
      geom_density2d()
    
    # Plot geom_density2d() and map all aesthetics.
    ggplot(data = faithful,
           mapping = aes(x = waiting,
                         y = eruptions,
                         color = ..level..)) +
      geom_density2d(bins = 22,  # OR binwidth = .01
                   linetype = "dashed",
                   size = 1,
                   alpha = 1,
                   lineend = "round",
                   linejoin = "round",
                   linemitre = 10)
    
    # Example #.# - (Density) geom_contour() ----
    
    # Description:
    #   geom_contour() is similar to geom_density2d(), except that it expects a uniform grid of
    #   x and y datapoints, with a 3rd variable to represent "height". A data frame like this
    #   usually comes from interpolation.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_contour() to plot the density of eruptions vs waiting times.
    ggplot(data = faithfuld,
           mapping = aes(x = waiting,
                         y = eruptions,
                         z = density)) +
      geom_contour()
    
    # "bins" lets us choose how many contours should be drawn.
    ggplot(data = faithfuld,
           mapping = aes(x = waiting,
                         y = eruptions,
                         z = density)) +
      geom_contour(bins = 10, color = "blue") +
      geom_contour(bins = 2, color = "red",
                   size = 2)
    
    # "binwidth" lets us specify how far apart each contour should be.
    ggplot(data = faithfuld,
           mapping = aes(x = waiting,
                         y = eruptions,
                         z = density)) +
      geom_contour(binwidth = .001, color = "blue") +
      geom_contour(binwidth = .01, color = "red",
                   size = 2)
    
    # geom_contour() calculates "..level..", which corresponds to the contour height.
    ggplot(data = faithfuld,
           mapping = aes(x = waiting,
                         y = eruptions,
                         z = density,
                         color = ..level..)) +
      geom_contour()
    
    # Make a custom data frame and plot it with geom_contour().
    ggplot(data = data.frame(x = rep(1:100, times = 100),
                             y = rep(1:100, each = 100),
                             z = rep(1:100, times = 100) * rep(1:100, each = 100)),
           mapping = aes(x = x,
                         y = y,
                         z = z)) +
      geom_contour()
    
    # Plot geom_contour() and map all aesthetics.
    ggplot(data = faithfuld,
           mapping = aes(x = waiting,
                         y = eruptions,
                         z = density,
                         color = ..level..)) +
      geom_contour(bins = 22,  # OR binwidth = .01
                   linetype = "dashed",
                   size = 1,
                   alpha = 1,
                   lineend = "round",
                   linejoin = "round",
                   linemitre = 10)
    
    # Example #.# - (Density) geom_bin2d() ----
    
    # Description:
    #   geom_bin2d() divides the plot into grids, then fill each grid with the number of points in
    #   that location. This is kind of like a heatmap for when you have a numeric x-axis and y-axis.
    #   geom_bin2d() calculates ..count.. to fill each grid on a plot.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_bin2d() to plot the density of eruptions vs waiting times.
    ggplot(data = faithful,
           mapping = aes(x = waiting,
                         y = eruptions)) +
      geom_bin2d()
    
    # Use geom_bin2d() to plot the density of car city vs highway mpg.
    ggplot(data = mpg,
           mapping = aes(x = cty,
                         y = hwy)) +
      geom_bin2d()
    
    # Use geom_bin2d() to plot the price of diamonds vs their quality.
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price,
                         fill = ..count..)) +
      geom_bin2d()
    
    # "bins" let us set the number of grids on the plot (including x and y individually).
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price)) +
      geom_bin2d(bins = 10)
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price)) +
      geom_bin2d(bins = c(10, 100))
    
    # "binwidth" let us set the size of grids on the plot (including x and y individually).
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price)) +
      geom_bin2d(binwidth = 1)
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price)) +
      geom_bin2d(binwidth = c(.5, 100))
    
    # Plot geom_bin2d() and map all aesthetics.
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price,
                         fill = ..count..)) +
      geom_bin2d(bins = c(100, 50),  # OR binwidth = c(.05, 300)
                 alpha = .8,
                 color = "green",
                 linetype = "dotted",
                 size = .2)
    
    # Example #.# - (Density) geom_hex() ----
    
    # Description:
    #   geom_hex() divides the plot into hexagons, then fill each hexagons with the number of points
    #   in that location. This is kind of like a heatmap for when you have a numeric x-axis and y-axis.
    #   geom_hex() calculates ..count.. to fill each hexagons on a plot, exactly like geom_bin2d().
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_hex() to plot the density of eruptions vs waiting times.
    ggplot(data = faithful,
           mapping = aes(x = waiting,
                         y = eruptions)) +
      geom_hex()
    
    # Use geom_hex() to plot the density of car city vs highway mpg.
    ggplot(data = mpg,
           mapping = aes(x = cty,
                         y = hwy)) +
      geom_hex()
    
    # Use geom_hex() to plot the price of diamonds vs their quality.
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price,
                         fill = ..count..)) +
      geom_hex()
    
    # "bins" let us set the number of grids on the plot per axis.
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price)) +
      geom_hex(bins = 10)
    
    # "binwidth" let us set the size of grids on the plot (including x and y individually).
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price)) +
      geom_hex(binwidth = 1)
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price)) +
      geom_hex(binwidth = c(1, 1000))
    
    # Plot geom_hex() and map all aesthetics.
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price,
                         fill = ..count..)) +
      geom_hex(bins = 10,  # OR binwidth = c(.05, 300)
               alpha = 1,
               color = "blue4")
    
    # Example #.# - (Statistics) geom_boxplot() ----
    
    # Description:
    #   geom_boxplot() shows how points are distributed on a plot. It calulates the following summary
    #   statistics:
    #   ..ymax.. means "highest point greater then or equal to (+ 1.5 IQR)"
    #   ..upper.. means "75% quantile"
    #   ..middle.. means "50% quantile (median)"
    #   ..lower.. means "25% quantile"
    #   ..ymin.. means "lowest point less then or equal to (- 1.5 IQR)"
    #   Any points that are outside of the +/- IQR are plotted individually.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2", "quantreg"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_boxplot() to plot the density of car highway mileage per car class.
    ggplot(data = mpg,
           mapping = aes(x = class,
                         y = hwy)) +
      geom_boxplot()
    
    # Plot geom_jitter() over a geom_boxplot() to see how it works.
    ggplot(data = mpg,
           mapping = aes(x = class,
                         y = hwy)) +
      geom_boxplot() +
      geom_jitter(width = .2, height = 0, alpha = .2, color = "red")
    
    # "notch" and "notchwidth" adds a notch, so that boxplots can be compared against one another.
    # If the notches of two boxplots don't overlap, then their medians are significantly different.
    ggplot(data = mpg,
           mapping = aes(x = class,
                         y = hwy)) +
      geom_boxplot(notch = TRUE,
                   notchwidth = .8)
    
    # "varwidth" makes the boxplots' width, based on the points in their group.
    # "width" allows you to skew the width.
    ggplot(data = mpg,
           mapping = aes(x = class,
                         y = hwy,
                         weight = cty)) +  # "weight" requires the "quantreg" package.
      geom_boxplot(varwidth = TRUE)
    
    # "coef" allows you to change the whisker length (default = 1.5 * IQR)
    ggplot(data = mpg,
           mapping = aes(x = class,
                         y = hwy)) +
      geom_boxplot(coef = 0)
    
    # "outlier.color/fill/shape/size/stroke/alpha" let us adjust the points outside of the whiskers.
    ggplot(data = mpg,
           mapping = aes(x = class,
                         y = hwy)) +
      geom_boxplot(outlier.color = "red",
                   outlier.fill = "blue",
                   outlier.shape = 22,
                   outlier.size = 2,
                   outlier.stroke = 2,
                   outlier.alpha = 1)
    
    # The boundaries of geom_boxplot() are derived, and can instead be set manually.
    ggplot(data = mpg,
           mapping = aes(x = class,
                         y = hwy,
                         ymax = ..ymax..,
                         upper = ..upper..,
                         middle = ..middle..,
                         lower = ..lower..,
                         ymin = ..ymin..)) +
      geom_boxplot()
    
    # When "notch = TRUE", the "notchlower" and "notchupper" aesthetics are also used.
    ggplot(data = mpg,
           mapping = aes(x = class,
                         y = hwy,
                         ymax = ..ymax..,
                         upper = ..upper..,
                         notchlower = ..notchlower..,
                         middle = ..middle..,
                         notchupper = ..notchupper..,
                         lower = ..lower..,
                         ymin = ..ymin..)) +
      geom_boxplot(notch = TRUE)
    
    # Graph car highway mileage vs class, and color by drive (front/rear/4-wheel) type.
    ggplot(data = mpg,
           mapping = aes(x = class,
                         y = hwy,
                         color = drv)) +
      geom_boxplot()
    
    # If you graph continous variables on x and y, then set "group = 1".
    # This is because geom_boxplot() doesn't like assuming groups.
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price,
                         group = 1)) +
      geom_boxplot()
    
    # cut_width(), cut_interval(), and cut_number() allow you to make your own groups with numeric axes.
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price,
                         group = cut_interval(x = carat,
                                              n = 30))) +
      geom_boxplot(outlier.alpha = .05)
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price,
                         group = cut_number(x = carat,
                                            n = 10))) +
      geom_boxplot(outlier.alpha = .05)
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price,
                         group = cut_width(x = carat,
                                           width = .25))) +
      geom_boxplot(outlier.alpha = .05)
    
    # Plot geom_boxplot() and map all aesthetics.
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price,
                         group = cut_interval(x = carat,
                                              n = 20),
                         ymax = ..ymax..,
                         upper = ..upper..,
                         notchlower = ..notchlower..,
                         middle = ..middle..,
                         notchupper = ..notchupper..,
                         lower = ..lower..,
                         ymin = ..ymin..)) +
      geom_boxplot(notch = TRUE,
                   notchwidth = .1,
                   varwidth = FALSE,
                   coef = .5,
                   color = "blue",
                   fill = "cyan",
                   outlier.alpha = .1,
                   outlier.color = "red",
                   outlier.fill = "orange",
                   outlier.shape = 21,
                   outlier.size = 1,
                   outlier.stroke = 1)
    
    # Example #.# - (Statistics) geom_linerange() ----
    
    # Description:
    #   geom_linerange() draws vertical lines on a plot.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Plot geom_linerange() and map all aesthetics.
    ggplot(data = data.frame(x = c("trt_1", "trt_1", "trt_2", "trt_2"),
                             group = c("a", "b", "a", "b"),
                             ymax = c(1.1, 5.3, 3.3, 4.2),
                             ymin = c(.8, 4.6, 2.4, 3.6)),
           mapping = aes(x = x,
                         color = group,
                         ymax = ymax,
                         ymin = ymin)) +
      geom_linerange(linetype = "solid",
                     size = 2,
                     alpha = 1)
    
    # Example #.# - (Statistics) geom_pointrange() ----
    
    # Description:
    #   geom_pointrange() draws vertical lines on a plot, with a point. This geom is redundant with
    #   geom_linerange() and geom_point().
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Plot geom_pointrange() and map all aesthetics.
    ggplot(data = data.frame(x = c("trt_1", "trt_1", "trt_2", "trt_2"),
                             y = c(1, 5, 3, 4),
                             group = c("a", "b", "a", "b"),
                             ymax = c(1.1, 5.3, 3.3, 4.2),
                             ymin = c(.8, 4.6, 2.4, 3.6)),
           mapping = aes(x = x,
                         y = y,
                         color = group,
                         ymax = ymax,
                         ymin = ymin)) +
      geom_pointrange(linetype = "solid",
                      size = 2,
                      shape = 22,
                      stroke = .1,
                      fill = "yellow",
                      alpha = .5)
    
    # Example #.# - (Statistics) geom_crossbar() ----
    
    # Description:
    #   geom_crossbar() draws a box around upper and lower ranges, similar to a boxplot.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Plot geom_crossbar() and map all aesthetics.
    ggplot(data = data.frame(x = c("trt_1", "trt_1", "trt_2", "trt_2"),
                             y = c(1, 5, 3, 4),
                             group = c("a", "b", "a", "b"),
                             ymax = c(1.1, 5.3, 3.3, 4.2),
                             ymin = c(.8, 4.6, 2.4, 3.6)),
           mapping = aes(x = x,
                         y = y,
                         color = group,
                         ymax = ymax,
                         ymin = ymin)) +
      geom_crossbar(width = .2,
                    linetype = "solid",
                    size = .5,
                    fill = "white",
                    alpha = 1)
    
    # Example #.# - (Statistics) geom_errorbar() ----
    
    # Description:
    #   geom_errorbar() draws lineranges, with horizontal end-lines.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Plot geom_errorbar() and map all aesthetics.
    ggplot(data = data.frame(x = c("trt_1", "trt_1", "trt_2", "trt_2"),
                             y = c(1, 5, 3, 4),
                             group = c("a", "b", "a", "b"),
                             ymax = c(1.1, 5.3, 3.3, 4.2),
                             ymin = c(.8, 4.6, 2.4, 3.6)),
           mapping = aes(x = x,
                         y = y,
                         color = group,
                         ymax = ymax,
                         ymin = ymin)) +
      geom_errorbar(width = .2,
                    linetype = "solid",
                    size = .5,
                    alpha = 1)
    
    # Example #.# - (Statistics) geom_errorbarh() ----
    
    # Description:
    #   geom_errorbar() draws horizontal lineranges, with vertical end-lines.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Plot geom_errorbar() and map all aesthetics.
    ggplot(data = data.frame(x = c(1, 5, 3, 4),
                             y = c("trt_1", "trt_1", "trt_2", "trt_2"),
                             group = c("a", "b", "a", "b"),
                             xmax = c(1.1, 5.3, 3.3, 4.2),
                             xmin = c(.8, 4.6, 2.4, 3.6)),
           mapping = aes(x = x,
                         y = y,
                         color = group,
                         xmax = xmax,
                         xmin = xmin)) +
      geom_errorbarh(height = .2,
                    linetype = "solid",
                    size = .5,
                    alpha = 1)
    
    # Example #.# - (Statistics) geom_qq() ----
    
    # Description:
    #   geom_qq() plots points on a quantile-quantile plot.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2", "UsingR"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # The theoretical distribution will have a "0" x-intercept and a 1 slope.
    ggplot(mapping = aes(sample = rnorm(n = 1e4))) +
      geom_qq()
    
    # Data might have a different intercept/slope (mean/stddev) than theoretical data. 
    ggplot(mapping = aes(sample = rnorm(n = 1e4,
                                        mean = 10,
                                        sd = 4))) +
      geom_qq() +
      geom_abline(intercept = 10,  # Intercept corresponds to the mean.
                  slope = 4,  # Slope corresponds to the Std Dev / scale
                  color = "red",
                  size = 1.5,
                  alpha = 0.5)
    
    # A Q-Q plot can be replicated wtih geom_point() with the example below.
    ggplot(mapping = aes(x = qnorm((1:1e4 / 1e4) - (0.5 / 1e4)),
                         y = sort(rnorm(n = 1e4,
                                        mean = 10,
                                        sd = 4)))) +
      geom_point()
    
    # Example 1 - The eruption time of Old Faithful is NOT a normal distribution.
    ggplot(data = geyser,
           mapping = aes(sample = duration)) +
      geom_qq()
    
    # Example 2 - Heights of Parents do seem almost normally distributed.
    ggplot(data = father.son,
           mapping = aes(sample = fheight)) +
      geom_qq()
    
    # Example #.# - (Statistics) geom_qq_line() ----
    
    # Description:
    #   geom_qq_line() plots a line on a quantile-quantile plot.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # The theoretical distribution will have a "0" x-intercept and a 1 slope.
    ggplot(data = data.frame(y = rt(n = 200,
                                    df = 5)),
           mapping = aes(sample = y)) +
      geom_qq() +
      geom_qq_line(color = "red")
    
    # fitdistr() from the "MASS" package can be used to estimate a distriubtion.
    dt_RandTDist <- data.frame(y = rt(n = 200,
                                      df = 5))
    params <- as.list(MASS::fitdistr(x = dt_RandTDist$y,
                                     densfun = "t"))$estimate
    ggplot(data = dt_RandTDist,
           mapping = aes(sample = y)) +
      geom_qq(distribution = stats::qt,
              dparams = params["df"]) +
      geom_qq_line(distribution = stats::qt,
                   dparams = params["df"],
                   color = "red")
    
    # Check if car mpg is a normal distribution.
    ggplot(data = mtcars,
           mapping = aes(sample = mpg)) +
      geom_qq() +
      geom_qq_line(color = "red")
    
    # Check if car mpg (by cylinder type) is a normal distribution.
    ggplot(data = mtcars,
           mapping = aes(sample = mpg,
                         color = as.character(cyl))) +
      geom_qq() +
      geom_qq_line()
    
    # Example #.# - (Statistics) geom_quantile() ----
    
    # Description:
    #   geom_quantile() draws quantile regression lines.
    
    # Load relevant packages.
    vec_packages <- c("ggplot2"); for (i in 1:length(vec_packages)) {if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos = "http://cran.us.r-project.org")}; library(vec_packages[i], character.only = TRUE)}; rm(vec_packages, i);
    
    # Use geom_quantile() to plot the relation of car engine displancement vs 1/highway mpg.
    ggplot(data = mpg,
           mapping = aes(x = displ,
                         y = 1 / hwy)) +
      geom_point() +
      geom_quantile()
    
    # "quantiles" lets you specify specific quantile lines.
    ggplot(data = mpg,
           mapping = aes(x = displ,
                         y = 1 / hwy)) +
      geom_point() +
      geom_quantile(quantiles = .5)
    ggplot(data = mpg,
           mapping = aes(x = displ,
                         y = 1 / hwy)) +
      geom_point() +
      geom_quantile(quantiles = seq(from = .2, to = .8, by = .2))
    
    # method = "rqss" allows geom_quantile() to show smoothed quantile lines.
    ggplot(data = mpg,
           mapping = aes(x = displ,
                         y = 1 / hwy)) +
      geom_point() +
      geom_quantile(method = "rqss")
    
    # "lambda" allows you to adjust the squiggliness of smoothed quantile lines.
    ggplot(data = mpg,
           mapping = aes(x = displ,
                         y = 1 / hwy)) +
      geom_point() +
      geom_quantile(method = "rqss",
                    lambda = .1)
    
    # Walkthrough # - Stats ----
    
    
    
    ?geom_point()
    ?geom_count()
    ?geom_histogram()
    
    # stat_summary() - https://ggplot2.tidyverse.org/reference/stat_summary.html
    
    # http://www.sthda.com/english/wiki/ggplot2-box-plot-quick-start-guide-r-software-and-data-visualization
    p + stat_summary(fun.y=mean, geom="point", shape=23, size=4)
    
    stat_ellipse()
    stat_ecdf()
    stat_function()
    stat_unique()
    
    # For geom_boxplot() - https://ggplot2.tidyverse.org/reference/geom_boxplot.html
    y <- rnorm(100)
    df <- data.frame(x = 1,
                     y0 = min(y),
                     y25 = quantile(y, 0.25),
                     y50 = median(y),
                     y75 = quantile(y, 0.75),
                     y100 = max(y))
    ggplot(data = df,
           mapping = aes(x = x)) +
      geom_boxplot(mapping = aes(ymin = y0,
                                 lower = y25,
                                 middle = y50,
                                 upper = y75,
                                 ymax = y100),
        stat = "identity")
    
    # Walkthrough # - Positions ----
    
    ?geom_point()
    ?geom_jitter()
    ?geom_col()
    geom_point(position = position_identity())
    geom_point(position = position_jitter())
    geom_col(position = position_stack())
    geom_col(position = position_dodge())
    geom_col(position = position_fill())
    geom_text(position = position_nudge())
    
    # At the bottom, check out - https://ggplot2.tidyverse.org/reference/geom_text.html
    
    # Check @ bottom - https://ggplot2.tidyverse.org/reference/geom_density.html
    ggplot(diamonds, aes(carat, fill = cut)) +
      geom_density(position = "stack")
    ggplot(diamonds, aes(carat, stat(count), fill = cut)) +
      geom_density(position = "stack")
    ggplot(diamonds, aes(carat, stat(count), fill = cut)) +
      geom_density(position = "fill")
    
    # Check @ bottom - https://ggplot2.tidyverse.org/reference/geom_dotplot.html
    ggplot(mtcars, aes(x = factor(vs), fill = factor(cyl), y = mpg)) +
      geom_dotplot(binaxis = "y", stackdir = "center", position = "dodge")
    
    # Maybe this needs its own section(?) - https://ggplot2.tidyverse.org/reference/geom_boxplot.html
    ggplot(data = diamonds,
           mapping = aes(x = carat,
                         y = price,
                         group = cut_width(x = carat,
                                           width = .25))) +
      geom_boxplot()
    
    # Walkthrough # - Scales ----
    # Walkthrough # - Themes ----
    # Walkthrough # - Coordinates ----
    # https://gis.stackexchange.com/questions/234942/keep-customized-colors-with-geom-polygon
    # https://eric.netlify.com/2017/08/07/drawing-an-annotated-unit-circle-with-ggplot2/
    # https://stackoverflow.com/questions/52222939/plotting-curved-lines-on-polar-charts/52225377
    
    # https://ggplot2.tidyverse.org/reference/geom_boxplot.html
    coord_flip()
    
    # Walkthrough # - Facets ----
    # Walkthrough # - Themes ----
    # Walkthrough # - Annotations ----
    
    
    
    
    # https://ggplot2.tidyverse.org/reference/
    # http://www.sthda.com/english/wiki/be-awesome-in-ggplot2-a-practical-guide-to-be-highly-effective-r-software-and-data-visualization
    # https://ggplot2.tidyverse.org/reference/guides.html
    # https://ggplot2.tidyverse.org/reference/guide_legend.html
    
    # Setup
    
    # Set working directory
    setwd("P:\\General\\R\\Tutorials\\ggplot2 Tutorial")
    
    # Read in example housing data
    housing <- read.csv("Rgraphics\\dataSets\\landdata-states.csv")
    head(housing)
    
    # R Base vs ggplot2 Graphics
    
    # Read in example housing data
    housing <- read.csv("Rgraphics\\dataSets\\landdata-states.csv")
    head(housing)
    
    # Create a simple plot in base R
    hist(housing$Home.Value)
    
    # Create a simple plot in ggplot2
    if("ggplot2" %in% rownames(installed.packages()) == FALSE){install.packages("ggplot2")}
    library(ggplot2)
    ggplot(data = housing,
           aes(x = Home.Value)) +
      geom_histogram()
    
    # Create a complex plot in base R
    plot(Home.Value ~ Date,
         data = subset(x = housing,
                       subset = State == "MA"))
    points(Home.Value ~ Date,
           col = "red",
           data = subset(x = housing,
                         subset = State == "TX"))
    legend(x = 1975, y = 400000,
           legend = c("MA", "TX"),
           title = "State",
           col = c("black", "red"),
           pch = c(1, 1))
    
    # Create a complex plot in ggplot2
    ggplot(data = subset(x = housing,
                         subset = State %in% c("MA", "TX")),
           mapping = aes(x = Date,
                         y = Home.Value,
                         color = State)) +
      geom_point()  # + geom_line()  # geom_boxplot
    
    # Graphing & Lines & Smoothers
    
    # Make a scatterplot
    hp2001Q1 <- subset(x = housing,
                       subset = Date == 2001.25)
    ggplot(data = hp2001Q1,
           mapping = aes(x = Land.Value,
                         y = Structure.Cost)) +
      geom_point()
    
    # Make the same plot, but with log(x)
    ggplot(data = hp2001Q1,
           mapping = aes(x = log(Land.Value),
                         y = Structure.Cost)) +
      geom_point()
    
    # Create a prediction line for the dataset
    hp2001Q1$pred.SC <- predict(object = lm(Structure.Cost ~ log(Land.Value),
                                            data = hp2001Q1))
    plot1 <- ggplot(data = hp2001Q1,
                    mapping = aes(x = log(Land.Value),
                                  y = Structure.Cost))
    plot1 +
      geom_point(mapping = aes(color = Home.Value)) +
      geom_line(mapping = aes(y = pred.SC))
    
    # Create a smoother (line & ribbon) for the dataset
    plot1 +
      geom_point(mapping = aes(color = Home.Value)) +
      geom_smooth(method = "loess")  # (method = "lm")
    
    # Create the plot, with text as the points
    plot1 +
      geom_text(mapping = aes(label = State),
                size = 3)
    
    # Create the plot, with points and text
    if("ggrepel" %in% rownames(installed.packages()) == FALSE){install.packages("ggrepel")}
    library(ggrepel)
    plot1 +
      geom_point() +
      geom_text_repel(mapping = aes(label = State),
                      size = 3)
    
    # Create the plot, with color & shape mapped to variables
    plot1 +
      geom_point(mapping = aes(color = Home.Value,
                               shape = region))
    
    # Variables are mapped to aesthetics INSIDE aes(). Fixed aesthetics are mapped OUTSIDE aes().
    plot1 + geom_point(size = 8, color = "purple")  # GOOD
    plot1 + geom_point(mapping = aes(size = 2, color = "green"))  # BAD (No effect & bad legend)
    
    # Exercise 1
    
    # Read in data
    data.econ <- read.csv("Rgraphics\\dataSets\\EconomistData.csv")
    
    # HDI = Human Development Index. CPI = Corruption Perception Index.
    head(data.econ)
    
    # Plot data
    ggplot(data = data.econ,
           mapping = aes(x = HDI,
                         y = CPI,
                         size = HDI.Rank)) +
      geom_point()
    
    # Create a scatter plot with CPI on the x axis and HDI on the y axis.
    plot1 <- ggplot(data = data.econ,
                    mapping = aes(x = CPI,
                                  y = HDI))
    plot1 + geom_point()
    
    # Color the points blue.
    plot1 + geom_point(color = "blue")
    
    # Map the color of the the points to Region.
    plot1 + geom_point(mapping = aes(color = Region))
    
    # Make the points bigger by setting size to 2
    plot1 + geom_point(size = 2,
                       mapping = aes(color = Region))
    
    # Map the size of the points to HDI.Rank
    plot1 + geom_point(mapping = aes(color = Region,
                                     size = HDI.Rank))
    
    # Statistical Transformations
    
    # Some plots (e.g., histogram, boxplot, prediction lines) require transformations. The default statistic for geom_histogram is "stat_bin"
    args(geom_histogram)
    args(stat_bin)
    
    # Read in example housing data
    housing <- read.csv("Rgraphics\\dataSets\\landdata-states.csv")
    head(housing)
    
    # Plot the housing data on a histogram
    plot2 <- ggplot(data = housing,
                    mapping = aes(x = Home.Value))
    plot2 + geom_histogram()
    
    # Arguments can be passed through geom_...() to stat_...(). args() said geom_histogram() --> stat_bin() --> binwidth().
    plot2 + geom_histogram(stat = "bin",
                           binwidth = 4000)
    
    # Get the mean of Home.Value by State
    housing.sum <- aggregate(x = housing["Home.Value"],
                             by = housing["State"],
                             FUN = mean)
    head(housing.sum)
    
    # Plot mean Home.Value by State (gives error)
    plot2 <- ggplot(data = housing.sum,
                    mapping = aes(x = State,
                                  y = Home.Value))
    plot2 + geom_bar()
    
    # geom_bar() auto-summarizes the x-axis with stat_count. We get error b/c geom_bar() --> stat_count() is trying to summarize data that is already summarized.
    args(geom_bar)
    
    # Stop geom_bar() --> stat_count() from summarizing by changing to geom_bar() --> stat_identity()
    plot2 + geom_bar(stat = "identity")
    
    # Exercise 2
    
    # Create a scatter plot with CPI on the x axis and HDI on the y axis.
    data.econ <- read.csv("Rgraphics\\dataSets\\EconomistData.csv")
    plot2 <- ggplot(data = data.econ,
                    mapping = aes(x = CPI,
                                  y = HDI))
    plot2 + geom_point()
    
    # Overlay a smoothing line on top of the scatter plot using geom_smooth.
    plot2 +
      geom_point() +
      geom_smooth()
    
    # Overlay a smoothing line on top of the scatter plot using geom_smooth, but use a linear model for the predictions.
    args(geom_smooth)  # geom_smooth() --> stat_smooth()
    ?stat_smooth()  # stat_smooth() --> method
    plot2 +
      geom_point() +
      geom_smooth(method = "lm")
    
    # Overlay a smoothing line on top of the scatter plot using geom_line.
    args(geom_line)  # geom_line() --> stat_identity(). Change stat_identity to stat_smooth.
    plot2 +
      geom_point() +
      geom_line(stat = "smooth",
                method = "loess")
    
    # Overlay a smoothing line on top of the scatter plot using the default loess method, but make it less smooth.
    args(geom_smooth)  # geom_smooth() --> stat_smooth()
    ?stat_smooth()  # stat_smooth() --> method_loess()
    ?loess  # method_loess() --> span()
    plot2 +
      geom_point() +
      geom_smooth(span = .4)
    
    # Scales
    
    # Scales are how to specify what aesthetics look like. This can be:
    # Position
    # Color & Fill
    # Size
    # Shape
    # Line Type
    
    # Check out the different scale modification fuctions by hitting tab for each item below
    scale_alpha...
    scale_color...
    scale_fill...
    scale_linetype...
    scale_shape...
    scale_radius
    scale_shape...
    scale_size...
    scale_x...
    scale_y...
    
    # Plot Home Value over time by State
    plot3 <- ggplot(data = housing,
                    mapping = aes(x = State,
                                  y = Home.Price.Index))+
      theme(legend.position = "top",
            axis.text = element_text(size = 6))
    plot4 <- plot3 + geom_point(mapping = aes(color = Date),
                                alpha = 0.5,
                                size = 1.5,
                                position = position_jitter(width = 0.25,
                                                           height = 0))
    plot4
    
    # Add name for x-axis & update color scale
    plot4 +
      scale_x_discrete(name = "State Abbreviation") +
      scale_color_continuous(name = "",
                             breaks = c(1976, 1994, 2013),
                             labels = c("'76", "'94", "'13"))
    
    # Color low = blue & high = red
    plot4 +
      scale_color_continuous(name = "",
                             breaks = c(1976, 1994, 2013),
                             labels = c("'76", "'94", "'13"),
                             low = "blue",
                             high = "red")
    
    # Mute the blue & red colors.
    library(scales)
    plot4 +
      scale_color_continuous(name = "",
                             breaks = c(1976, 1994, 2013),
                             labels = c("'76", "'94", "'13"),
                             low = muted("blue"),
                             high = muted("red"))
    
    # Use a 3-color scheme
    plot4 +
      scale_color_gradient2(name = "",
                            breaks = c(1976, 1994, 2013),
                            labels = c("'76", "'94", "'13"),
                            low = muted("blue"),
                            mid = "gray60",
                            high = muted("red"),
                            midpoint = 1994)
    
    # Exercise 3
    
    # Create a scatter plot with CPI on the x axis and HDI on the y axis. Color the points to indicate region.
    plot4 <- ggplot(data = data.econ,
                    mapping = aes(x = CPI,
                                  y = HDI))
    plot4 +
      geom_point(mapping = aes(color = Region))
    
    # Modify the x, y, and color scales so that they have more easily-understood names (e.g., spell out "Human development Index" instead of "HDI").
    plot4 +
      geom_point(mapping = aes(color = Region)) +
      #  labs(x = "Corruption Perception Index",          # WRONG!
      #       y = "Human Development Index",              # WRONG!
      #       color = "Region")                           # WRONG!
      scale_x_continuous(name = "Corruption Perception Index") +
      scale_y_continuous(name = "Human Development Index") +
      scale_color_discrete(name = "Region of the World")
    
    # Modify the color scale to use specific values of your choosing. Hint: see ?scale_color_manual.
    plot4 <- plot4 +
      geom_point(mapping = aes(color = Region)) +
      scale_x_continuous(name = "Corruption Perception Index") +
      scale_y_continuous(name = "Human Development Index") +
      scale_color_manual(name = "Region of the World",
                         values = c("red", "blue", "yellow", "green", "black", "orchid"))
    plot4
    
    # Faceting
    
    # Plot each State's Home Value by Date.
    plot5 <- ggplot(data = housing,
                    mapping = aes(x = Date,
                                  y = Home.Value))
    plot5 +
      geom_line(mapping = aes(color = State))
    
    # There are too many lines. Graph each individually with facet_wrap().
    plot5 +
      geom_line() +
      facet_wrap(facets = ~State,
                 ncol = 11)
    
    # Graph each state side-by-side with facet_grid().
    plot5 <- plot5 +
      geom_line() +
      facet_grid(facets = . ~ State)
    plot5
    
    # Themes
    
    # theme() handles axis labels, plot background, legend appearence, etc.
    
    # Create plot4 with the built-in themes.
    plot4 + theme_void()
    plot4 + theme_classic()
    plot4 + theme_minimal()
    plot4 + theme_light()
    plot4 + theme_bw()
    plot4 + theme_linedraw()
    plot4 + theme_gray()
    plot4 + theme_dark()
    
    # Create a new theme
    theme_new <- theme_light() +
      theme(plot.background = element_rect(size = 10,  # Border
                                           color = "blue",  # Border
                                           fill = "black"),  # Window background
            text = element_text(size = 12,  # Labels
                                family = "Seriff",  # Labels
                                color = "ivory"),  # Labels
            axis.text.y = element_text(color = "purple"),  # Y-asix tick mark text
            axis.text.x = element_text(color = "red"),  # X-asix tick mark text
            panel.background = element_rect(fill = "pink"),  # Graph background
            strip.background = element_rect(fill = muted("orange")))
    plot4 + theme_new
    plot5 + theme_new
    
    # FAQ
    
    # Map Aesthetic To Different Columns
    housing.byyear <- aggregate(formula = cbind(Home.Value, Land.Value) ~ Date,
                                data = housing,
                                FUN = mean)
    library(tidyr)
    housing.byyear <- gather(data = housing.byyear,
                             value = "value",
                             key = "type",
                             Home.Value, Land.Value)
    ggplot(data = housing.byyear,
           mapping = aes(x = Date,
                         y = value,
                         color = type)) +
      geom_line()
    
    # Create Graph from Economist
    
    # Tasks:
    #   create plot
    #   add a trend line
    #   change the point shape to open circle
    #   change the order and labels of Region
    #   label select points
    #   fix up the tick marks and labels
    #   move color legend to the top
    #   title, label axes, remove legend title
    #   theme the graph with no vertical guides
    #   add model R2 (hard)
    #   add sources note (hard)
    #   final touches to make it perfect (use image editor for this)
    
    # create plot
    dat <- read.csv("Rgraphics\\dataSets\\EconomistData.csv")
    
    pc1 <- ggplot(data = dat,
                  mapping = aes(x = CPI,
                                y = HDI,
                                color = Region))
    pc1 + geom_point()
    
    # Adding the trend line
    pc1 +
      geom_point() +
      geom_smooth(method = lm,
                  formula = y ~ x + log(x),
                  se = F,
                  color = "red")
    
    ## A look at all 25 symbols
    df2 <- data.frame(x = 1:5 , y = 1:25, z = 1:25)
    s <- ggplot(df2, aes(x = x, y = y))
    s + geom_point(aes(shape = z), size = 4) + scale_shape_identity()
    ## While all symbols have a foreground colour, symbols 19-25 also take a
    ## background colour (fill)
    s + geom_point(aes(shape = z), size = 4, colour = "Red") +
      scale_shape_identity()
    s + geom_point(aes(shape = z), size = 4, colour = "Red", fill = "Black") +
      scale_shape_identity()
    
    # Use open points
    pc2 <- pc1 +
      geom_point(shape = 1,
                 size = 2.5,
                 stroke = 1.5) +
      geom_smooth(method = lm,
                  formula = y ~ x + log(x),
                  se = F,
                  color = "red")
    pc2
    
    # Labelling points
    pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                       "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                       "India", "Italy", "China", "South Africa", "Spane",
                       "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                       "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                       "New Zealand", "Singapore")
    pc2 +
      geom_text(data = subset(x = dat,
                              subset = Country %in% pointsToLabel),
                mapping = aes(label = Country),
                color = "grey20")
    pc3 <- pc2 +
      geom_text_repel(data = subset(x = dat,
                                    subset = Country %in% pointsToLabel),
                      mapping = aes(label = Country),
                      color = "grey20",
                      force = 10)
    pc3
    
    # Change the region labels and order
    dat$Region <- factor(x = dat$Region,
                         levels = c("EU W. Europe",
                                    "Americas",
                                    "Asia Pacific",
                                    "East EU Cemt Asia",
                                    "MENA",
                                    "SSA"),
                         labels = c("OECD",
                                    "Americas",
                                    "Asia &\nOceania",
                                    "Central &\nEastern Europe",
                                    "Middle East &\nnorth Africa",
                                    "Sub-Saharan\nAfrica"))
    pc3$data <- dat
    pc3
    
    # Add title and format axes
    pc4 <- pc3 +
      scale_x_continuous(name = "Corruption Perceptions Index, 2011 (10=least corrupt)",
                         limits = c(0.9, 10.5),
                         breaks = 1:10) +
      scale_y_continuous(name = "Human Development Index, 2011 (1=Best)",
                         limits = c(.2, 1),
                         breaks = seq(from = 0.2, to = 1, by = .1)) +
      scale_color_manual(name = "",
                         values = c("#24576D",
                                    "#099DD7",
                                    "#28AADC",
                                    "#248E84",
                                    "#F2583F",
                                    "#96503F")) +
      ggtitle("Corruption and Human Development")
    pc4
    
    # Theme tweaks
    pc4 +
      theme_minimal() +
      theme(text = element_text(color = "grey20"),
            legend.position = "top",
            legend.direction = "horizontal",  # Legend order
            legend.justification = .1,  # move legend left
            legend.text = element_text(size = 11, color = "grey10"),
            axis.text = element_text(face = "italic"),
            axis.title.x = element_text(vjust = -1),  # move title away from axis
            axis.title.y = element_text(vjust = 2),  # move title away from axis
            axis.ticks.y = element_blank(),
            axis.line = element_line(color = "grey40", size = .5),
            axis.line.y = element_blank(),
            panel.grid.major = element_line(color = "grey50", size = 0.5),
            panel.grid.major.x = element_blank())
    
    # Add model R^2 and source note
    mR2 <- summary(lm(HDI ~ CPI + log(CPI), data = dat))
    attributes(mR2)
    mR2 <- mR2$r.squared
    mR2 <- paste0(format(x = mR2 * 100, digits = 2), "%")
    
    # Putting it all together in a final graph
    png(file = "econScatter10.png", width = 800, height = 600)
    econ.plot <- ggplot(data = dat,
                        mapping = aes(x = CPI,
                                      y = HDI)) +
      geom_smooth(mapping = aes(linetype = "r2"),
                  color = "red",
                  method = lm,
                  formula = y ~ x + log(x),
                  se = F) +
      geom_point(mapping = aes(color = Region),
                 shape = 21,
                 size = 4,
                 stroke = 1.5,
                 fill = "white") +
      geom_text_repel(data = subset(x = dat,
                                    subset = Country %in% pointsToLabel),
                      mapping = aes(label = Country),
                      force = 10,
                      color = "grey20") +
      scale_x_continuous(name = "Corruption Perceptions Index, 2011 (10=least corrupt)",
                         limits = c(1, 10),
                         breaks = 1:10) +
      scale_y_continuous(name = "Human Development Index, 2011 (1=Best)",
                         limits = c(.2, 1),
                         breaks = seq(from = .2, to = 1, by = .1)) +
      scale_color_manual(name = "",
                         values = c("#24576D", "#099DD7", "#28AADC", "#248E84", "#F2583F", "#96503F"),
                         guide = guide_legend(nrow = 1)) +
      scale_linetype(name = "",
                     breaks = "r2",
                     labels = list(bquote(R^2 == .(mR2))),
                     guide = guide_legend(override.aes = list(linetype = 1,
                                                              size = 2,
                                                              color = "red"))) +
      ggtitle("Corruption and Human Development") +
      theme_bw() +
      theme(panel.border = element_blank(),
            panel.grid = element_blank(),
            panel.grid.major.y = element_line(color = "grey"),
            axis.line.x = element_line(color = "grey"),
            axis.text = element_text(face = "italic"),
            axis.title = element_text(face = "italic"),
            legend.position = "top",
            legend.direction = "horizontal",
            legend.justification = .1,
            legend.box = "horizontal",
            legend.text = element_text(size = 12),
            plot.title = element_text(size = 16, face = "bold"))
    econ.plot
    dev.off()
    
    
    # EDGE map 
    
    # Setup
    rm(list = ls())
    if ("dplyr" %in% rownames(installed.packages()) == FALSE) {install.packages("dplyr")}
    library(dplyr)
    if ("tibble" %in% rownames(installed.packages()) == FALSE) {install.packages("tibble")}
    library(tibble)
    if ("ggplot2" %in% rownames(installed.packages()) == FALSE) {install.packages("ggplot2")}
    library(ggplot2)
    if ("ggraph" %in% rownames(installed.packages()) == FALSE) {install.packages("ggraph")}
    library(ggraph)
    if ("igraph" %in% rownames(installed.packages()) == FALSE) {install.packages("igraph")}
    library(igraph)
    
    # Examples from ggraph (https://www.data-imaginist.com/2017/ggraph-introduction-edges/)
    simple <- make_graph("bull")
    V(simple)$name <- c("Thomas", "Bob", "Hadley", "Winston", "Baptiste")
    E(simple)$type <- sample(c("Friend", "Foe"), 5, TRUE)
    ggraph(graph = simple,
           layout = "linear",
           circular = TRUE) +
      geom_edge_arc(arrow = arrow(length = unit(4, "mm"))) +
      geom_node_point(size = 5)
    rm(simple)
    
    # Examples from ggraph (https://www.data-imaginist.com/2017/ggraph-introduction-nodes/)
    ggraph(graph = graph_from_data_frame(highschool),
           layout = "kk") +
      geom_node_point()
    
    ggraph(graph = graph_from_data_frame(flare$edges, vertices = flare$vertices),
           layout = "partition") +
      geom_node_tile(mapping = aes(y = -y, fill = depth))
    
    ggraph(graph = graph_from_data_frame(flare$edges, vertices = flare$vertices),
           layout = "dendrogram",
           circular = TRUE) +
      geom_edge_diagonal() +
      geom_node_point(mapping = aes(filter = leaf)) +
      coord_fixed()
    
    ggraph(graph = graph_from_data_frame(highschool),
           layout = "dendrogram",
           circular = TRUE) +
      geom_edge_diagonal() +
      geom_node_point(mapping = aes(filter = leaf)) +
      coord_fixed()
    
    # Examples for igraph & ggraph (https://www.r-graph-gallery.com/309-intro-to-hierarchical-edge-bundling/)
    d1=data.frame(from="origin", to=paste("group", seq(1,10), sep=""))
    d2=data.frame(from=rep(d1$to, each=10), to=paste("subgroup", seq(1,100), sep="_"))
    hierarchy=rbind(d1, d2)
    vertices = data.frame(name = unique(c(as.character(hierarchy$from), as.character(hierarchy$to))))
    plot1 <- graph_from_data_frame(hierarchy, vertices = vertices)
    plot(plot1, vertex.label = "", edge.arrow.size = .05, vertex.size = 2)
    ggraph(plot1, layout = "dendrogram", circular = FALSE) +
      geom_edge_link() +
      theme_void()
    ggraph(plot1, layout = "dendrogram", circular = TRUE) +
      geom_edge_diagonal() +
      theme_void()
    rm(d1, d2, hierarchy, plot1, vertices)
    
    # Graph SDRGCOMP & COMPREAS
    ggraph(graph = graph_reas,
           layout = "linear", circular = TRUE
    ) +
      geom_edge_arc(mapping = aes(#filter = from == match(x = "Blank", table = vec_glib_reas), # func_frame_filter(i),
        color = instances,
        #label = instances,
        width = instances^2,
        alpha = instances
      ),
      arrow = arrow(length = unit(4, "mm")),
      start_cap = circle(8, "mm"),
      end_cap = circle(8, "mm"),
      angle_calc = "along",
      label_dodge = unit(3, "mm"),
      label_colour = "black",
      label_alpha = 1 #* func_frame_alpha(i)
      ) + 
      geom_node_text(mapping = aes(label = name)) +
      scale_edge_width(range = c(.1, 2.5)) +
      scale_edge_alpha(range = c(0.05, #* func_frame_alpha(i),
                                 1 #* func_frame_alpha(i)
      )
      ) +
      scale_edge_color_gradient2(low = "blue", mid = "green", high = "red", midpoint = ((min(dt_reas_heir$instances) + max(dt_reas_heir$instances)) / 2)) +
      theme_void() +
      theme(legend.position = "none") +
      ggtitle("SDRGREAS & COMPREAS")
    
    
    # Draw a png outside of the graph area
    
    # Set up.
    library(ggplot2)=
    # Plot Final AEENDAT, relative to DEATHDAT.
    png(filename = "Images\\01_Final_AEENDAT.png", width = 1024, height = 768, units = "px", bg = "transparent")
    plot <- ggplot(data = filter(dt_dates_b3p, ComparisonType == "DeathVsFinal")) +
      geom_vline(xintercept = 0, color = "red", linetype = "dashed") +
      geom_bar(mapping = aes(x = -DaysFromDeath), color = "grey50", fill = "grey50", na.rm = TRUE) +
      annotation_custom(grob = grid::textGrob(label = "DEATHDAT",
                                              rot = 30,
                                              gp = grid::gpar(col = "firebrick",
                                                              fontsize = 10,
                                                              fontface = "bold")),
                        xmin = 0, xmax = 0, ymin = -17, ymax = -17) +
      annotation_custom(grob = grid::rasterGrob(png_skull), xmin = -12, xmax = 12, ymin = 195, ymax = 219) +
      ggtitle("Days between DEATHDAT and AEENDAT (Final Data Entry)") +
      scale_x_continuous(name = "Days from DEATHDAT to AEENDAT") +
      scale_y_continuous(name = "Number of AE End Dates Entered") +
      theme_classic() +
      theme(plot.title = element_text(face = "bold"),
            axis.title = element_text(face = "italic", size = 12),
            plot.margin = grid::unit(c(.5, .5, .5, .5), units = "cm"),
            plot.background = element_blank(),
            panel.background = element_blank())
    # The next 3 steps below are required to turn off clipping from the graph.
    plot_table <- ggplot_gtable(ggplot_build(plot))
    plot_table$layout$clip <- "off"
    grid.draw(plot_table)
    dev.off()
    
  }
  
  # Section 10.## ggrepel () ----
  # Section 10.## grid () ----
  
  # Drawing Arrows - http://www.sthda.com/english/wiki/ggplot2-line-plot-quick-start-guide-r-software-and-data-visualization
  # Drawing Arrows - https://ggplot2.tidyverse.org/reference/geom_segment.html
  
  # Section 10.## ggraph () ----
  # Section 10.## igraph () ----
  # Section 10.## maps & mapdata () ----
  # Section 10.## ggmap () ----
  
  map_data("state")
  ggmap::get_googlemap(center = c(lon = -87.46201,
                                  lat = 30.38968),
                       zoom = 10,
                       scale = 2,
                       format = "png8",
                       maptype = "sattelite",
                       color = "bw")
  
  # Section 10.11 plotly Package (Interactive Visualization) ----
  
  {
    # https://plot.ly/r/getting-started/
    # https://moderndata.plot.ly/county-level-choropleth-in-plotly-and-r/
    # https://plot.ly/r/bar-charts/
    # https://plot.ly/r/reference/            <-- DO THIS ONE
    # https://plot.ly/r/line-and-scatter/
    
    # https://www.htmlwidgets.org/develop_intro.html
    # https://www.htmlwidgets.org/develop_advanced.html
    
    # Setup ----
    
    rm(list = ls())
    
    vec_packages <- c("dplyr", "lubridate", "ggplot2", "readxl", "tibble", "haven", "tidyr", "plotly", "tourr", "dendextend", "crosstalk", "devtools")
    for(i in 1:length(vec_packages)) {
      if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i])}
      library(vec_packages[i], character.only = TRUE)
    }
    
    # Example 1 ----
    
    plotly::plot_ly(data = midwest,
                    x = ~percollege,
                    color = ~state,
                    type = "box")
    
    # Example 2 ----
    
    library(plotly)
    
    p <- plot_ly(economics,
                 type = "scatter",        # all "scatter" attributes: https://plot.ly/r/reference/#scatter
                 x = ~date,               # more about scatter's "x": /r/reference/#scatter-x
                 y = ~uempmed,            # more about scatter's "y": /r/reference/#scatter-y
                 name = "unemployment",   # more about scatter's "name": /r/reference/#scatter-name
                 marker = list(           # marker is a named list, valid keys: /r/reference/#scatter-marker
                   color="#264E86"        # more about marker's "color" attribute: /r/reference/#scatter-marker-color
                 )) %>%
      
      add_trace(x = ~date,                                         # scatter's "x": /r/reference/#scatter-x
                y = ~fitted(loess(uempmed ~ as.numeric(date))),  # scatter's "y": /r/reference/#scatter-y
                mode = 'lines',                                    # scatter's "y": /r/reference/#scatter-mode
                line = list(                                       # line is a named list, valid keys: /r/reference/#scatter-line
                  color = "#5E88FC",                               # line's "color": /r/reference/#scatter-line-color
                  dash = "dashed"                                  # line's "dash" property: /r/reference/#scatter-line-dash
                )
      ) %>%
      layout(                        # all of layout's properties: /r/reference/#layout
        title = "Unemployment", # layout's title: /r/reference/#layout-title
        xaxis = list(           # layout's xaxis is a named list. List of valid keys: /r/reference/#layout-xaxis
          title = "Time",      # xaxis's title: /r/reference/#layout-xaxis-title
          showgrid = F),       # xaxis's showgrid: /r/reference/#layout-xaxis-showgrid
        yaxis = list(           # layout's yaxis is a named list. List of valid keys: /r/reference/#layout-yaxis
          title = "uidx")     # yaxis's title: /r/reference/#layout-yaxis-title
      )
    p
    
    # ggplot2 --> plotly ----
    
    # Make a plotly graph.
    gg_plot <- plotly::ggplotly(p = gg_plot, tooltip = "text") %>%
      layout(showlegend = FALSE,
             hoverlabel = list(
               bgcolor = "#FCFEFF",
               bordercolor = "black",
               font = list(
                 family = "Calibri",
                 color = "black",
                 size = 12
               )
             )
      ) %>%
      config(displaylogo = FALSE,
             collaborate = FALSE,
             showTips = FALSE,
             modeBarButtonsToRemove = list("toImage", "zoomIn2d", "zoomOut2d", "autoScale2d", "hoverClosestCartesian", "hoverCompareCartesian", "toggleSpikelines"))
    
    # Get click & box select from plotly graph
    
    # Create the displayed table, based on datapoints selected.
    # Here are some websites to explain plotly_selected & plotly_click
    # https://moderndata.plot.ly/county-level-choropleth-in-plotly-and-r/
    # https://plot.ly/r/bar-charts/
    # https://plot.ly/r/reference/
    # https://plot.ly/r/line-and-scatter/
    # https://plot.ly/r/dumbbell-plots/
    # https://plotly-book.cpsievert.me/
    
    out_print1_data <- reactive({
      in_select1 <- event_data("plotly_selected")
      in_click1 <- event_data("plotly_click")
      
      if (!is.null(in_select1)) {
        in_select1 <- unique(in_select1$key)
        
        out_print1_data <- dt_graph()
        out_print1_data <- out_print1_data %>%
          filter(ylabels %in% in_select1) %>%
          select(-ylabels)
        
      } else if (!is.null(in_click1)) {
        in_click1 <- unique(in_click1$key)
        
        out_print1_data <- dt_graph()
        out_print1_data <- out_print1_data %>%
          filter(ylabels %in% in_click1) %>%
          select(-ylabels)
        
      } else {
        out_print1_data <- "Select an Adverse Event"
      }
      
      return(out_print1_data)
    })
    
  }
  
  # Section 10.12 shiny Package (Creating Webpages) ----
  
  {
    # http://shiny.rstudio.com/tutorial/
    # http://shiny.rstudio.com/articles/layout-guide.html
    # http://rstudio.github.io/shiny/tutorial/
    
    # Setup ----
    
    vec_packages <- c("shiny")
    for (i in 1:length(vec_packages)) {
      if (vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i], repos="http://cran.us.r-project.org")}
      library(vec_packages[i], character.only = TRUE)
    }
    
    # App Template ----
    
    library(shiny)
    
    ui <- shiny::fluidPage()
    
    server <- function(input, output, ...) {}
    
    shiny::shinyApp(ui = ui, server = server)
    
    # Explanation on Good Code Structure ----
    
    library(shiny)
    # PUT CODE HERE THAT SHOULD RUN JUST ONCE PER SERVER / R SESSION (e.g., loading the shiny library).
    
    ui <- shiny::fluidPage()
    
    server <- function(input, ouput, ...) {
      # PUT CODE HERE THAT SHOULD RUN ONCE PER USER / CONNECTION.
      
      output$xxxx <- renderPlot({
        # PUT CODE HERE THAT SHOULD RUN WITH EVERY REACTIVE ACTION (e.g., many times per user).
        
      })
    }
    
    shiny::shinyApp(ui = ui, server = server)
    
    # Function List ----
    
    # Input Functions:
    actionButton()
    submitButton()
    checkboxInput()
    checkboxGroupInput()
    dateInput()
    dateRangeInput()
    fileInput()
    numericInput()
    passwordInput()
    radioButtons()
    selectInput()
    sliderInput()
    sliderInput()
    textInput()
    
    # Output Functions:
    dataTableOutput()
    htmlOutput()
    imageOutput()
    plotOutput()
    tableOutput()
    textOutput()  # NOTE: textOutput shows text as-is, without any borders.
    uiOutput()
    verbatimTextOutput()  # NOTE: verbatimTextOutput shows a grey box around output.
    
    # Render Functions:
    renderDataTable()
    renderImage()
    renderPlot()
    renderPrint()  # NOTE: renderPrint shows "\n" verbatim.
    renderTable()
    renderText()  # NOTE: renderText shows "\n" as a newline.
    renderUI()
    
    # Reactive Functions:
    reactiveValues()  # Create reactive values
    observeEvent()  # Trigger some code
    observe()  # Trigger some code. This is usually for outputing things to the console with print().
    reactive()  # Modularize reactions
    isolate()  # Remove reactiveness
    eventReactive()  # Delay reactions
    
    # HTML Static Content Functions:
    tags$h1("1st Level")
    tags$h2("2nd Level")
    tags$h3("3rd Level")
    tags$h4("4th Level")
    tags$h5("5th Level")
    tags$h6("6th Level")
    tags$a(href = "http://www.rstudio.com", "RStudio")r 
    tags$p("Paragraph1")
    tags$p("Paragraph2")
    tags$em("Italicized")
    tags$strong("Bolded")
    tags$code("This looks like code.")
    tags$br()
    tags$hr()
    tags$img
    
    # Layout Functions:
    fluidRow()
    column()
    
    # Panel Functions:
    titlePanel()  # Panel for the app's title.
    pageWithSidebar()
    headerPanel()  # Panel for the app's title.
    pageWithSidebar()
    mainPanel()  # Panel for displaying output.
    pageWithSidebar()
    sidebarPanel()  # Panel for diplaying inputs on a sidebar.
    pageWithSidebar()
    navlistPanel()  # Panel for stacking multiple tabPanel().
    tabPanel()
    navbarMenu( tabPanel(), tabPanel(), ... )
    tabsetPanel()  # Panel for stacking multiple tabPanel().
    tabPanel()
    navbarMenu( tabPanel(), tabPanel(), ... )
    absolutePanel()  # Panel w/ position set rigidly (not fluidly).
    conditionalPanel()  # Panel that is conditionally shown with JavaScript.
    fixedPanel()  # Panel that is fixed with browser window. Does not scroll with page.
    inputPanel()  # Panel w/ grey background for grouping inputs.
    wellPanel()  # Panel w/ grey background.
    sidebarPanel()  # Panel w/ sidebar of inputs.
    tabPanel()  # Used with navlistPanel() or tabsetPanel() for staking panels.
    
    # Page Functions:
    fluidPage()  # Creates a page that resizes with the window.
    fixedPage()  # Creates a page that doesn't resize with the window.
    navbarPage()  # Template for tabsetPanel().
    
    # Other Functions:
    navbarMenu( tabPanel(), tabPanel(), ... )  # Adds a dropdown list for selecting between tabs.
    
    # CREATING THE UI ----
    
    # Example 1 (Simple Text) ----
    
    ui <- shiny::fluidPage("Hello World")
    server <- function(input, ouput, ...) {}
    shiny::shinyApp(ui = ui, server = server)
    
    # Example 2 (Simple Input) ----
    
    ui <- shiny::fluidPage(
      sliderInput(inputId = "num",
                  label = "Choose a number",
                  value = 25, min = 1, max = 100)
    )
    server <- function(input, ouput, ...) {}
    shiny::shinyApp(ui = ui, server = server)
    
    # Example 3 (Inputs) ----
    
    ui <- shiny::fluidPage(
      actionButton(inputId = "action1", label = "Action"),
      submitButton(text = "Submit"),
      checkboxInput(inputId = "check1", label = "Choice A"),
      checkboxGroupInput(inputId = "check2", label = "Checkbox Group", choices = c("One", "Two", "Three")),
      dateInput(inputId = "date1", label = "Date Input"),
      dateRangeInput(inputId = "date2", label = "Date Range"),
      fileInput(inputId = "file1", label = "File Input"),
      numericInput(inputId = "numeric1", label = "Numeric Input", value = NULL),
      passwordInput(inputId = "password1", label = "Password Input"),
      radioButtons(inputId = "radio1", label = "Radio Buttons", choices = c("Choice 1", "Choice 2", "Choice 3")),
      selectInput(inputId = "select1", label = "Select Input", choices = c("Choice 1", "Choice 2", "Choice 3")),
      sliderInput(inputId = "slider1", label = "Slider Input", min = 0, max = 100, value = 0),
      sliderInput(inputId = "slider2", label = "Slider Input", min = 0, max = 100, value = c(0, 10)),
      textInput(inputId = "text1", label = "Text Input")
    )
    server <- function(input, ouput, ...) {}
    shiny::shinyApp(ui = ui, server = server)
    
    # Example 4 (Outputs) ----
    
    ui <- shiny::fluidPage(
      dataTableOutput(outputId = "table1"),
      htmlOutput(outputId = "html1"),
      imageOutput(outputId = "image1"),
      plotOutput(outputId = "plot1"),
      tableOutput(outputId = "table2"),
      textOutput(outputId = "text1"),
      uiOutput(outputId = "ui1"),
      verbatimTextOutput(outputId = "text2")
    )
    server <- function(input, output) {}
    shiny::shinyApp(ui = ui, server = server)
    
    # Example 5 (Inputs & Outputs) ----
    
    ui <- shiny::fluidPage(
      sliderInput(inputId = "slider1",
                  label = "Choose a number:",
                  min = 1, max = 100, value = 25),
      plotOutput(outputId = "plot1")
    )
    server <- function(input, output) {
      output$plot1 <- renderPlot({
        num_slider1 <- input$slider1
        str_title <- paste(as.character(num_slider1), "Random Normal Values")
        hist(rnorm(n = num_slider1), main = str_title)
      })
    }
    shiny::shinyApp(ui = ui, server = server)
    
    # Example 5 (Multiple Inputs & Outputs) ----
    
    ui <- shiny::fluidPage(
      sliderInput(inputId = "slider1", label = "Choose a number:", min = 1, max = 100, value = 25),
      textInput(inputId = "text1", label = "Enter a Title:"),
      plotOutput(outputId = "plot1")
    )
    server <- function(input, output) {
      output$plot1 <- renderPlot({
        hist(rnorm(n = input$slider1), main = input$text1)
      })
    }
    shiny::shinyApp(ui = ui, server = server)
    
    # SPECIFYING REACTIVE TRIGGERS ----
    
    # Example 6 (Use reactive() to Generate Objects for renders) ----
    
    ui <- shiny::fluidPage(
      sliderInput(inputId = "slider1", label = "Choose a value:", min = 1, max = 100, value = 10),
      plotOutput(outputId = "plot1"),
      verbatimTextOutput(outputId = "text1")
    )
    server <- function(input, output) {
      dt_data <- reactive({
        rnorm(n = input$slider1)
      })
      output$plot1 <- renderPlot({
        hist(dt_data())
      })
      output$text1 <- renderPrint({
        summary(dt_data())
      })
    }
    shiny::shinyApp(ui = ui, server = server)
    
    # Example 7 (Stop Auto-Updates for specific elements with isolate()) ----
    
    ui <- shiny::fluidPage(
      textInput(inputId = "in_text1", label = "Enter a Title:"),
      sliderInput(inputId = "in_slider1", label = "Choose a number:", min = 1, max = 100, value = 25),
      plotOutput(outputId = "out_plot1"),
      verbatimTextOutput(outputId = "out_text1")
    )
    server <- function(input, output) {
      dt_data <- reactive({
        rnorm(n = input$in_slider1)
      })
      output$out_plot1 <- renderPlot({
        hist(x = dt_data(),
             main = isolate(input$in_text1))
      })
      output$out_text1 <- renderPrint({
        summary(object = dt_data())
      })
    }
    shiny::shinyApp(ui = ui, server = server)
    
    # Example 8 (Use observeEvent() to make Action Buttons) ----
    
    ui <- shiny::fluidPage(
      textInput(inputId = "in_text1", label = "Enter Something:"),
      actionButton(inputId = "in_button1", label = "Click Me!"),
      verbatimTextOutput(outputId = "out_text1")
    )
    server <- function(input, output) {
      observeEvent(eventExpr = input$in_button1, handlerExpr = {
        output$out_text1 <- renderPrint(isolate(input$in_text1))
      })
    }
    shiny::shinyApp(ui = ui, server = server)
    
    # Example 9 (Use observe() to run actions when values are changed) ----
    
    ui <- shiny::fluidPage(
      actionButton(inputId = "in_button1", label = "Click & Check the Console")
    )
    server <- function(input, output) {
      observe({
        print(input$in_button1)
      })
    }
    shiny::shinyApp(ui = ui, server = server)
    
    # Example 10 (Use eventReactive() to delay actions until something is changed) ----
    
    ui <- shiny::fluidPage(
      textInput(inputId = "in_text1", label = "Enter a Title:"),
      sliderInput(inputId = "in_slider1", label = "Choose a Value:", min = 1, max = 100, value = 25),
      actionButton(inputId = "in_button1", label = "Refresh"),
      plotOutput(outputId = "out_plot1")
    )
    server <- function(input, output) {
      dt_data <- eventReactive(eventExpr = input$in_button1,
                               valueExpr = {
                                 rnorm(input$in_slider1)
                               })
      output$out_plot1 <- renderPlot({
        hist(dt_data(),
             main = isolate(input$in_text1))
      })
    }
    shiny::shinyApp(ui = ui, server = server)
    
    # Example 11 (Use reactiveValues() to save a dataset that will be affected by observeEvent()) ----
    
    ui <- shiny::fluidPage(
      actionButton(inputId = "in_button_norm", label = "Normal Data"),
      actionButton(inputId = "in_button_unif", label = "Uniform Data"),
      plotOutput(outputId = "out_plot1")
    )
    server <- function(input, output) {
      reactive_values <- reactiveValues(dt_data = rnorm(1000))
      
      observeEvent(eventExpr = input$in_button_norm, handlerExpr = {reactive_values$dt_data <- rnorm(1000)})
      observeEvent(eventExpr = input$in_button_unif, handlerExpr = {reactive_values$dt_data <- runif(1000)})
      
      output$out_plot1 <- renderPlot({
        hist(reactive_values$dt_data)
      })
    }
    shiny::shinyApp(ui = ui, server = server)
    
    # DESIGNING THE UI
    
    # Going Over HTML tags / functions ----
    
    # Look at all tags that can be added into a website.
    names(tags)
    tags$a
    tags$a(href = "www.rstudio.com", "RStudio")
    
    # Example 12 (Build a webpage with static HTML tags through R) ----
    ui <- shiny::fluidPage(
      tags$h1("1st Level"),
      tags$h2("2nd Level"),
      tags$h3("3rd Level"),
      tags$h4("4th Level"),
      tags$h5("5th Level"),
      tags$h6("6th Level"),
      tags$a(href = "http://www.rstudio.com", "RStudio"),
      tags$p("Paragraph1"),
      tags$p("Paragraph2"),
      tags$em("Italicized"),
      tags$strong("Bolded"),
      tags$code("This looks like code."),
      tags$br(),
      tags$hr(),
      tags$img(height = 64, width = 182, src = "http://www.rstudio.com/images/RStudio.2x.png")
    )
    server <- function(...) {}
    shiny::shinyApp(ui = ui, server = server)
    
    # NOTE: To save your own images, save a folder "www" and save images in there. Then just use tags$img(src = "filename.png").
    
    # Example 13 (Build a webpage by specifying all static elements in HTML) ----
    ui <- shiny::fluidPage(
      HTML('<div class="container-fluid">
           <h1>My Shiny App</h1>
           <p style="font-family:Impact">
           See other apps in the
           <a href="http://www.rstudio.com/products/shiny/shiny-user-showcase/">Shiny Showcase</a>
           </p>
           </div>'
      )
    )
    server <- function(...) {}
    shiny::shinyApp(ui = ui, server = server)
    
    # Example 14 (Build a webpage and design the layout with fluidRow() and column()) ----
    
    # NOTE: The max width of a page is 12. Make sure combined widths and offsets don't go over 12.
    #       Height adjusts automatically.
    
    ui <- shiny::fluidPage(
      fluidRow(
        column(width = 3,
               style = "border-style:solid;border-color:red",
               "Area 1"),
        column(width = 5,
               style = "border-style:dotted;border-color:blue",
               "Area 2")
      ),
      fluidRow(
        column(width = 4, 
               offset = 8,
               style = "border-style:dashed;border-color:green",
               "Area 3")
      )
    )
    server <- function(...) {}
    shiny::shinyApp(ui = ui, server = server)
    
    # Example 15 (Use panels to group elements together) ----
    
    ui <- fluidPage(
      wellPanel(
        textInput(inputId = "in_text1", label = "Enter a title:"),
        sliderInput(inputId = "in_slider1", label = "Choose a number:", min = 1, max = 100, value = 25)
      ),
      plotOutput(outputId = "out_plot1")
    )
    server <- function(input, output) {
      output$out_plot1 <- renderPlot({
        hist(rnorm(input$in_slider1),
             main = input$in_text1)
      })
    }
    shinyApp(ui = ui, server = server)
    
    # Example 16 (Use tabsetPanel() and tabPanel() to create multiple layers in a UI) ----
    
    ui <- fluidPage(
      tabsetPanel(
        tabPanel(title = "Tab 1",
                 "Text for Tab 1."),
        tabPanel(title = "Tab 2",
                 "This be the 2nd tab."),
        tabPanel(title = "Tab 3",
                 "Here lies tab 3.")
      )
    )
    server <- function(input, output) {}
    shinyApp(ui = ui, server = server)
    
    # Example 17 (Use navlistPanel() and tabPanel() to create multiple layers in a UI) ----
    
    ui <- fluidPage(
      navlistPanel(
        tabPanel(title = "Tab 1",
                 "You're reading the text for Tab 1."),
        tabPanel(title = "Tab 2",
                 "This is the text for Tab 2!"),
        tabPanel(title = "Tab 3",
                 "Tab 3 is filled with text, too!")
      )
    )
    server <- function(input, output) {}
    shinyApp(ui, server)
    
    # Example 18 (Make an app with the pre-made sidebarLayout() template) ----
    
    ui <- fluidPage(
      sidebarLayout(
        sidebarPanel = sidebarPanel(
          sliderInput(inputId = "in_slider1", label = "Choose a number:", min = 1, max = 100, value = 25)
        ),
        mainPanel = mainPanel(
          plotOutput(outputId = "out_plot1")
        )
      )
    )
    server <- function(input, output) {
      output$out_plot1 <- renderPlot({hist(rnorm(input$in_slider1))})
    }
    shinyApp(ui, server)
    
    # Example 19 (Use fixedPage() and fixedRow() to make a fixed page app. This page layout is NOT very useful.) ----
    
    ui <- fixedPage(
      fixedRow()
    )
    server <- function() {}
    shinyApp(ui, server)
    
    # Example 20 (Make an app with the pre-made navbarPage() template) ----
    
    ui <- navbarPage(
      title = "Pre-made navbarPage",
      tabPanel(title = "Tab 1",
               "Content 1!"),
      tabPanel(title = "Tab 2",
               "Here's content 2!"),
      tabPanel(title = "Tab 3",
               "Text for tab 3 goes here!")
    )
    server <- function(...) {}
    shinyApp(ui, server)
    
    # Example 21 (Use navbarMenu() to create a dropdown menu for tabs) ----
    
    ui <- fluidPage(
      tabsetPanel(
        tabPanel(title = "Tab 1",
                 "Here's the text for Tab 1."),
        navbarMenu(title = "Other Tabs",
                   tabPanel(title = "Tab 2",
                            "You know what's up - Tab 2 time!"),
                   tabPanel(title = "Tab 3",
                            "The time of the Tab 3 has come!"))
      )
    )
    server <- function(...) {}
    shinyApp(ui, server)  
  }
  
  # Section 10.13 shinythemes Package (Pre-Made Color Schemes for Shiny Webpages) ----
  
  # This selection is PENDING completion.
  
  # Section 10.14 shinydashboard Package (Pre-Made Layouts for Shiny Webpages) ----
  
  # This selection is PENDING completion.
  
  # Section 10.15 odbc Package (Connect to Databases) ----
  
  # https://db.rstudio.com/odbc/
  # https://rviews.rstudio.com/2017/10/18/database-queries-with-r/
  
  # Setup
  
  rm(list = ls())
  
  vec_packages <- c("odbc", "dplyr", "tidyr", "writexl", "rstudioapi")
  for(i in 1:length(vec_packages)) {
    if(vec_packages[i] %in% rownames(installed.packages()) == FALSE) {install.packages(vec_packages[i])}
    library(vec_packages[i], character.only = TRUE)
  }
  rm(vec_packages)
  
  # Connect to the Database & Pull SQL
  
  conn_database <- DBI::dbConnect(drv = odbc::odbc(),
                                  Driver = "SQL Server",
                                  Server = "SJBIOSQLDEVN01"
                                  #Database = "CDM_Metrics",
                                  #UID = "",
                                  #PWD = "",
                                  #PWD = rstudioapi::askForPassword("Database Password"),
                                  #Port = 1433
  )
  
  dt_sqlresult <- DBI::dbGetQuery(conn = conn_database,
                                  statement = "select
                                  TABLE_SCHEMA + '.' +  TABLE_NAME schema_table,
                                  COLUMN_NAME col_nam
                                  from
                                  INFORMATION_SCHEMA.COLUMNS
                                  where
                                  substring(TABLE_NAME, 1, 5) = 'Rave_'
                                  order by
                                  TABLE_SCHEMA, TABLE_NAME, ORDINAL_POSITION;"
  )
  # NOTE: "dbGetQuery" is the same as using the 3 queries below:
  # query <- dbSendQuery(conn = connection, statement = "select * from dbo.Rave_ProdStudies")
  # results <- dbFetch(res = query, n = -1)
  # dbClearResult(query)
  
  DBI::dbDisconnect(conn = conn_database)
  
  
  
  
  
  # Failed attempts at using RODBC
  
  #library(RODBC)
  #channel <- RODBC::odbcDriverConnect("")
  #RODBC::odbcConnect(dsn = "")
  #dbconnection <- odbcDriverConnect("Driver=ODBC Driver 11 for SQL Server;Server=SJBIOSQLDEVN01; Database=SJBIOSQLDEVN01;Uid=; Pwd=; trusted_connection=yes")
  #dbconnection <- odbcDriverConnect("Driver={SQL Server};Server=localhost\\SJBIOSQLDEVN01;Database=SJBIOSQLDEVN01;Server=CDM_Metrics;Uid=;Pwd=Eragon33#;trusted_connection=yes")
  
  # Section 10.16 purrr Package (Automation) ----
  
  # This selection is PENDING completion.
  
  # Section 10.16 data.table Package (Advanced Data Manipulation) ----
  
  # This selection is PENDING completion.
  
  # Section 10.17 knirt & rmarkdown Packages (Generating Interactive Reports) ----
  
  # NOTE: RMarkdown must be implemented through an .Rmd file.
  #       The reference material for RMarkdown is in GitHub.
  
}
