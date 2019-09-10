library(tidyselect)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(x = abb, y = rate)) +
  geom_bar(width = 0.5, stat = "identity", col = "black") +
  coord_flip()

ggsave("figs/barplot.png")