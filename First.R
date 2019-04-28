#importing the library
library(twitteR)
#running the library
#credentials for twitter developer account
Consumer_key <- "Your_key"
Consumer_secret <- "Your_secret_key"
Access_token <- "Token_seq"
Access_secret <- "Token_access"
#setting up twitter and R
setup_twitter_oauth (Consumer_key,Consumer_secret,Access_token,Access_secret)
#searching for tweets
stags<- " #gunban | #gunviolence | #gunlaws " #various terms
stweets <- searchTwitter(stags,n=1000)
head(stweets)
# converting to Data Frames
df <- twListToDF(stweets)
stweets
df <- twListToDF(stweets)
head(df)
#expoting as CSV file
write.csv(df,file = "twitterList.csv")
