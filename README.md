
Liste des fichiers :
 - player.rb : gère la création des joueurs
 - board_case.rb : gère la création d'une case de la grille board
 - board.rb : gère la création de la grille du morpion
 - game.rb : exécute le déroulement d'une partie
 - show.rb : gère l'aspect visuel de la grille du morpion
 - application.rb : déroulement du jeu au complet
 - app.rb : lance le programme

Ce que le jeu fait :

1) Il demande le nom des deux joueurs
2) Il tire au hasard celui qui commence puis alterne celui qui commence sur chaque partie suivante
3) Affiche la grille du morpion et offre le choix des cases 1 à 9, avec indication des cases disponibles (Si une mauvaise valeur est entrée, le prompt re-propose de rentrer des coordonnées valides)
4) La partie se termine dès qu'un des deux joueurs aligne 3 symboles ou, le cas échéant, se termine en draw s'il n'y a plus de cases disponibles
5) A la fin d'une partie :
 - Mets à jour le compteur des parties gagnées si nécessaire
 - demande si l'utilisateur veut continuer de jouer auquel cas une nouvelle partie se lance (avec inversion de la première personne qui commence la partie)