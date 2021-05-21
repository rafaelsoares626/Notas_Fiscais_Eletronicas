# 01 - IMPORTANDO AS NOTAS FISCAIS ELETRONICAS
#Antes de proceder à importação, deve-se seguir os seguintes passos:

#1 - Abra um arquivo .ods em branco;
#2 - Digite um X maiúsculo na linha 1, coluna 1;
#3 - Acesse o portal da NFe (página da consulta através da chave);
#4 - Digite a chave e acesse a NFe;
#5 - Vá na aba "Preparar documento para impressão";
#6 - Selecione toda a página (ctrl + A, no caso de arquivo .ods);
#7 - Vá na planilha .ods e, logo abaixo do X maiúsculo, dê um colar especial -> texto não formatado;
#8 - Para cada NFe acessada, deve-se proceder da forma supramencionada, colando-se os novos dados na linha imediatamente posterior à do último dado da última nota colada na planilha.

setwd("C:/Users/rafae/Desktop/RAFAEL/CEAT/TELETRABALHO - QUARENTENA 2021/06")
df <- readODS::read_ods("Tratar_NFe_R.ods")

# CRIANDO UMA TABELA PARA ARMAZENAR OS DADOS TRATADOS
# Criando um vetor de tres posições
vetor <- 1:43

# Criando uma matriz através do vetor
A <- matrix(vetor, 1, 43)

# Transformando a matriz  em data frame
dfNFe <- as.data.frame(A)

# Inicializando a matriz
dfNFe$V1 <- NA
dfNFe$V2 <- NA
dfNFe$V3 <- NA
dfNFe$V4 <- NA
dfNFe$V5 <- NA
dfNFe$V6 <- NA
dfNFe$V7 <- NA
dfNFe$V8 <- NA
dfNFe$V9 <- NA
dfNFe$V10 <- NA
dfNFe$V11 <- NA
dfNFe$V12 <- NA
dfNFe$V13 <- NA
dfNFe$V14 <- NA
dfNFe$V15 <- NA
dfNFe$V16 <- NA
dfNFe$V17 <- NA
dfNFe$V18 <- NA
dfNFe$V19 <- NA
dfNFe$V20 <- NA
dfNFe$V21 <- NA
dfNFe$V22 <- NA
dfNFe$V23 <- NA
dfNFe$V24 <- NA
dfNFe$V25 <- NA
dfNFe$V26 <- NA
dfNFe$V27 <- NA
dfNFe$V28 <- NA
dfNFe$V29 <- NA
dfNFe$V30 <- NA
dfNFe$V31 <- NA
dfNFe$V32 <- NA
dfNFe$V33 <- NA
dfNFe$V34 <- NA
dfNFe$V35 <- NA
dfNFe$V36 <- NA
dfNFe$V37 <- NA
dfNFe$V38 <- NA
dfNFe$V39 <- NA
dfNFe$V40 <- NA
dfNFe$V41 <- NA
dfNFe$V42 <- NA
dfNFe$V43 <- NA

# Inserindo os títulos do data frame
titulo <- names(dfNFe)
titulo[(names(dfNFe) == "V1")] = "Chave de Acesso"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V2")] = "Número NF-e"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V3")] = "Data de Emissão"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V4")] = "Data/Hora de Saída ou da Entrada"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V5")] = "Valor Total da Nota Fiscal"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V6")] = "Destino da operação"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V7")] = "Consumidor final"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V8")] = "Natureza da Operação"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V9")] = "Tipo da Operação"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V10")] = "Autorização de Uso"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V11")] = "Nome / Razão Social Emitente"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V12")] = "Nome Fantasia Emitente"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V13")] = "CNPJ Emitente"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V14")] = "Endereço Emitente"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V15")] = "Bairro / Distrito Emitente"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V16")] = "CEP Emitente"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V17")] = "Município Emitente"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V18")] = "Telefone Emitente"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V19")] = "UF Emitente"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V20")] = "País Emitente"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V21")] = "Nome / Razão Social Destinatário"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V22")] = "CNPJ Destinatário"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V23")] = "Endereço Destinatário"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V24")] = "Bairro / Distrito Destinatário"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V25")] = "CEP Destinatário"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V26")] = "Município Destinatário"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V27")] = "Telefone Destinatário"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V28")] = "UF Destinatário"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V29")] = "País Destinatário"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V30")] = "Num."
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V31")] = "Descrição"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V32")] = "Qtd."
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V33")] = "Unidade Comercial"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V34")] = "Valor(R$)"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V35")] = "Código do Produto"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V36")] = "Código NCM"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V37")] = "CFOP"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V38")] = "Código EAN Comercial"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V39")] = "Valor unitário de comercialização"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V40")] = "Informações adicionais do produto"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V41")] = "posChave_Acesso"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V42")] = "posDados_Emitente"
colnames(dfNFe) = titulo
titulo[(names(dfNFe) == "V43")] = "posDados_Destinatario"
colnames(dfNFe) = titulo

