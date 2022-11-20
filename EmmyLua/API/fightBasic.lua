---@meta

---@class fightBasic
fightBasic = {}

---@alias tacticId
---| 0 # Immobile
---| 1 # Corps à corps
---| 2 # Distance

---@alias targetId
---| 0 # Ennemi
---| 1 # Allié
---| 2 # Sois-même
---| 3 # Ennemi-Adjacente
---| 4 # Allié-Adjacente
---| 5 # Sois-même-Adjacente

---Méthode permettant de jouer le tour avec l'IA basique, en choisissant une tactique.
---@param tactic tacticId @La tactique avec laquelle le tour sera joué.
function fightBasic:playTurn(tactic) end

---Méthode permettant d'ajouter un sort.
---@param spellId integer @L'identifiant du sort.
---@param target targetId @cible du sort.
---@param turns integer @Désigne l'option "Tours de relance"
---@param relaunch integer @Désigne l'option "Nombre de lancé"
---@param cac boolean @true = "Lancer au corps à corps" est coché.
---@param targetLife integer @Désigne l'option "Lancer le sort si la vie de la cible (%) est <= à"
function fightBasic:addSpell(spellId, target, turns, relaunch, cac, targetLife) end

---Méthode permettant de vider la liste des sorts
function fightBasic:clearSpells() end

---Méthode permettant de changer la valeur de l'option "Se rapprocher si la distance est supérieure à".
---@param distance integer @La distance à mettre.
function fightBasic:setApproachDistance(distance) end

---Méthode permettant de changer la valeur de l'option "Vitesse de combat".
---@param speed integer @La vitesse de combat à mettre.
function fightBasic:setFightSpeed(speed) end