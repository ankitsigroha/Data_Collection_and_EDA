#importing the library
library(twitteR)
#running the library
#credentials for twitter developer account
Consumer_key <- "Consumer_key"
Consumer_secret <- "Consumer_secret"
Access_token <- "Access_token"
Access_secret <- "Access_secret"
#setting up twitter and R
setup_twitter_oauth (Consumer_key,Consumer_secret,Access_token,Access_secret)
#searching for tweets
stags<- " #gunban | #gunviolence | #gunlaws " #various terms
stweets <- searchTwitter(stags,n=10000)
head(stweets)
# converting to Data Frames
df <- twListToDF(stweets)
stweets
#Creating Data Frames
df <- twListToDF(stweets)
#Getting the header details
head(df)
#expoting as CSV file
write.csv(df,file = "twitterList.csv")
