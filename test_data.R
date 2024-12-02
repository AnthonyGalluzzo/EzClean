library(EzClean)
testData1 <- data.frame(
  Name = c("John", "Jane", "Jim", NA),
  Age = c(25, 50, NA, 28),
  Score = c(82, 85, 90, 88)
)

data_clean <- remove_na(testData1)

testData2 <-  data.frame(
  Name = c("John", "Jane", "Jim", "Jim"),
  Age = c(25, 50, 28, 28),
  Score = c(82, 85, 90, 90)
)

data_clean2 <- remove_duplicates(testData2)

testData3 <- data.frame(
  Name = c("Emma", "Kai", "Eric", "Erin"),
  Age = c(21, 20, 22, 19),
  Score = c(88, 90, 95 , NA)
)

data_clean3 <- impute_missing(testData3)
