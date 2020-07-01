pacman::p_load(
  tidyverse,
  here,
  viridis,
  bayesplot,
  scam,
  patchwork
)
color_scheme_set("viridis")

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


# Figure 3
d1a <- read_csv(here("data","Fig4_data.csv"))

Fig3 <- ggplot(d1a) +
  geom_smooth(aes(trial,AccuracyP, color = condition), 
              method = "scam", 
              formula = y ~ s(x, k = 5, bs = "mpi"), 
              se = T) +
  stat_smooth(aes(trial,Accuracy, color = condition,group = subject), geom='line', alpha=0.3, method = "scam", 
              formula = y ~ s(x, k = 5, bs = "mpi"), 
              se = F) +
  facet_wrap(.~session) +
  ylab("Performance in the first 32 trials") +
  theme_classic()

## Figure 4 
dd <- read_csv(here("data","Fig3_data.csv"))

Fig4 <- ggplot(dd) + 
  geom_smooth(aes(session, Accuracy1, color = condition), method = "scam", 
              formula = y ~ s(x, k = 4, bs = "mpd"), 
              se = T) +
  geom_line(aes(session, Accuracy1, group=subject, color = condition), alpha=0.2) + 
  scale_x_continuous(breaks=c(1, 2, 3)) + 
  ylab("Test Performance") +
  theme_classic()


# Figure 5
FinalData <- read_csv(here("data", "Fig5_data.csv"))

p1 <- ggplot(FinalData,
             aes(SemanticDiversity, PerformanceTraining)) +
  geom_point() + geom_smooth(method=lm) + theme_classic()
p2 <- ggplot(FinalData, 
             aes(SemanticDiversity, PerformanceTest)) + 
  geom_point() + geom_smooth(method=lm) + theme_classic()

p3 <- ggplot(FinalData, 
             aes(SemanticDiversity, PerformanceTraining, color=Session, group=Session)) +
  geom_point() + geom_smooth(method=lm) + theme_classic()
p4 <- ggplot(FinalData, 
             aes(SemanticDiversity, PerformanceTest, color=Session, group=Session)) + 
  geom_point() + geom_smooth(method=lm) + theme_classic()

Fig5 <- (p1 + p3) / (p2 + p4)
