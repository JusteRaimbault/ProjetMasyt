
popNanterre <- read.table('/Users/Juste/Documents/Cours/MASYT/Project/Data/DataCSV/PopulationAgeNanterre.csv',sep=",")

cspNanterre <- read.table('/Users/Juste/Documents/Cours/MASYT/Project/Data/DataCSV/PopCSPNanterre.csv',sep=",")

cspIDF <- read.table('/Users/Juste/Documents/Cours/MASYT/Project/Data/DataCSV/PopCSP.csv',sep=",")

cspZone <- read.table('/Users/Juste/Documents/Cours/MASYT/Project/Data/DataCSV/PopCSPProjet.csv',sep=",")


#pie of CSP

names <- c(
  "Artisans, commerçants\net chefs d’entreprise",
  "Cadres et professions\nintellectuelles supérieures",
  "Professions intermédiaires",
   "Employés",
  "Ouvriers",
  "Retraités",
      "Autres personnes sans\nactivité professionnelle"
           )
cols <- c(
  "green","yellow","red","orange","purple",
  "darkblue","darkgrey"
  )

for(i in 1:length(cspIDF[,1])){for(j in 1:length(cspIDF[1,])){if(is.na(cspIDF[i,j])){cspIDF[i,j]=0}}}

pie(mapply(sum,cspZone[,13:19]),
    labels=names,col=cols,radius=2,
    main="Catégories socio-professionelles, Zone Projet")



#graph of evolution of CSP

cspEvol <- read.table('/Users/Juste/Documents/Cours/MASYT/Project/Data/DataCSV/CSPEvolutionNanterre.csv',sep=";")


