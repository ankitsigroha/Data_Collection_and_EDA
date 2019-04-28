#importing the library
library(twitteR)
#running the library
#credentials for twitter developer account
Consumer_key <- "NQgs8ciSjGRV8ZyClS5Vukq49"
Consumer_secret <- "JsNB04hTCjkX7dbyXOro4Dy06YJVBhaBhKUF4lbhgVYECMCo1U"
Access_token <- "502525358-4ZWiUlmW5L3f6jbc6qieEv9cNnmIqkg9mxH1w6E0"
Access_secret <- "fMSrpie99B8iyIl5YvPJuSQbLDy5dIpGptbUO4px5JR2h"
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
