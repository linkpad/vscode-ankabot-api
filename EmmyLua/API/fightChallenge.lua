---@meta

---@class fightChallenge
fightChallenge = {}

---Retourne l'identifiant du challenge du combat.
---@return integer
function fightChallenge:getChallengeId() end

---Retourne l'identifiant de la cible du challenge.
---@return integer
function fightChallenge:getTargetId() end

---Retourne la liste des cibles ennemies du challenge.
---@return number[]
function fightChallenge:getTargetIds() end

---Retourne la liste des cellules des cibles du challenge.
---@return integer[]
function fightChallenge:getTargetCells() end

---Retourne le pourcentage d'expérience supplémentaire apporté par la réalisation du challenge.
---@return integer
function fightChallenge:getXpBonus() end

---Retourne le pourcentage de butin supplémentaire apporté par la réalisation du challenge.
---@return integer
function fightChallenge:getDroptBonus() end