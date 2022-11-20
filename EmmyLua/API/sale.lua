---@meta

---@class sale
sale = {}

---Méthode permettant de récupérer le nombre d'emplacements disponibles dans l'Hôtel de Vente.
---
--- **Assurez-vous de bien avoir ouvert l'Hôtel de Vente en mode Vente avant d'utiliser cette méthode.**
---@return integer # Nombre d'emplacements libres.
function sale:availableSpace() end

---@alias lots
---| 1 # lot de 1
---| 10 # lot de 10
---| 100 # lot de 100

---Méthode permettant de mettre en vente un objet en Hôtel de Vente.
---@param gid integer @Identifiant de l'objet.
---@param lots lots @Lot à mettre en vente. (1, 10, 100)
---@param price integer @Prix de la mise en vente.
function sale:sellItem(gid, lots, price) end

---Méthode permettant d'acheter un objet depuis l'Hôtel de Vente.
---@param gid integer @Identifiant de l'objet.
---@param lots lots @Lot à acheter. (1, 10, 100)
---@param maxPrice integer @Prix maximum d'achat.
function sale:buyItem(gid, lots, maxPrice) end

---@alias lotsSize
---| 1 # lot de 1
---| 2 # lot de 10
---| 3 # lot de 100

---Méthode permettant de récupérer le prix d'un objet en Hôtel de Vente.
---@param gid integer @Identifiant de l'objet.
---@param lots lotsSize @Taille du lot (1=x1, 2=x10, 3=x100).
---@return integer # Prix du lot.
function sale:getPriceItem(gid, lots) end

---Méthode permettant de récupérer le prix moyen d'un objet.
---@param gid integer @Identifiant de l'objet.
---@param lots lotsSize @Taille du lot (1=x1, 2=x10, 3=x100).
---@return integer # Prix moyen de l'objet.
function sale:getAveragePriceItem(gid, lots) end

---Méthode permettant de modifier le prix d'un objet depuis l'Hôtel de Vente.
---@param guid integer @Identifiant **privé** de l'objet.
---@param price integer @Nouveau prix du lot.
---@param lots lots @Taille du lot. (1, 10, 100)
function sale:editPrice(guid, price, lots) end

---Méthode permettant de modifier les prix des objets ayant le même identifiant et la même quantité depuis l'Hôtel de Vente.
---@param gid integer @Identifiant l'objet.
---@param price integer @Nouveau prix du lot.
---@param lots lots @Taille du lot. (1, 10, 100)
function sale:editPriceByGID(gid, price, lots) end

---Méthode permettant d'actualiser le prix de tous les objets déjà mis en vente par le personnage dans l'Hôtel de Vente, de telle manière à ce que vos prix soient les plus bas.
---
--- **Attention, il n'y a aucune sécurité sur cette fonction, si quelqu'un a mis un objet en vente à 4 kamas, votre personnage actualisera le prix à 3 kamas !**
---@param kamas integer @Nombre de kamas à ajouter/retirer par rapport au prix le plus bas.
--- **Example:**
--- 
--- On suppose que vous avez seulement 1 x [Bois de Frêne] en HDV, et que le prix le plus bas est 500 kamas.
--- ex:
--- ```lua
--- sale:updateAllItems()       -- Le nouveau prix est 499
--- sale:updateAllItems(-1)     -- Le nouveau prix est 499
--- sale:updateAllItems(-3)     -- Le nouveau prix est 497
--- sale:updateAllItems(2)      -- Le nouveau prix est 502
--- sale:updateAllItems(3)      -- Le nouveau prix est 503
--- sale:updateAllItems(-100)   -- Le nouveau prix est 400
--- ```
function sale:updateAllItems(kamas) end

---Méthode retournant le nombre d'objets mis en vente par le personnage dans l'Hôtel de Vente.
---@return integer # Nombre d'objets en vente.
function sale:itemsOnSale() end

---Méthode permettant de récupérer le prix d'un de vos objets depuis l'Hôtel de Vente.
---@param index integer @Position de l'objet dans votre espace de vente.
---@return integer # Prix de l'objet.
function sale:getItemPrice(index) end

---Méthode permettant de récupérer l'identifiant de l'objet.
---@param index integer @Position de l'objet dans votre espace de vente.
---@return integer # Identifiant de l'objet.
function sale:getItemGID(index) end

---Méthode permettant de récupérer l'identifiant privé de l'objet ciblé.
---@param index integer @Position de l'objet dans votre espace de vente.
---@return integer # Identifiant privé de l'objet.
function sale:getItemGUID(index) end

---Méthode retournant la quantité de l'objet en vente.
---@param index integer @Position de l'objet dans votre espace de vente.
---@return integer # Quantité en vente.
function sale:getItemQuantity(index) end

---Méthode permettant de vendre un objet à un Personnage Non Joueur.
---@param gid integer @Identifiant de l'objet à vendre.
---@param quantity integer @Quantité de l'objet à vendre.
function sale:sellToPnj(gid, quantity) end

---Méthode permettant d'acheter un objet à un Personnage Non Joueur.
---@param gid integer @Identifiant de l'objet à acheter.
---@param quantity integer @Quantité de l'objet à acheter.
function sale:buyToPnj(gid, quantity) end

---Méthode permettant de vendre tous les objets non équipés au Personnage Non Joueur.
function sale:sellAllItemToPnj() end