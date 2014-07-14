plot(1:20, 1:20, col=c(rep(c("blue", "red"), 10)))
plot(1:20, 1:20, col=1:20, pch=1:20)
for(i in 5:10) {
    abline(a=2*i, b=0, lty=i)
}
legend("bottomright", legend=paste("line", 1:5), lty=5:10)


## multiple graphs in one plot
op <- par(mfrow = c(1,2))
plot(1:20, 1:20, col=c(rep(c("blue", "red"), 10)))
plot(1:20, 1:20, col=1:20, pch=1:20)
for(i in 5:10) {
    abline(a=2*i, b=0, lty=i)
}
legend("bottomright", legend=paste("line", 1:5), lty=5:10)
par(op)

## save your graph to a file
pdf("myplot.pdf")
#
# your plotting code here
#
dev.off()

## use brewer palette
install.packages(c("RColorBrewer"))
library(RColorBrewer)
colors <- brewer.pal(4, "Set1")
colors[1]
pal <- colorRampPalette(colors)
pal(5)
plot(1:20, 1:20, col=pal(10))
display.brewer.all()

## ggplot2 stuff

diamonds <- diamonds[sample(nrow(diamonds), 1000), ]
diamonds$cut <- factor(diamonds$cut,
         levels = c("Ideal", "Very Good", "Fair", "Good", "Premium"))

# Repeat first example with new order
p <- ggplot(diamonds, aes(carat, price)) +
        geom_point()
p + facet_grid(. ~ cut)
p + facet_grid(color ~ cut)

## reproduce Minard graph
library(scales)
library(ggplot2)
cities <- read.table(url("http://www.weiwang.name/teaching/minard-cities.txt"), header=T) 
troops <- read.table(url("http://www.weiwang.name/teaching/minard-troops.txt"), header=T) 
plot_troops <- ggplot(troops, aes(long, lat)) +
    geom_path(aes(size = survivors, color = direction, group = group))

plot_both <- plot_troops + geom_text(aes(label = city), size = 4, data = cities)

plot_polished <- plot_both + 
  scale_size(
    breaks = c(1, 2, 3) * 10^5, labels = comma(c(1, 2, 3) * 10^5)) + 
  scale_colour_manual(values = c("grey50","red")) +
  xlab(NULL) + 
  ylab(NULL)
