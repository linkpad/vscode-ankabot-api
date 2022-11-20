---@meta

---@class fightCharacter
fightCharacter = {}

---Retourne l'ID de la carte actuelle.
---@return integer
function fightCharacter:getMapid() end

---Retourne le nombre de PA du personnage.
---@return integer
function fightCharacter:getAP() end

---Retourne le nombre de PM du personnage.
---@return integer
function fightCharacter:getMP() end

---Retourne le nombre de PO du personnage.
---@return integer
function fightCharacter:getPO() end

---Forcer le nombre de PA que possède votre bot.  
---Utile lorsque vous lancer un sort qui modifie vos PA.
---@param pa integer @nombre de PA forcé
function fightCharacter:forceAP(pa) end

---Forcer le nombre de PM que possède votre bot.  
---Utile lorsque vous lancer un sort qui modifie vos PM.
---@param pm integer @nombre de PM forcé
function fightCharacter:forceMP(pm) end

---Forcer le nombre de PO que possède votre bot.  
---Utile lorsque vous lancer un sort qui modifie vos PO.
---@param po integer @nombre de PO forcé
function fightCharacter:forcePO(po) end

---Retourne le nombre de points de vie du personnage.
---@return integer
function fightCharacter:getLifePoints() end

---Retourne le nombre de points de vie maximum du personnage.
---@return integer
function fightCharacter:getLifePointsMax() end

---Retourne le pourcentage de points de vie du personnage.
---@return integer
function fightCharacter:getLifePointsP() end

---Retourne la portée du personnage.
---@return integer
function fightCharacter:getRange() end

---Retourne l'identifiant du personnage.
---@return number
function fightCharacter:getId() end

---Retourne la cellule identifiant du personnage.
---@return integer
function fightCharacter:getCellId() end

---Retourne le niveau du personnage.
---@return integer
function fightCharacter:getLevel() end

---indique si le personnage est une mule.
---@return boolean # true = le personnage est une mule | false = le personnage n'est pas une mule
function fightCharacter:isMule() end

---Retourne la race du personnage.
---@return breed # la race du personnage
function fightCharacter:getBreed() end

---Retourne le nombre d'invocation que votre personnage possède dans le terrain.
---@return integer
function fightCharacter:getCountInvocation() end

---Retourne si le tour est celui de votre personnage
---@return boolean
function fightCharacter:isItMyTurn() end