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

install.packages(c("RColorBrewer"))
library(RColorBrewer)
colors <- brewer.pal(4, "Set1")
colors[1]
pal <- colorRampPalette(colors)
pal(5)
plot(1:20, 1:20, col=pal(10))
display.brewer.all()


plot_troops <- ggplot(troops, aes(long, lat)) +
    geom_path(aes(size = survivors, color = direction, group = group))

plot_both <- troops_plot + geom_text(aes(label = city), size = 4, data = cities)

plot_polished <- both +
    scale_size(to = c(1, 10), breaks = c(1, 2, 3) * 10^5,
               labels = comma(c(1, 2, 3) * 10^5)) +
    scale_color_manual(values = c("grey50","red")) +
    xlab(NULL) + ylab(NULL)
