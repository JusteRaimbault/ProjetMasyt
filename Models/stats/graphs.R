
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





#distribtuion of generalized costs in TC model evolution
overlay <- read.table("/Users/Juste/Documents/Cours/MASYT/Project/Data/ModeleTC/overlaynodes.csv",sep=",")
costs = overlay[,31]
hist(costs,breaks=100)

par <- read.table("/Users/Juste/Documents/Cours/MASYT/Project/Results/Algo/Pareto/res.csv",sep=";", header=TRUE)
plot(par$x, par$y, xlim=c(0,0.4),ylim=c(0,0.4),xlab="Economic Segregation",ylab="Distance to activities")



