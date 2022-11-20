---@meta

---@class map
map = {}

---Méthode permettant de changer de carte.
---@param direction string @Direction à prendre.
--- - "left" = gauche
--- - "right" = droite
--- - "top" = haut
--- - "bottom" = bas
--- - "havenbag" = Entrer/sortir dans/de l'havre sac
--- - Il est possible de renseigner la cellule sur laquelle le déplacement doit-être effectué : map:changeMap("right(100)")
---@return boolean # true = Changement de carte réussi. false = Changement de carte échoué.
function map:changeMap(direction) end

---Méthode permettant de déplacer le personnage sur une cellule en particulier.
---@param cellId integer @Cellule sur laquelle le personnage doit se déplacer.
---@return boolean # true = déplacement réussi false = déplacement échoué
function map:moveToCell(cellId) end

---Méthode permettant d'utiliser un élément interactif.
---@param cellId integer @Cellule où se situe l'élément interactif à utiliser
function map:door(cellId) end

---Méthode permettant d'utiliser un élément interactif présent sur la carte, en précisant l'élément de réponse.
---@param elementId integer @Identifiant de l'élément.
---@param reply integer @Identifiant de la réponse. *Correspond à l'index si négatif.*
---@return boolean # true = Si l'utilisation a réussi. false = Si l'utilisation a échoué.
function map:useById(elementId, reply) end

---Méthode permettant de sauvegarder le Zaap présent sur la carte.
function map:saveZaap() end

---Méthode permettant d'agresser un joueur sur la carte.
---@param minLevel integer @Niveau minimum de la cible.
---@param maxLevel integer @Niveau maximum de la cible.
---@param delay integer @Temps d'attente avant l'agression (en ms).
function map:aggression(minLevel, maxLevel, delay) end

---Méthode permettant de vérifier si le personnage est présent sur la carte ciblée.
---@param mapId integer|string @Identifiant de la carte de destination ou coordonnées. ex: `x,y`
---@return boolean # true = Le personnage est présent sur la carte ciblée. false = Le personnage n'est pas présent sur la carte ciblée.
function map:onMap(mapId) end

---Méthode permettant de vérifier si le personnage est placé sur la cellule ciblée.
---@param cellId integer @Cellule à vérifier.
---@return boolean # true = Le personnage est sur la cellule ciblée. false = Le personnage n'est pas sur la cellule ciblée.
function map:onCell(cellId) end

---Méthode retournant les coordonnées de la carte actuelle du personnage.
---@return string # Les coordonnées de la carte actuelle du personnage sous la forme "x,y"
function map:currentMap() end

---Méthode retournant la cellule (cellId) sur laquelle se trouve le personnage.
---@return integer # Cellule actuelle.
function map:currentCell() end

---Méthode retournant l'identifiant de la carte où se trouve actuellement le personnage.
---@return integer # Identifiant de la carte.
function map:currentMapId() end

---Méthode retournant la zone actuelle où se trouve le personnage.
---@return string # Zone actuelle. ex `Astrub`
function map:currentArea() end

---Méthode retournant la sous-zone actuelle où se trouve le personnage.
---@return string # Sous-zone actuelle. ex `Cité d'Astrub`
function map:currentSubArea() end

---Méthode retournant les données de la carte courante.
---@return UMap # Contient les données de la carte courante.
function map:getMap() end

---Méthode retournant l'abscisse X d'une carte donnée.
---@param mapId integer @L'identifiant de la carte.
---@return integer # L'abscisse X de la carte.
function map:getX(mapId) end

---Méthode retournant l'ordonnée Y d'une carte donnée.
---@param mapId integer @L'identifiant de la carte.
---@return integer # L'ordonnée Y de la carte.
function map:getY(mapId) end

---Méthode retournant l'identifiant d'une carte adjacente.
---@param direction string @Direction à prendre.
--- - "left" = gauche
--- - "right" = droite
--- - "top" = haut
--- - "bottom" = bas
---@return integer # 
--- - L'identifiant de la carte adjacente suivant la direction.
--- - Retourne `0` si il n'y a aucune carte adjacente suivant la direction donnée.
function map:neighbourId(direction) end

---Méthode retournant une liste contenant les identifiants des archi-monstres présents sur la carte
---@return integer[] # Liste des identifiants des archi-monstres présents sur la carte.
function map:getArchiMonsters() end

---Méthode indiquant si la carte contient un archi-monstre.
---@return boolean # true = La carte contient au moins un archi-monstre. false = La carte ne contient aucun archi-monstre.
function map:containsArchi() end