library(dplyr)

# Preenchimento da coluna Chave de Acesso
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Chave de Acesso") == TRUE){
    dfNFe$`Chave de Acesso`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
    dfNFe$posChave_Acesso[contadorDfNFe] <- contadorPrincipal
    contadorDfNFe <- contadorDfNFe + 1
    # Já inserindo uma nova linha para eventual repetição do laço
    novaLinha <- data.frame(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA)
    names(novaLinha) <- titulo
    dfNFe <- rbind(dfNFe, novaLinha) 
  }
  contadorPrincipal <- contadorPrincipal + 1
}

#Apagando a última linha em branco
#qtdLinhas <- nrow(dfNFe)
#dfNFe<-dfNFe[(-qtdLinhas),]

# Preenchimento da coluna Número NF-e
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Número NF-e") == TRUE){
    dfNFe$`Número NF-e`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
    contadorDfNFe <- contadorDfNFe + 1
  }
  contadorPrincipal <- contadorPrincipal + 1
}
    
# Preenchimento da coluna Data de Emissão
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Data de Emissão") == TRUE){
    dfNFe$`Data de Emissão`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
    contadorDfNFe <- contadorDfNFe + 1
  }
  contadorPrincipal <- contadorPrincipal + 1
}      

# Preenchimento da coluna Data/Hora de Saída ou da Entrada
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Data/Hora de Saída ou da Entrada") == TRUE){
    dfNFe$`Data/Hora de Saída ou da Entrada`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
    contadorDfNFe <- contadorDfNFe + 1
  }
  contadorPrincipal <- contadorPrincipal + 1
}      

# Preenchimento da coluna Valor Total da Nota Fiscal
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Valor Total da Nota Fiscal") == TRUE){
    dfNFe$`Valor Total da Nota Fiscal`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
    contadorDfNFe <- contadorDfNFe + 1
  }
  contadorPrincipal <- contadorPrincipal + 1
}      

# Preenchimento da coluna Destino da operação
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Destino da operação") == TRUE){
    dfNFe$`Destino da operação`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
    contadorDfNFe <- contadorDfNFe + 1
  }
  contadorPrincipal <- contadorPrincipal + 1
}      

# Preenchimento da coluna Consumidor final
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Consumidor final") == TRUE){
    dfNFe$`Consumidor final`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
    contadorDfNFe <- contadorDfNFe + 1
  }
  contadorPrincipal <- contadorPrincipal + 1
}      

# Preenchimento da coluna Natureza da Operação
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Natureza da Operação") == TRUE){
    dfNFe$`Natureza da Operação`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
    contadorDfNFe <- contadorDfNFe + 1
  }
  contadorPrincipal <- contadorPrincipal + 1
}      

# Preenchimento da coluna Tipo da Operação
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Tipo da Operação") == TRUE){
    dfNFe$`Tipo da Operação`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
    contadorDfNFe <- contadorDfNFe + 1
  }
  contadorPrincipal <- contadorPrincipal + 1
}      

# Preenchimento da coluna Autorização de Uso
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Autorização de Uso") == TRUE){
    dfNFe$`Autorização de Uso`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
    contadorDfNFe <- contadorDfNFe + 1
  }
  contadorPrincipal <- contadorPrincipal + 1
}      
# DADOS DO EMITENTE ##############################################
# Preenchimento da coluna Nome / Razão Social Emitente
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Nome / Razão Social") == TRUE & (df$X[contadorPrincipal + 1] == "Nome Fantasia") == FALSE){
    if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal - 1] == "Dados do Emitente") == TRUE){
      dfNFe$`Nome / Razão Social Emitente`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      dfNFe$posDados_Emitente[contadorDfNFe] <- contadorPrincipal - 1
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`Nome / Razão Social Emitente`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
}      

