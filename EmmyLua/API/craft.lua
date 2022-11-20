---@meta

---@class craft
craft = {}

---Méthode permettant de déposer un objet dans l'espace d'artisanat.
---@param gid integer @Identifiant de l'objet à déposer.
---@param amount integer @Quantité désirée.
function craft:putItem(gid, amount) end

---Méthode permettant de changer la quantité de recette à réaliser dans l'interface de craft.
---@param amount integer @Quantité désirée.
function craft:changeQuantityToCraft(amount) end

---Méthode permettant de valider la réalisation d'une recette.
function craft:ready() end