---Méthode permettant d'ouvrir la porte d'une maison.
---@param cellId integer @Identifiant de la cellule de la porte.
---@param code string @Mot de passe de la porte.
---@param name string @Pseudonyme du propriétaire.
---@return boolean # true = La porte a été ouverte. false = L'ouverture de la porte a échoué.
function map:lockedHouse(cellId, code, name) end

---Méthode permettant d'ouvrir un coffre sécurisé par un code.
---@param cellId integer @Identifiant de la cellule du coffre.
---@param code string @Mot de passe du coffre.
---@return boolean # true = Le coffre a été ouvert. false = L'ouverture du coffre a échoué.
function map:lockedStorage(cellId, code) end

---Méthode retournant le nombre de personnage présents sur la carte.
---@return integer # Nombre de joueurs présents sur la carte.
function map:countPlayers() end

---Méthode permettant de déterminer si un personnage ciblé est présent sur la carte actuelle ou non.
---@param player integer|string @Identifiant du personnage ou nom du personnage.
---@return boolean # true = Si le joueur est présent. false = Si le joueur n'est pas présent.
function map:isPlayerOnMap(player) end

---Méthode retournant une liste d'entités de type GameRolePlayCharacterInformations représentant les personnages présents dans la carte.
---@return UPlayer[] # Liste d'entités de type GameRolePlayCharacterInformations représentant les personnages présents dans la carte
function map:players() end

---Retourne la liste des cellules de la carte où on peut marcher.
---@param hasPath boolean @
--- - true : Retourner seulement les cellules accessibles à votre personnage.
--- - false : Retourner les cellules accessibles et non-accessibles à votre personnage.
---@return integer # La liste des cellules.
function map:getWalkableCells(hasPath) end

---Méthode retournant les informations sur les groupes de monstre présents dans la carte.
---@return UGroupMonster[] # Les informations sur les groupes de monstre présents dans la carte.
function map:monsterGroups() end

---Méthode permettant de lancer un combat sur la carte.
---@return boolean # true = combat lancé
function map:fight() end

---Méthode permettant d'attendre sur une carte jusqu'à le lancement d'un combat.
function map:forceFight() end

---Méthode permettant de commencer la récolte sur la carte.
function map:gather() end

---Méthode retournant l'identifiant du Zaap le plus proche d'une carte. (version basique)
---@param mapId integer @Identifiant de la carte.
---@param except? integer[] @(optionnel) Identifiants des Zaap à exclure (généralement des Zaap accessibles seulement aux alliances/guildes/Villages ...)
---@return integer #
--- - 0 - Impossible de trouver un Zaap le plus proche.
--- - -1 - Votre personnage se trouve déjà sur le Zaap le plus proche.
--- - positif - L'identifiant du Zaap le plus proche. (qu'on va appeler ZaapId)
function map:closestZaap(mapId, except) end

---Méthode retournant l'identifiant du Zaap le plus proche d'une carte. (version optimisée)
---@param mapId integer @Identifiant de la carte.
---@param except? integer[] @(optionnel) Identifiants des Zaap à exclure (généralement des Zaap accessibles seulement aux alliances/guildes/Villages ...)
---@return integer #
--- - 0 - Impossible de trouver un Zaap le plus proche.
--- - -1 - Votre personnage se trouve déjà sur le Zaap le plus proche.
--- - positif - L'identifiant du Zaap le plus proche. (qu'on va appeler ZaapId)
function map:closestZaapV2(mapId, except) end

---Méthode permettant de se téléporter vers un Zaap après avoir utilisé un Zaap.
---@param mapId integer @mapId du Zaap de destination.
---@param source integer @Source de téléportation :
--- - 3 = Depuis l'havre sac.
--- - 0 = Depuis une carte.
--- - PS: Simuler une téléportation en MITM et observer la valeur de sourceType dans le message TeleportRequestMessage pour plus de détail.
function map:toZaap(mapId, source) end

---Méthode retournant la distance entre deux cellules.
---@param cell1 integer @La première cellule.
---@param cell2 integer @La deuxième cellule.
---@return integer # La distance entre les deux cellules.
function map:cellDistance(cell1, cell2) end

---Méthode permettant de considérer des cellules comme des obstacles, pour les éviter lors du déplacement.
---@param cells integer[] @Liste des cellules à considérer comme obstacles.
function map:setCustomObstacles(cells) end

