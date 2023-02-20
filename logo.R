dagilim1 <- rnorm(n = 3000, mean = 2, sd = 0.3)
dagilim2 <- rnorm(n = 1000, mean = 8, sd = 1)
dagilim3 <- rnorm(n = 1000, mean = 6, sd = 1.3)

sim <- data.frame(
  dagilim = c(dagilim1, dagilim2, dagilim3), 
  seviye = c(
    rep("dagilim1", 3000), 
    rep("dagilim2", 1000),
    rep("dagilim3", 1000)
  )
)

library(ggplot2)

p <- ggplot(data = sim, aes(x=dagilim)) + 
  geom_density(aes(fill = seviye), alpha = 0.7) +
  theme_transparent() + theme_void() + theme(legend.position = "none")

s<-sticker(subplot = p, 
           h_fill="darkgray",
           h_color = "#3EA94C",
           package = "ybva", p_color = "black",
           s_width=1.3, 
           s_height=1.3, 
           s_x=1, 
           s_y=1, 
           p_x = 1.2, 
           p_y = 1.2,
           p_size = 10)

s

