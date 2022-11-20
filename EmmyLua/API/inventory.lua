---@meta

---@class inventory
inventory = {}

---Méthode permettant de connaître le nombre de pods occupés dans l'inventaire du personnage.
---@return integer # Pods occupés dans l'inventaire.
function inventory:pods() end

---Méthode permettant d'obtenir la capacité maximale de l'inventaire du personnage (en pods).
---@return integer # Capacité maximale de l'inventaire (en pods).
function inventory:podsMax() end

---Méthode retournant le pourcentage d'occupation de l'inventaire.
---@return integer # Pourcentage d'occupation de l'inventaire (en %).
function inventory:podsP() end

---Méthode permettant de récupérer le contenu complet de l'inventaire.
---@return UItem[] # Liste de tous les UItem présents dans l'inventaire.
function inventory:inventoryContent() end

---Méthode permettant de déterminer la quantité d'un objet présent en inventaire.
---@param gid integer @Identifiant de l'objet.
---@return integer # Quantité de l'objet présent en inventaire.
function inventory:itemCount(gid) end

---Méthode permettant d'obtenir le poids d'un objet (en pods).
---@param gid integer @Identifiant de l'objet.
---@return integer # Poids de l'objet.
function inventory:itemWeight(gid) end

---Méthode permettant de récupérer le nom d'un objet grâce à son identifiant (gid).
---@param gid integer @Identifiant de l'objet.
---@return string # Nom de l'objet.
function inventory:itemNameId(gid) end

---Méthode permettant d'utiliser un objet présent dans l'inventaire.
---@param gid integer @Identifiant de l'objet.
---@return boolean # true = L'objet a été utilisé avec succès. false = L'utilisation de l'objet a échoué.
function inventory:useItem(gid) end

---Méthode permettant l'utilisation multiple d'un objet présent dans l'inventaire.
---@param gid integer @Identifiant de l'objet.
---@param quantity integer @Quantité à utiliser.
---@return boolean # true = L'objet a été utilisé avec succès. false = L'utilisation de l'objet a échoué.
function inventory:useMultipleItem(gid, quantity) end

---@alias position
---| -1 # Objet inexistant
---| 0 # Amulette
---| 1 # Arme
---| 2 # Anneau (gauche)
---| 3 # Ceinture
---| 4 # Anneau (droite)
---| 5 # Bottes
---| 6 # Chapeau
---| 7 # Cape
---| 8 # Familier
---| 9 # Trophée / Dofus  1
---| 10 # Trophée / Dofus 2
---| 11 # Trophée / Dofus 3
---| 12 # Trophée / Dofus 4
---| 13 # Trophée / Dofus 5
---| 14 # Trophée / Dofus 6
---| 15 # Bouclier
---| 16 # Monture
---| 20 # Mutation
---| 21 # Boost (Consommable)
---| 22 # Bonus 1
---| 23 # Bonus 2
---| 24 # Malus 1
---| 25 # Malus 2
---| 26 # Buff (Rôle-Play)
---| 27 # Entité suiveuse
---| 28 # Entité
---| 29 # Harnachement
---| 30 # Costume
---| 63 # Non équipé

---Méthode permettant au personnage d'équiper un objet.
---
--- https://doc.ankabot.dev/ankabot-pc/methodes/inventory/equipitem
---
---@param gid integer @Identifiant de l'objet.
---@param position position @Position où l'objet doit être équipé.
---@return boolean # true = L'objet a été équipé avec succès. false = L'objet n'a pas été équipé.
function inventory:equipItem(gid, position) end

---Méthode retournant la position d'un objet.
---
--- https://doc.ankabot.dev/ankabot-pc/methodes/inventory/itemposition
---
---@param gid integer @Identifiant de l'objet.
---@return position # Position de l'objet.
function inventory:itemPosition(gid) end

---Méthode permettant de supprimer un objet de l'inventaire, en quantité souhaitée.
---@param gid integer @Identifiant de l'objet.
---@param amount integer @Quantité à supprimer.
---@return boolean # true = L'objet a été supprimé avec succès false = L'objet n'a pas été supprimé.
function inventory:deleteItem(gid, amount) end

---Méthode permettant de jeter un objet de l'inventaire, en quantité souhaitée.
---@param gid integer @Identifiant de l'objet.
---@param amount integer @Quantité à jeter.
---@return boolean # true = L'objet a été jeté avec succès. false = L'objet n'a pas été jeté.
function inventory:dropItem(gid, amount) end

---Méthode permettant de récupérer l'identifiant unique au personnage d'un objet présent dans l'inventaire.
---@param gid integer @Identifiant de l'objet.
---@return integer # L'identifiant unique au personnage de l'objet. **retourne -1 si inexistant.**
function inventory:getUID(gid) end

---Retourne l'identifiant du type d'un objet.
---@param gid integer @Identifiant de l'objet.
---@return integer # L'identifiant du type de l'objet.
function inventory:getTypeId(gid) end

---Retourne le nom du type de l'objet.
---@param gid integer @Identifiant de l'objet.
---@return string # Le nom du type de l'objet (amulette, anneau ...).
function inventory:getTypeName(gid) end

---Méthode permettant de retourner le niveau d'un objet.
---@param gid integer @Identifiant de l'objet.
---@return integer # Le niveau de l'objet.
function inventory:getLevel(gid) end
