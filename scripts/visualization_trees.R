library(tidyverse)
library(ggtree)
library(treeio)

# See: https://yulab-smu.top/treedata-book/chapter7.html


my_tree <- read.beast('../output/my_pandemic_geo.mcc')


######## Most basic tree format
ggplot(my_tree, aes(x, y)) + geom_tree() + theme_tree()
## Shorter equivalent:
ggtree(my_tree)

my_tree %>%
  ggplot(aes(x, y)) +
  geom_tree(color = 'gray30') +
  geom_tippoint(aes(colour = location)) +
  #geom_nodepoint(aes(colour = location)) +
  scale_color_manual(name = 'Location', values = RColorBrewer::brewer.pal(12, 'Paired')) +
  theme_tree2()
