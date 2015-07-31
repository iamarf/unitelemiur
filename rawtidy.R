rawtidy <- function(){
  library(dplyr)
  dm1 <- read.csv("master-I-iscritti", sep = "\t", header = TRUE, skip = 3)
  dm2 <- read.csv("master-II-iscritti", sep = "\t", header = TRUE, skip = 3)
  dp <- read.csv("perfezionamento-iscritti", sep = "\t", header = TRUE, skip = 3)
  ddm1 <- select(dm1, Totale)
  ddm2 <- select(dm2, Totale)
  ddp <- select(dp[4:16,], Totale)
  plot(ddm1[,1], type = "l", col = "red", xaxt = "n", xlab = "A.A.", ylab = "", main = "Numero iscritti")
  lines(ddp[,1], col = "green")
  axis(1, at=1:13, labels = labels(ddm1)[[1]])
  legend('bottomright', c("Master I livello", "Corso di perfezionamento"), lty = 1, col = c("red", "green"), bty = 'n', cex = .75)
}
