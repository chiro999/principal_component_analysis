# Load necessary libraries
library(ggplot2)
library(dplyr)

# Load the mtcars dataset
data(mtcars)
X <- mtcars[, c("mpg", "disp", "hp", "wt", "qsec")]

# Perform PCA
pca_result <- prcomp(X, scale = TRUE)

# Transform the data to the lower-dimensional space
X_pca <- as.data.frame(pca_result$x)

# Create histograms for each principal component
ggplot(X_pca, aes(x = PC1)) +
  geom_histogram(binwidth = 1, fill = "blue", alpha = 0.5) +
  labs(title = "Histogram of PCA Transformed Data (PC1)",
       x = "Principal Component 1", y = "Frequency") +
  theme_minimal()

ggplot(X_pca, aes(x = PC2)) +
  geom_histogram(binwidth = 1, fill = "green", alpha = 0.5) +
  labs(title = "Histogram of PCA Transformed Data (PC2)",
       x = "Principal Component 2", y = "Frequency") +
  theme_minimal()
