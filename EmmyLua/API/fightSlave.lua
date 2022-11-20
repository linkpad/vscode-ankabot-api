---@meta

---@class fightSlave
fightSlave = {}

---Lance le sort sur une cellule précise (Attention aucune vérification n'est établie pour vérifier si il est possible de lancer le sort).
---@param spellId integer @identifiant du sort
---@param cellId integer @identifiant de la cellule
---@return boolean # Retourne true si le sort est lancé, sinon retourne false.
function fightSlave:castSpellOnCell(spellId, cellId) end

---Déplace le personnage le plus proche possible d'une cellule.
---@param cellId integer @identifiant de la cellule
function fightSlave:moveTowardCell(cellId) end

---Détermine si lancer un sort sur une cellule précise est possible et sinon détermine l'erreur.
---@param launchedCellId integer @identifiant de la cellule de lancé
---@param spellId integer @identifiant du sort
---@param targetCellId integer @identifiant de la cellule ciblée
---@return spellCastError spellCastError # code d'erreur si le spell n'est pas castable. 0 si castable.
function fightSlave:canCastSpellOnCell(launchedCellId, spellId, targetCellId) end

---Détermine si lancer un sort sur une cellule précise est possible et sinon détermine l'erreur.  
---Cette méthode considère que votre personnage s'est déplacé à la cellule launchedCellId, et donc utile pour déterminer si le lancement du sort est possible depuis une cellule où vous voulez vous déplacer après.
---@param launchedCellId integer @identifiant de la cellule de lancé
---@param spellId integer @identifiant du sort
---@param targetCellId integer @identifiant de la cellule ciblée
---@return spellCastError spellCastError # code d'erreur si le spell n'est pas castable. 0 si castable.
function fightSlave:canCastSpellOnCellAfterMove(launchedCellId, spellId, targetCellId) end

---Retourne l'identifiant de la cellule de l'ennemi le plus proche.
---@return integer # identifiant de la cellule
function fightSlave:getNearestEnemy() end

---Retourne l'identifiant de la cellule de l'allié le plus proche.
---@return integer # identifiant de la cellule
function fightSlave:getNearestAlly() end

---Retourne la liste des identifiants cellules marchables pour le personnage
---@return integer[] # la liste des identifiants cellules
function fightSlave:getReachableCells() end

---Retourne la liste des identifiants cellules marchables pour le personnage, et prenant en considération les combattants existants dans le terrain.
---@return integer[] # la liste des identifiants cellules
function fightSlave:getRealReachableCells() end

---Retourne l'entité qui joue le tour
---@return UEntity # l'entité qui joue le tour
function fightSlave:entity() end

---Retourne le nom de l'entité qui joue le tour.
---@return string # le nom de l'entité qui joue le tour
function fightSlave:name() end

---Retourne l'identifiant de l'entité qui joue le tour.
---@return integer # l'identifiant de l'entité qui joue le tour
function fightSlave:index() end

---Retourne l'identifiant du companion ou du monstre qui joue le tour.  
---**C'est cette méthode qu'il faut utiliser pour déterminer c'est le tour de qui.**
---@return integer # l'identifiant de l'entité qui joue le tour
function fightSlave:creatureId() end

---Retourne la cellule de l'entité qui joue le tour.
---@return integer # l'identifiant de la cellule
function fightSlave:cellId() end

---Affiche dans la console tous les sorts de l'entité, ainsi que leurs grades.
function fightSlave:showSpells() end