# Preenchimento da coluna Nome Fantasia Emitente
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Nome Fantasia") == TRUE & (df$X[contadorPrincipal + 1] == "CNPJ") == FALSE){
    dfNFe$`Nome Fantasia Emitente`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
    contadorDfNFe <- contadorDfNFe + 1
  }else{
    dfNFe$`Nome Fantasia Emitente`[contadorDfNFe] <- NA
  }
  contadorPrincipal <- contadorPrincipal + 1
}      


# Preenchimento da coluna CNPJ Emitente
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "CNPJ") == TRUE & (df$X[contadorPrincipal + 1] == "Endereço") == FALSE){
    if(is.na(dfNFe$posDados_Emitente[contadorDfNFe])){
      dfNFe$`CNPJ Emitente`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Emitente[contadorDfNFe + 1]) | (dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`CNPJ Emitente`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`CNPJ Emitente`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
}      

# Preenchimento da coluna Endereço Emitente
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Endereço") == TRUE & (df$X[contadorPrincipal + 1] == "Bairro / Distrito") == FALSE){
    if(is.na(dfNFe$posDados_Emitente[contadorDfNFe])){
      dfNFe$`Endereço Emitente`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Emitente[contadorDfNFe + 1]) | (dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`Endereço Emitente`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`Endereço Emitente`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
} 

# Preenchimento da coluna Bairro / Distrito Emitente
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Bairro / Distrito") == TRUE & (df$X[contadorPrincipal + 1] == "CEP") == FALSE){
    if(is.na(dfNFe$posDados_Emitente[contadorDfNFe])){
      dfNFe$`Bairro / Distrito Emitente`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Emitente[contadorDfNFe + 1]) | (dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`Bairro / Distrito Emitente`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`Bairro / Distrito Emitente`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
} 

# Preenchimento da coluna CEP Emitente
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "CEP") == TRUE & (df$X[contadorPrincipal + 1] == "Município") == FALSE){
    if(is.na(dfNFe$posDados_Emitente[contadorDfNFe])){
      dfNFe$`CEP Emitente`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Emitente[contadorDfNFe + 1]) | (dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`CEP Emitente`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`CEP Emitente`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
} 

# Preenchimento da coluna Município Emitente
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Município") == TRUE & (df$X[contadorPrincipal + 1] == "Telefone") == FALSE){
    if(is.na(dfNFe$posDados_Emitente[contadorDfNFe])){
      dfNFe$`Município Emitente`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Emitente[contadorDfNFe + 1]) | (dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`Município Emitente`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`Município Emitente`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
} 

# Preenchimento da coluna Telefone Emitente
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Telefone") == TRUE & (df$X[contadorPrincipal + 1] == "UF") == FALSE){
    if(is.na(dfNFe$posDados_Emitente[contadorDfNFe])){
      dfNFe$`Telefone Emitente`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Emitente[contadorDfNFe + 1]) | (dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`Telefone Emitente`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`Telefone Emitente`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
} 


# Preenchimento da coluna UF Emitente
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "UF") == TRUE & (df$X[contadorPrincipal + 1] == "País") == FALSE){
    if(is.na(dfNFe$posDados_Emitente[contadorDfNFe])){
      dfNFe$`UF Emitente`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Emitente[contadorDfNFe + 1]) | (dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`UF Emitente`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`UF Emitente`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
} 


# Preenchimento da coluna País Emitente
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "País") == TRUE & (df$X[contadorPrincipal + 1] == "Inscrição Estadual") == FALSE){
    if(is.na(dfNFe$posDados_Emitente[contadorDfNFe])){
      dfNFe$`País Emitente`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Emitente[contadorDfNFe + 1]) | (dfNFe$posDados_Emitente[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`País Emitente`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`País Emitente`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
} 

# DADOS DO DESTINATÁRIO ##############################################
# Preenchimento da coluna Nome / Razão Social Destinatário
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Nome / Razão Social") == TRUE & (df$X[contadorPrincipal + 1] == "CNPJ") == FALSE){
    if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal - 1] == "Dados do Destinatário") == TRUE){
      dfNFe$`Nome / Razão Social Destinatário`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      dfNFe$posDados_Destinatario[contadorDfNFe] <- contadorPrincipal - 1
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`Nome / Razão Social Destinatário`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
}      

