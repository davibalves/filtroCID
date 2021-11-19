#' Selecao de codigos CID/SIM
#'
#' @param data a data.frame object from microdatasus.
#' @param CID a CID code. isso e codigo CID de interesse. Suporta expressoes regulares. Para selecao de mais de um codigo e necessario separar por Barras.
#' @return filter rows from a microdatasus of SIM and return a \code{data} by \code{cid}.
#' @references https://tutoriaisdadosunirio.netlify.app/ and https://www.scielo.br/j/csp/a/gdJXqcrW5PPDHX8rwPDYL7F/?lang=pt
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


