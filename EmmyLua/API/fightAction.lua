---@meta

---@class fightAction
fightAction = {}

---@alias spellCastError
---| 0 # NONE
---| 1 # TOO_MANY_LAUNCHS
---| 2 # COOLDOWN
---| 3 # ACTION_POINTS
---| 4 # TOO_MANY_LAUNCHS_ON_CELL
---| 5 # MAX_RANGE
---| 6 # MIN_RANGE
---| 7 # NOT_IN_LINE
---| 8 # LINE_OF_SIGHT
---| 9 # NEED_FREE_CELL
---| 10 # NEED_TAKEN_CELL
---| 11 # REQUIRED_STATE
---| 13 # FORBIDDEN_STATE
---| 14 # NOT_IN_DIAGONAL
---| 15 # UNKNOWN
---| 16 # NOT_IN_RANGE

---Lance le sort sur une cellule précise (Attention aucune vérification n'est établie pour vérifier si il est possible de lancer le sort).
---@param spellId integer @identifiant du sort
---@param cellId integer @identifiant de la cellule
function fightAction:castSpellOnCell(spellId, cellId) end

---Déplace le personnage le plus proche possible d'une cellule.
---@param cellId integer @identifiant de la cellule
function fightAction:moveToWardCell(cellId) end

---Déplace le personnage d'une cellule vers une autre, si la cellule cible n'est pas vide il se déplace vers la plus proche.
---@param fromCellId integer @identifiant de la cellule de départ
---@param toCellId integer @identifiant de la cellule de fin
function fightAction:moveTowardCellFromCell(fromCellId, toCellId) end

---Détermine si lancer un sort sur une cellule précise est possible et sinon détermine l'erreur.
---@param launchedCellId integer @identifiant de la cellule de lancé
---@param spellId integer @identifiant du sort
---@param targetCellId integer @identifiant de la cellule ciblée
---@return spellCastError spellCastError # code d'erreur si le spell n'est pas castable. 0 si castable.
function fightAction:canCastSpellOnCell(launchedCellId, spellId, targetCellId) end

---Détermine si lancer un sort sur une cellule précise est possible et sinon détermine l'erreur.  
---Cette méthode considère que votre personnage s'est déplacé à la cellule launchedCellId, et donc utile pour déterminer si le lancement du sort est possible depuis une cellule où vous voulez vous déplacer après.
---@param launchedCellId integer @identifiant de la cellule de lancé
---@param spellId integer @identifiant du sort
---@param targetCellId integer @identifiant de la cellule ciblée
---@return spellCastError spellCastError # code d'erreur si le spell n'est pas castable. 0 si castable.
function fightAction:canCastSpellOnCellAfterMove(launchedCellId, spellId, targetCellId) end

---Retourne si la ligne de vue entre 2 cellules n'est pas obstrué par un obstacle
---@param firstCellId integer @Première cellule
---@param secondCellId integer @Seconde cellule
---@return boolean # true = un obstable est présent | false = pas d'obstable
function fightAction:inLineOfSight(firstCellId, secondCellId) end

---Retourne le numéro du tour actuel.
---@return integer # numéro du tour
function fightAction:getCurrentTurn() end

---Retourne si une cellule est au corps a corps avec une autre.
---@param firstCellId integer @Première cellule
---@param secondCellId integer @Seconde cellule
---@return boolean # true pour cellule au corps a corps et false pour l'inverse. 
function fightAction:isHandToHand(firstCellId, secondCellId) end

---Retourne l'identifiant de la cellule de l'ennemi le plus proche.
---@return integer # identifiant de la cellule
function fightAction:getNearestEnemy() end

---Retourne l'identifiant de la cellule de l'allié le plus proche.
---@return integer # identifiant de la cellule
function fightAction:getNearestAlly() end

---Retourne la liste des identifiants cellules adjacente pour une cellule donnée.
---@param cellId integer @Identifiant de la cellule
---@return integer[] # la liste des identifiants cellules
function fightAction:getAdjacentCells(cellId) end

---Détermine si oui ou non la cellule est occupée par un monstre.
---@param cellId integer @Identifiant de la cellule
---@return boolean #  true pour cellule libre, false pour non libre
function fightAction:isFreeCell(cellId) end

---Détermine si oui ou non la cellule est marchable (Attention ne vérifie pas si la cellule est libre).
---@param cellId integer @Identifiant de la cellule
---@return boolean #  true pour cellule marchable, false pour non marchable
function fightAction:isWalkable(cellId) end

---Retourne le nombre de cellules entre deux cellules.
---@param cellIdStart integer @Cellule de départ
---@param cellIdEnd integer @Cellule d'arrivée
---@return integer # distance entre les deux cellules
function fightAction:getDistance(cellIdStart, cellIdEnd) end

---Retourne la liste des identifiants cellules marchables pour le personnage
---@return integer[] # la liste des identifiants cellules
function fightAction:getReachableCells() end

---Retourne la liste des identifiants cellules marchables pour le personnage, et prenant en considération les combattants existants dans le terrain.
---@return integer[] # la liste des identifiants cellules
function fightAction:getRealReachableCells() end

---Retourne la liste des identifiants cellules que touche le sort de zone.
---@param SpellId integer @identifiant du sort
---@param Cell integer @Identifiant de la cellule
---@return integer[] # la liste des identifiants cellules
function fightAction:getSpellZone(SpellId, Cell) end

---Retourne la classe du personnage sur la cellule souhaitée.
---@param cellId integer @Identifiant de la cellule
---@return integer #  identifiant de la classe du personnage
function fightAction:getFighter(cellId) end

---Retourne la liste des entités. (alliés, ennemis, invocations, ...)
---@return UEntity[] #  liste contenant les objets des entités du combat
function fightAction:getAllEntities() end

---Retourne le nombre d'entités en combat.(alliés, ennemis, invocations, ...)
---@return integer #  le nombre d'entités en combat.
function fightAction:getEntitiesCount() end

---Permet de placer votre personnage sur une cellule donnée avant le début du combat.
---@param cellId integer @Identifiant de la cellule
function fightAction:chooseCell(cellId) end

---Retourne le nombre de tours restants d'une état. Retourne 0 si l'état n'est pas appliqué.
---@return integer
function fightAction:stateTurns() end

---Méthode permettant d'appliquer une état stateId à votre bot pendant stateTurns tours. Si stateTurns est 0 alors l'état sera supprimée.
---@param stateId integer 
---@param stateTurns integer
function fightAction:manageState(stateId, stateTurns) end

---Méthode permettant de supprimer toutes les états.
function fightAction:clearStates() end

---Méthode permettant de récupérer la liste des cellules du chemin entre deux cellules.
---@param cellStart integer @identifiant de la cellule de départ
---@param cellEnd integer @identifiant de la cellule de fin
---@param ignoreEntities boolean @true = ne pas éviter les cellules où se trouvent les combattants | false = éviter les cellules où se trouvent les combattants
---@return integer[] # la liste des identifiants cellules
function fightAction:getShortestPath(cellStart, cellEnd, ignoreEntities) end

---Méthode permettant de récupérer la liste des cellules du chemin entre deux cellules, en précisant les cellules à éviter.
---@param cellStart integer @identifiant de la cellule de départ
---@param cellEnd integer @identifiant de la cellule de fin
---@param avoidCells integer[] @liste d'identifiants de cellule a éviter
---@return integer[] # la liste des identifiants cellules
function fightAction:getShortestPath(cellStart, cellEnd, avoidCells) end

---Méthode permettant de savoir si deux cellules sont sur la meme ligne.
---@param cell1 integer @identifiant de la cellule de départ
---@param cell2 integer @identifiant de la cellule de fin
---@return boolean
function fightAction:cellsAligned(cell1, cell2) end

---Méthode permettant de savoir si deux cellules sont en diagonale.
---@param cell1 integer @identifiant de la cellule de départ
---@param cell2 integer @identifiant de la cellule de fin
---@return boolean
function fightAction:cellsInDiagonal(cell1, cell2) end

---https://doc.ankabot.dev/intelligence-artificielle-ia/methodes/fightaction#getcells_square  
---Méthode permettant de récupérer la liste des cellules formant un carré autour d'un centre, avec un rayon minimal et et un rayon.  
---La méthode ne retourne que les cellules marchables.
---@param centerCell integer @identifiant de la cellule du centre
---@param minRadius integer @rayon minimum
---@param radius integer @rayon maximum
---@return integer[] # la liste des identifiants cellules
function fightAction:getCells_square(centerCell, minRadius, radius) end

---https://doc.ankabot.dev/intelligence-artificielle-ia/methodes/fightaction#getcells_cross  
---Méthode permettant de récupérer la liste des cellules formant une croix autour d'un centre, avec un rayon minimal et et un rayon.  
---La méthode ne retourne que les cellules marchables.
---@param centerCell integer @identifiant de la cellule du centre
---@param minRadius integer @rayon minimum
---@param radius integer @rayon maximum
---@return integer[] # la liste des identifiants cellules
function fightAction:getCells_cross(centerCell, minRadius, radius) end

---https://doc.ankabot.dev/intelligence-artificielle-ia/methodes/fightaction#getcells_lozenge  
---Méthode permettant de récupérer la liste des cellules formant un losange autour d'un centre, avec un rayon minimal et et un rayon.
---La méthode ne retourne que les cellules marchables.
---@param centerCell integer @identifiant de la cellule du centre
---@param minRadius integer @rayon minimum
---@param radius integer @rayon maximum
---@return integer[] # la liste des identifiants cellules
function fightAction:getCells_lozenge(centerCell, minRadius, radius) end

---https://doc.ankabot.dev/intelligence-artificielle-ia/methodes/fightaction#getcells_diagonal  
---Méthode permettant de récupérer la liste des cellules formant une diagonale autour d'un centre, avec un rayon minimal et et un rayon.
---La méthode ne retourne que les cellules marchables.
---@param centerCell integer @identifiant de la cellule du centre
---@param minRadius integer @rayon minimum
---@param radius integer @rayon maximum
---@return integer[] # la liste des identifiants cellules
function fightAction:getCells_diagonal(centerCell, minRadius, radius) end