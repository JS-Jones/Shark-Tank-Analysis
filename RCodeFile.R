deals <- table(Sharktank$deal)
deals
pie(deals,main="The Distribution of Deal Success")

category <- table(Sharktank$category)
category
barplot(category,xlab="Type of Deal",ylab="Frequency",main="Frequency of Business Categrories")

t1 <- table(Sharktank$deal, Sharktank$category)
t1

barplot(prop.table(t1,margin =2), main = "Shark Tank by Deals")

t2 <-  table(Sharktank$category, Sharktank$deal)
t2

dealtest <- chisq.test(t2, correct= FALSE)
dealtest$expected

dealtest$residuals^2

dealtest
