# filtroCID
    
    
    
remotes::install_github('davibalves/filtroCID')


library(microdatasus)    
library(filtroCID)

banco<-fetch_datasus(year_start = 2000,year_end = 2000,uf = 'AC',information_system = "SIM-DO")


meus_dados <-selecao(data=banco,CID='I50')

meus_dados2 <-selecao(banco,CID='I21')

meus_dados3 <-selecao(banco,CID = c("I0[5-8]|I091|I3[4-9]|Q2[2-3]|
