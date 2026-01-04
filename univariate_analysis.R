
# ============================================================
# Univariate Analysis Script
# Dataset: student_clean12.csv
# ============================================================

# Load packages
library(knitr)
library(ggplot2)
library(dplyr)

# Global chunk options
knitr::opts_chunk$set(
  echo = TRUE,
  message = FALSE,
  warning = FALSE,
  fig.align = "center",
  fig.width = 6,
  fig.height = 4
)

# ggplot theme
theme_set(theme_minimal())
### 2.2 Working Directory

setwd("C:/Users/GODWIN TETTEH/Documents/Statistical Computing Project group G/data")
getwd()
list.files()

# Load data
data <- read.csv("student_clean12.csv")

# -------------------------------
# G1 – First Period Grade
# -------------------------------
summary(data$G1)
sd(data$G1)

ggplot(data, aes(x = G1)) +
  geom_histogram(binwidth = 1, fill = "steelblue", color = "black") +
  labs(title = "Distribution of G1", x = "G1", y = "Frequency")

# -------------------------------
# G2 – Second Period Grade
# -------------------------------
summary(data$G2)
sd(data$G2)

ggplot(data, aes(x = G2)) +
  geom_histogram(binwidth = 1, fill = "darkorange", color = "black") +
  labs(title = "Distribution of G2", x = "G2", y = "Frequency")

# -------------------------------
# G3 – Final Grade
# -------------------------------
summary(data$G3)
sd(data$G3)

ggplot(data, aes(x = G3)) +
  geom_histogram(binwidth = 1, fill = "forestgreen", color = "black") +
  labs(title = "Distribution of G3", x = "G3", y = "Frequency")

# -------------------------------
# studytime – Ordinal
# -------------------------------
table(data$studytime)
prop.table(table(data$studytime))

ggplot(data, aes(x = factor(studytime))) +
  geom_bar(fill = "purple") +
  labs(title = "Weekly Study Time", x = "Study Time Level", y = "Count")

# -------------------------------
# failures – Discrete
# -------------------------------
summary(data$failures)

ggplot(data, aes(x = failures)) +
  geom_bar(fill = "brown") +
  labs(title = "Past Class Failures", x = "Failures", y = "Count")

# -------------------------------
# absences – Discrete
# -------------------------------
summary(data$absences)

ggplot(data, aes(y = absences)) +
  geom_boxplot(fill = "lightblue") +
  labs(title = "Absences", y = "Number of Absences")

# -------------------------------
# Medu – Ordinal
# -------------------------------
table(data$Medu)

ggplot(data, aes(x = factor(Medu))) +
  geom_bar(fill = "darkcyan") +
  labs(title = "Mother's Education Level", x = "Education Level", y = "Count")

# -------------------------------
# Fedu – Ordinal
# -------------------------------
table(data$Fedu)

ggplot(data, aes(x = factor(Fedu))) +
  geom_bar(fill = "darkred") +
  labs(title = "Father's Education Level", x = "Education Level", y = "Count")

# -------------------------------
# goout – Ordinal
# -------------------------------
table(data$goout)

ggplot(data, aes(x = factor(goout))) +
  geom_bar(fill = "goldenrod") +
  labs(title = "Going Out with Friends", x = "Frequency Level", y = "Count")

# -------------------------------
# freetime – Ordinal
# -------------------------------
table(data$freetime)

ggplot(data, aes(x = factor(freetime))) +
  geom_bar(fill = "slateblue") +
  labs(title = "Free Time After School", x = "Free Time Level", y = "Count")

# -------------------------------
# Walc – Ordinal
# -------------------------------
table(data$Walc)

ggplot(data, aes(x = factor(Walc))) +
  geom_bar(fill = "firebrick") +
  labs(title = "Weekend Alcohol Consumption", x = "Consumption Level", y = "Count")

# -------------------------------
# internet – Nominal
# -------------------------------
table(data$internet)
prop.table(table(data$internet))

ggplot(data, aes(x = internet)) +
  geom_bar(fill = "darkgreen") +
  labs(title = "Internet Access at Home", x = "Internet Access", y = "Count")
