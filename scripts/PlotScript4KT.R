## Figure 2

dd <- read_csv(here("data","Fig2_data.csv"))

Fig2 <- ggplot(dd) + 
  geom_smooth(aes(session, Accuracy1, color = condition), method = "scam", 
              formula = y ~ s(x, k = 8, bs = "mpd"), 
              se = T) +
  geom_line(aes(session, Accuracy2, group=subject, color = condition), alpha=0.3) + 
  scale_x_continuous(breaks=c(1, 2, 3)) + 
  ylab("Training Performance") + 
  theme_classic()

## Figure 3 
dd <- read_csv(here("data","Fig3_data.csv"))

Fig3 <- ggplot(dd) + 
  geom_smooth(aes(session, Accuracy1, color = condition), method = "scam", 
              formula = y ~ s(x, k = 4, bs = "mpd"), 
              se = T) +
  geom_line(aes(session, Accuracy1, group=subject, color = condition), alpha=0.2) + 
  scale_x_continuous(breaks=c(1, 2, 3)) + 
  ylab("Test Performance") +
  theme_classic()