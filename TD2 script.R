TRAVAUX DIRIGES 2


#1. Charger le jeu de données decathlon2 disponible sur la librairie "FactoMineR" 
library("FactoMineR")



data(decathlon)


#2. Les données actives sont composées des 6 premières variables sur les 23 premiers individus. Définir les données actives nommées decathlon2.active et aficher les premières lignes
de cette base de données active.

 decathlon_active=decathlon[1:23,1:6]
 head(decathlon_active)




#3. En se basant sur la question précédente. Le reste des individus et des variables sont respectivement les indivisus et les variables supplémentaires. Calculer l'ACP en y rajoutant
les variables et les individus illustratives.

res_acp1 <- PCA(decathlon, quanti.sup=11:12, quali.sup=13)
 




#4.Afficher les valeurs propres et faire leur représentation graphique. Interpréter le résultat.

library(factoextra)

eig_val=get_eigenvalue(res_acp1)
 eig_val


fviz_eig(res_acp1, addlabels=TRUE,ylim=c(0,80))


#5. Affcher les résultats de l'ACP sur les variables actives. Combien de composantes Principales choisir ?

 res_acp=PCA(decathlon_active,graph=FALSE,)
 print(res_acp)
 

#6. Tracer le cercle de corrélation sur les variables.
 fviz_pca_var(res_acp,col.var="black")




#7. Représenter la contribution des variables sur les CP.

 fviz_contrib(res_acp, choice="var", axes=1:2)



#8. Faire le graphe de la qualité de représentation des variables sur les deux premières axes.
Interpréter.

fviz_cos2(res_acp, choice="var", axes=1:2)



#9. Représenter le graphe des individus. Y rajouter les variables illustratives. Interpréter

fviz_pca_biplot(res_acp1,col.var="black")
