btc <- jsonlite::fromJSON("https://www.reddit.com/r/memes/.json")
btc2 <- jsonlite::fromJSON("https://www.reddit.com/r/StardustCrusaders/.json")
df1 <- btc$data$children$data
df2 <- btc2$data$children$data
new1 = df1[, c('ups', 'title', 'subreddit', 'url')]
new2 = df1[, c('ups', 'title', 'subreddit', 'url')]
alldata <- rbind(new1, new2)
alldatasorted <- alldata[order(-alldata$ups), ]
