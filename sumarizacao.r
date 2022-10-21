source('extracao.r')
source('faxina.r')

dados <- le_dados('streaming.csv')
dados <- limpa_dados(dados)


calcula_taxa_cancelamento <- function(){
    return(mean(dados$cancelou)*100)
}

calcula_satisfacao_media <- function(){
    return(mean(dados$satisfacao))
}

calcula_tempo_medio <- function(){
    return(mean(dados$tempo))
}


funcao_toda_errada <- function(){}