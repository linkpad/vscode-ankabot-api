---@meta

---@class exchange
exchange = {}

---Méthode permettant de déposer l'objet souhaité, en quantité définie, dans l'espace de stockage ou dans l'échange.
---@param gid integer @L'identifiant de l'objet à déposer.
---@param qt integer @La quantité.
function exchange:putItem(gid, qt) end

---Méthode permettant de récupérer l'objet souhaité, en quantité définie, depuis l'espace de stockage.
---@param gid integer @L'identifiant de l'objet à récupérer.
---@param qt integer @La quantité.
function exchange:getItem(gid, qt) end

---Méthode permettant de récupérer tous les objets dans l'espace de stockage ou dans l'échange.
function exchange:getAllItems() end

---Méthode permettant de déposer tous les objets présents dans l'inventaire, dans l'espace de stockage ou dans l'échange.
function exchange:putAllItems() end

---Méthode permettant de récupérer tous les objets dans l'espace de stockage ou dans l'échange sauf des objects à préciser.
---@param list integer[] @Liste des identifiants des objects à laisser dans l'espace de stockage.
function exchange:getAllItemsExcept(list) end

---Méthode permettant de déposer tous les objets présents dans l'inventaire, dans l'espace de stockage ou dans l'échange, sauf des objects à préciser
---@param list integer[] @Liste des identifiants des objects à laisser dans l'inventaire.
function exchange:putAllItemsExcept(list) end

---Méthode permettant de déposer la quantité de kamas souhaitée dans l'espace de stockage ou dans l'échange.
---@param amount integer @Nombre de kamas à déposer. **En indiquant 0, le personnage déposera tous les kamas disponibles.**
function exchange:putKamas(amount) end

---Méthode permettant de récupérer la quantité de kamas souhaitée depuis l'espace de stockage.
---@param amount integer @Le nombre de kamas à récupérer. **En indiquant 0, le personnage récupérera tous les kamas disponibles.**
function exchange:getKamas(amount) end

---Méthode retournant le nombre de kamas disponibles dans l'espace de stockage.
---@return integer # Nombre de kamas dans l'espace de stockage.
function exchange:storageKamas() end

---Retourne une liste contenant les identifiants des objets présents dans l'espace de stockage.
---@return integer[] # Liste contenant les identifiants des objets présents dans l'espace de stockage.
function exchange:storageItems() end

---Méthode retournant le nombre d'objets différents présents dans l'espace de stockage.
---@return integer # Le nombre d'objets différents présents dans l'espace de stockage.
function exchange:storageItemCount() end

---Méthode retournant la quantité d'un même objet présent dans l'espace de stockage.
---@param gid integer @L'identifiant de l'objet.
---@return integer # Quantité de l'objet.
function exchange:storageItemQuantity(gid) end

---Méthode permettant de lancer un échange au personnage sélectionné.
---@param playerId integer @Identifiant du personnage cible.
---@return boolean # true = L'échange a été accepté. false = L'échange a été refusé.
function exchange:launchExchangeWithPlayer(playerId) end

---Méthode permettant de lancer un échange au personnage sélectionné.
---@param playerName string @Le nom du personnage cible.
---@return boolean # true = L'échange a été accepté. false = L'échange a été refusé.
function exchange:launchExchangeWithPlayerByName(playerName) end

---Méthode permettant de valider un échange.
function exchange:ready() end

---Méthode permettant de fermer l'interface de l'échange.
function exchange:leave() end