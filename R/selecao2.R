selecao2 <- function(data,CID){
  tmp <- data
  selecao1 <- grep(tmp$CAUSABAS,pattern = CID)
  banco_selecao<- tmp[selecao1,]
  return(banco_selecao)
  remove(tmp,selecao1)
}