---Méthode permettant d'annuler l'effet de la méthode map:setCustomObstacles().
function map:resetCustomObstacles() end

---@deprecated
--- **Cette méthode ne peut pas être utilisé depuis un script, seulement depuis un /cmd ou depuis une commande rapide.**
---
---Méthode permettant d'aller à une carte depuis /cmd ou depuis une commande rapide
---@param mapId integer|string @Identifiant de la carte de destination ou coordonnées. ex: `x,y`
function map:gotomap(mapId) end

---Méthode permettant de calculer la distance entre deux cartes.
---
--- Cette méthode ne prend pas en considération l'existence d'un mur entre deux cartes, par exemple si les coordonnées des deux cartes sont (0,0) et (0,2) la distance sera toujours 2 malgré l'existence d'un mur.
---
---@param mapIdStart integer @Identifiant de la première carte.
---@param mapIdEnd integer @Identifiant de la deuxième carte.
---@return integer # La distance entre les deux cartes.
function map:GetDistance(mapIdStart, mapIdEnd) end

---Méthode permettant de calculer la distance entre deux cartes.
---
--- Cette méthode retourne le nombre de cartes qui seront parcourus lorsque vous utilisez la méthode `map:moveToward`.
---
---@param mapIdStart integer @Identifiant de la première carte.
---@param mapIdEnd integer @Identifiant de la deuxième carte.
---@return integer # La distance entre les deux cartes.
function map:GetPathDistance(mapIdStart, mapIdEnd) end

---Méthode indiquant si AnkaBot peut générer un trajet à suivre depuis la carte courante vers une carte souhaitée.
---@param mapId integer @Identifiant de la carte de destination.
---@return boolean # true = Possibilité de se déplacer jusqu'à la carte de destination. false = impossible
function map:loadMove(mapId) end

---Méthode indiquant si AnkaBot peut générer un trajet à suivre depuis la carte courante vers une carte souhaitée.
---@param x integer @Coordonnées de la carte de destination.
---@param y integer @Coordonnées de la carte de destination.
---@return boolean # true = Possibilité de se déplacer jusqu'à la carte de destination. false = impossible
function map:loadMove(x, y) end

---Méthode indiquant si AnkaBot peut générer un trajet à suivre entre deux cartes
---@param fromMapId integer @Carte du départ.
---@param toMapId integer @Carte d'arrivé.
---@return boolean # true = Le trajet peut être généré. false = Le trajet ne peut pas être généré.
function map:loadToMapIdFrom(fromMapId, toMapId) end

---Méthode retournant des informations sur le trajet dernièrement généré.
---
--- **Vous devez obligatoirement utiliser un map:loadMove() ou map:loadToMapIdFrom() avant d'utiliser cette méthode.**
---@return string # Une string au format JSON qui contient les informations.
function map:getLoadedRoad() end

---Méthode permettant de se déplacer d'une carte vers une carte de destination.
---
--- La méthode prend en considération l'utilisation des portes et le contournement des murs qui pourraient bloquer les déplacements.
---@param mapId integer @Identifiant de la carte de destination.
---@return boolean # true = Déplacement réussi. false = Impossible de se déplacer.
function map:moveToward(mapId) end

---Méthode permettant de se déplacer d'une carte vers une carte de destination.
---
--- La méthode prend en considération l'utilisation des portes et le contournement des murs qui pourraient bloquer les déplacements.
---@param x integer @Coordonnées de la carte de destination.
---@param y integer @Coordonnées de la carte de destination.
---@return boolean # true = Déplacement réussi. false = Impossible de se déplacer.
function map:moveToward(x, y) end

---Méthode permettant de se déplacer sur une carte adjacente aléatoire vers une carte de destination.
---
--- La méthode ne prend pas en considération l'utilisation des portes, et le contournement des murs qui pourraient bloquer les déplacements, dans ce cas elle retournera false.
---@param mapId integer @Identifiant de la carte de destination.
---@return boolean # true = Déplacement réussi. false = Impossible de se déplacer.
function map:moveRandomToward(mapId) end

---Méthode permettant de se déplacer sur une carte adjacente aléatoire vers une carte de destination.
---
--- La méthode ne prend pas en considération l'utilisation des portes, et le contournement des murs qui pourraient bloquer les déplacements, dans ce cas elle retournera false.
---@param x integer @Coordonnées de la carte de destination.
---@param y integer @Coordonnées de la carte de destination.
---@return boolean # true = Déplacement réussi. false = Impossible de se déplacer.
function map:moveRandomToward(x, y) end

