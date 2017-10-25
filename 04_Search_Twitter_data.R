### October 2017
### E. Zagheni

#### 
## SEARCH FOR RECENT TWEETS
## using the REST API
####

library(ROAuth)
library(twitteR)
## insert here your API key and secret

api_key<- "COPY YOUR API KEY HERE"
api_secret<- "COPY YOUR API SECRET HERE"
access_token<- "COPY YOUR ACCESS TOKEN HERE"
access_token_secret<- "COPY YOUR ACCESS TOKEN SECRET HERE"

setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)



## search for tweets that mention Delta or American Airlines
tweets_delta <- searchTwitter("@delta", n=500)
tweets_AA<- searchTwitter("@AmericanAir", n=500)
#transform your data into a data frame 
data_delta<- twListToDF(tweets_delta)
data_AA<- twListToDF(tweets_AA)

head(data_delta)


#write the data to disk 
write.csv(data_delta,"data/data_delta.csv")
write.csv(data_AA,"data/data_AA.csv")



## check your rate limit
## if you download more than Twitter allows you to, you will be blocked...
getCurRateLimitInfo()
## 
