# Load the libraries
import pandas as pd # for handling data frames

# define url to the Iris data set
url = "https://gist.githubusercontent.com/curran/a08a1080b88344b0c8a7/raw/d546eaee765268bf2f487608c537c05e22e4b221/iris.csv"

# collect the data from the url
data = pd.read_csv(url)

# save data to csv
data.to_csv("/shared_vol/iris.csv", index = False)
