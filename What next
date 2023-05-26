04/05/2023 : 

Finishing the logistic regression. I want to focus now on another model. Model to try out : 
- Decision Trees
- Random Forest
- Support Vector Machines
- Neural Networks
- k-Nearest Neighbors

Meeting du 05.05
on doit utiliser tous les modèles
on veut lui montrer qu'on a essayé toutes les pistes et on a choisit la meilleure
les clients connaissent les modèles; lorsqu'il est le client il connaît la base de statistique

Questions:
Caret peut nous faire la recherche des meilleures paramètres (pour random forest, etc...)
Faut faire gaffe parce que les données ne sont pas équilibrées
caret sampling: !!!down!!!: on va le pousser à choisir un peu plus des mauvais clients pour avoir un meilleur équilibre entre les 2
Table de classification: ce qu'on regarde c'est le pourcentage correct, mais c'est biaisé parce qu'on ne regarde pas les faux positifs et faux négatifs: il faut faire attention (sensibilité, spécificité)
Analyse de sensibilisé à faire
Lui dire quelles sont les variables les plus importantes --> business context à améliorer

Soit on sélectionne les variables importantes dès le début, et on garde les plus pertinentes puis on fait tous les modèles
Soit on prend tout, et il fait une analyse de chaque modèle différent, puis on fait une métaananalyse de l'ensemble des modèles et on prend les variables qui nous intéresse le plus

Pas de stratégie globale en stratégi!!
Méthode dépend de la tâche à résoudre et des données / variables: les 2 méthodes sont bonnes / mauvais 

Ce qu'on a fait du statut martial c'est bon! (les grouper c'est ok)


Les modèles à faire : 
- LDA
- QDA
- CART (Classification and regression tree)
- Neural Network
- Suppport Vector (polynomial kernel,  radial kernel
- Boosting
- Extreme Gradiant Boosting

Modèle à améliorer:
- Logistic regression 
. Random Forest

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

Meeting du 26.05
On va devoir faire du down-sampling plutôt que tu up-sampling

CV, CM, même chose pour tous les modèles ... caret choisit automatiquement tous les bons paramètres!
Il faut regarder le graph: partie droite s'améliore et ça vaut le coup d'aller plus loin
C'est un bon départ! 

Ensuite, on veut éviter de donner les crédits à de mauvais clients (sensitivité plutôt que spécificité ou inverse, à voir comment on a codé le reste)
Il ne faut pas seulement regarder l'accuracy!!

Enlever les variables pas pertinentes: dès le début ou à chaque modèle (méthodes en elles-mêmes qui vont épurer) différences minimes entre les 2 méthodes

XGBoost: normal que ça prenne du temps
Tout le monde dit que ça marche bien, mais c'est pas certain que ça marche de ouf

Bagging: Random Forest, en parallèle (composite)
Boosting: En série, étape par étape où on améliore le résultat

Présentation (20min): 
présentation du problème
analyse exploratoire
passer par tout les modèles (tableau pour tout résumer)
pas trop de graphs
c'est le modèle X qui nous donne la meilleure sensitivité / spécificité
dire ce qu'on pourrait faire pour aller plus loin
