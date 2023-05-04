library(DataExplorer)
library(inspectdf)
library(dplyr)
credit_data <- read.csv("GermanCredit.csv", sep = ";")

summary(credit_data)
# Check number of rows and columns
n_rows <- nrow(credit_data)
n_cols <- ncol(credit_data)
cat("Number of rows: ", n_rows, "\n")
cat("Number of columns: ", n_cols, "\n\n")

# Check data types of each column
str(credit_data)
cat("\n")

# Check for missing values
cat("Missing values:\n")
sapply(credit_data, function(x) sum(is.na(x)))
cat("\n")

# Check for duplicate rows
cat("Duplicate rows: ", anyDuplicated(credit_data), "\n\n")

#Histogram of frequency for every variable 
par(mfrow=c(7,5)) # set up the layout of the plots
for (i in 1:32) {
  hist(credit_data[,i], main=colnames(credit_data)[i], xlab="", col="lightblue")
}

# create a function to identify binary variables
is_binary <- function(x) {
  if(is.numeric(x)) {
    if(length(unique(x)) == 2) {
      return(TRUE)
    }
  }
  return(FALSE)
}

# apply the function to each column in your dataframe
binary_vars <- sapply(credit_data, is_binary)

# display the binary variables
binary_vars

# Create a data frame with the information
variables <- data.frame(
  VarNo = 1:31,
  VariableName = c(
    "OBS#", "CHK_ACCT", "DURATION", "HISTORY", "NEW_CAR",
    "USED_CAR", "FURNITURE", "RADIO/TV", "EDUCATION",
    "RETRAINING", "AMOUNT", "SAV_ACCT", "EMPLOYMENT",
    "INSTALL_RATE", "MALE_DIV", "MALE_SINGLE",
    "MALE_MAR_WID", "CO-APPLICANT", "GUARANTOR",
    "PRESENT_RESIDENT", "REAL_ESTATE", "PROP_UNKN_NONE",
    "AGE", "OTHER_INSTALL", "RENT", "OWN_RES",
    "NUM_CREDITS", "JOB", "NUM_DEPENDENTS", "TELEPHONE",
    "FOREIGN"
  ),
  Description = c(
    "Observation No.", "Checking account status", "Duration of credit in months",
    "Credit history", "Purpose of credit: new car", "Purpose of credit: used car",
    "Purpose of credit: furniture/equipment", "Purpose of credit: radio/television",
    "Purpose of credit: education", "Purpose of credit: retraining",
    "Credit amount", "Average balance in savings account",
    "Present employment since", "Installment rate as % of disposable income",
    "Applicant is male and divorced", "Applicant is male and single",
    "Applicant is male and married or a widower", "Application has a co-applicant",
    "Applicant has a guarantor", "Present resident since - years",
    "Applicant owns real estate", "Applicant owns no property (or unknown)",
    "Age in years", "Applicant has other installment plan credit",
    "Applicant rents", "Applicant owns residence", "Number of existing credits at this bank",
    "Nature of job", "Number of people for whom liable to provide maintenance",
    "Applicant has phone in his or her name", "Foreign worker"
  ),
  VariableType = c(
    "Categorical", "Categorical", "Numerical", "Categorical", "Binary", "Binary", "Binary", "Binary",
    "Binary", "Binary", "Numerical", "Categorical", "Categorical", "Numerical", "Binary", "Binary",
    "Binary", "Binary", "Binary", "Categorical", "Binary", "Binary", "Numerical", "Binary", "Binary",
    "Binary", "Numerical", "Categorical", "Numerical", "Binary", "Binary"
  ),
  Details = c(
    " ", "0: < 0 DM\n1: 0 < ... < 200 DM\n2: >= 200 DM\n3: no checking account", " ",
    "0: no credits taken\n1: all credits at this bank paid back duly\n2: existing credits paid back duly till now\n3: delay in paying off in the past\n4: critical account",
    "0: No, 1: Yes", "0: No, 1: Yes", "0: No, 1: Yes", "0: No, 1: Yes", "0: No, 1: Yes",
    "0: No, 1: Yes", " ", "0: < 100 DM\n1: 100 <= ... < 500 DM\n2: 500 <= ... < 1000 DM\n3: >= 1000 DM\n4:)


```{r echo=FALSE, warning=FALSE, message=FALSE}
| Var. | Variable Name | Description | Variable Type | Description   
|------:|--------------|------------------------------------------|---------------|----------------------------------------------------------------------|
|     1 | OBS         | Observation No.                           | Categorical   |                                                                      |
|     2 | CHK_ACCT     | Checking account status                   | Categorical   | 0 : < 0 DM<br>1 : 0 < · · · < 200 DM<br>2 : ≥ 200 DM<br>3 : no checking account |
|     3 | DURATION     | Duration of credit in months               | Numerical     |                                                                      |
|     4 | HISTORY      | Credit history                             | Categorical   | 0 : no credits taken<br>1 : all credits at this bank paid back duly<br>2 : existing credits paid back duly till now<br>3 : delay in paying off in the past<br>4 : critical account |
|     5 | NEW_CAR      | Purpose of credit (Binary) car (new)       | Binary        | 0 : No, 1 : Yes                                                      |
|     6 | USED_CAR     | Purpose of credit (Binary) car (used)      | Binary        | 0 : No, 1 : Yes                                                      |
|     7 | FURNITURE    | Purpose of credit (Binary) furniture/equip | Binary        | 0 : No, 1 : Yes                                                      |
|     8 | RADIO/TV     | Purpose of credit (Binary) radio/television| Binary        | 0 : No, 1 : Yes                                                      |
|     9 | EDUCATION    | Purpose of credit (Binary) education       | Binary        | 0 : No, 1 : Yes                                                      |
|    10 | RETRAINING   | Purpose of credit (Binary) retraining     | Binary        | 0 : No, 1 : Yes                                                      |
|    11 | AMOUNT       | Credit amount                              | Numerical     |                                                                      |
|    12 | SAV_ACCT     | Average balance in savings account         | Categorical   | 0 : < 100 DM<br>1 : 100 ≤ · · · < 500 DM<br>2 : 500 ≤ · · · < 1000 DM<br>3 : ≥ 1000 DM<br>4 : unknown/no savings account |
|    13 | EMPLOYMENT   | Present employment since                   | Categorical   | 0 : unemployed<br>1 : < 1 year<br>2 : 1 ≤ · · · < 4 years<br>3 : 4 ≤ · · · < 7 years<br>4 : ≥ 7 years |
|    14 | INSTALL_RATE | Installment rate as % of disposable income | Numerical     |                                                                      |
|    15 | MALE_DIV     | Applicant is male and divorced             | Binary        | 0 : No, 1 : Yes                                                      |
|    16 | MALE_SINGLE | Applicant is male and single               | Binary        | 0 : No, 1 : Yes                                                      |
|    17 | MALE_MAR_WID | Applicant is male and married or a widower | Binary        | 0 : No, 1 : Yes                                                      |
|    18 | CO-APPLICANT | Application has a co-applicant             | Binary        | 0 : No, 1 : Yes                                                      |
|    19 | GUARANTOR    | Applicant has a guarantor                  | Binary        | 0 : No, 1

#JRV PAS JE VAIS CABLER 
````

correlation <- pointbiserial.test(credit_data$MALE_SINGLE, credit_data$AGE)
correlation