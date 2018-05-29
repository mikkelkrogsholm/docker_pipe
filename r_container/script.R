library(ggplot2)

# read in the data from the shared folder
data <- readr::read_csv("/shared_vol/iris.csv")

# run the cluster algorithm
iris_cluster <- kmeans(data[, 3:4], 3, nstart = 20)

# add cluster to data set
data$cluster <- as.factor(iris_cluster$cluster)

# create the plot
gg <- ggplot(data, aes(petal_length, petal_width, color = cluster)) +
  geom_point() +
  labs(y = "Petal width", x = "Petal length",
       title = "Plot of clusters in the Iris data set") +
  theme_minimal()

# save the plot
ggsave(filename = "/shared_vol/cluster_plot.pdf", plot = gg)
