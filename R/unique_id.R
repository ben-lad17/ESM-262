###############################################
### Unique ID  ###

# Description: Given a data frame, returns variable(s) that uniquely identify each row of data.
# If no set of variables uniquely defines each row, returns "no unique identifier found".
#
# Inputs:
#   df: data frame
# 
# Output: name of the variable(s) in the data frame that uniquely define each row
###############################################

### define function ###
unique_id = function(df) {
  # Get all column names
  cols = colnames(df)
  
  # 1) Check if any single column uniquely identifies rows
  for (col in cols) {
    if (nrow(df) == length(unique(df[[col]]))) {
      warning("This is the first unique identifier found. To test for others, 
             change order of variables
"
              ) # error checking
      return(col)
    }
  }
  
  # 2) If no single column uniquely identifies each row, check combinations of columns
  for (k in 2:length(cols)) {
    combs <- combn(cols, k, simplify = FALSE)
    for (comb in combs) {
      if (nrow(df) == nrow(unique(df[comb]))) {
        warning("This is the first unique identifier found. To test for others, 
             change order of variables
"
        ) # error checking
        return(comb)  # Return the first unique column combination found
      }
    }
  }
  
  return("No unique identifier found")  # no unique identifier found
}



### comment for git demo