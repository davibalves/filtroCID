#' Selecao de codigos CID/SIM
#'
#' @param data a data.frame.
#' @param CID a CID code.
#' @return filter rows from a microdatasus of SIM and return a \code{data} by \code{cid}.
#' @examples
#' meus_dados <-selecao(data=banco,CID='I50')
#' meus_dados2 <-selecao(banco,CID='I21')
#' meus_dados3 <-selecao(banco,CID = c("I0[5-8]|I091|I3[4-9]|Q2[2-3]|T820|T822|T826|Z95"))

selecao <- function(data,CID){
  tmp <- data
  selecao1 <- grep(tmp$CAUSABAS,pattern = CID)
  banco_selecao<- tmp[selecao1,]
  return(banco_selecao)
  remove(tmp,selecao1)
}