# Preenchimento da coluna CNPJ Destinatário
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "CNPJ") == TRUE & (df$X[contadorPrincipal + 1] == "Endereço") == FALSE){
    if(is.na(dfNFe$posDados_Destinatario[contadorDfNFe])){
      dfNFe$`CNPJ Destinatário`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Destinatario[contadorDfNFe + 1]) | (dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`CNPJ Destinatário`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`CNPJ Destinatário`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
}      

# Preenchimento da coluna Endereço Destinatário
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Endereço") == TRUE & (df$X[contadorPrincipal + 1] == "Bairro / Distrito") == FALSE){
    if(is.na(dfNFe$posDados_Destinatario[contadorDfNFe])){
      dfNFe$`Endereço Destinatário`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Destinatario[contadorDfNFe + 1]) | (dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`Endereço Destinatário`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`Endereço Destinatário`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
} 

# Preenchimento da coluna Bairro / Distrito Destinatário
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Bairro / Distrito") == TRUE & (df$X[contadorPrincipal + 1] == "CEP") == FALSE){
    if(is.na(dfNFe$posDados_Destinatario[contadorDfNFe])){
      dfNFe$`Bairro / Distrito Destinatário`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Destinatario[contadorDfNFe + 1]) | (dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`Bairro / Distrito Destinatário`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`Bairro / Distrito Destinatário`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
} 

# Preenchimento da coluna CEP Destinatário
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "CEP") == TRUE & (df$X[contadorPrincipal + 1] == "Município") == FALSE){
    if(is.na(dfNFe$posDados_Destinatario[contadorDfNFe])){
      dfNFe$`CEP Destinatário`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Destinatario[contadorDfNFe + 1]) | (dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`CEP Destinatário`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`CEP Destinatário`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
} 

# Preenchimento da coluna Município Destinatário
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Município") == TRUE & (df$X[contadorPrincipal + 1] == "Telefone") == FALSE){
    if(is.na(dfNFe$posDados_Destinatario[contadorDfNFe])){
      dfNFe$`Município Destinatário`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Destinatario[contadorDfNFe + 1]) | (dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`Município Destinatário`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`Município Destinatário`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
} 

# Preenchimento da coluna Telefone Destinatário
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "Telefone") == TRUE & (df$X[contadorPrincipal + 1] == "UF") == FALSE){
    if(is.na(dfNFe$posDados_Destinatario[contadorDfNFe])){
      dfNFe$`Telefone Destinatário`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Destinatario[contadorDfNFe + 1]) | (dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`Telefone Destinatário`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`Telefone Destinatário`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
} 

# Preenchimento da coluna UF Destinatário
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "UF") == TRUE & (df$X[contadorPrincipal + 1] == "País") == FALSE){
    if(is.na(dfNFe$posDados_Destinatario[contadorDfNFe])){
      dfNFe$`UF Destinatário`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Destinatario[contadorDfNFe + 1]) | (dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`UF Destinatário`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`UF Destinatário`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
} 

# Preenchimento da coluna País Destinatário
contadorPrincipal <- 1
contadorDfNFe <- 1
qtdLinhas <- nrow(df)
# Preenchendo a coluna do novo data frame
while(contadorPrincipal <= qtdLinhas){
  if(!is.na(df$X[contadorPrincipal]) & (df$X[contadorPrincipal] == "País") == TRUE & (df$X[contadorPrincipal + 1] == "Indicador IE") == FALSE){
    if(is.na(dfNFe$posDados_Destinatario[contadorDfNFe])){
      dfNFe$`País Destinatário`[contadorDfNFe] <- NA
    }else if((dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal &  contadorPrincipal < dfNFe$posDados_Destinatario[contadorDfNFe + 1]) | (dfNFe$posDados_Destinatario[contadorDfNFe] <= contadorPrincipal & contadorDfNFe == nrow(dfNFe) - 1)){
      dfNFe$`País Destinatário`[contadorDfNFe] <- df$X[contadorPrincipal + 1]
      contadorDfNFe <- contadorDfNFe + 1
    }else{
      dfNFe$`País Destinatário`[contadorDfNFe] <- NA
    }
  }
  contadorPrincipal <- contadorPrincipal + 1
} 

