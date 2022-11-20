---@meta

---@class d2data
d2data = {}

---Méthode permettant d'exporter un fichier D2O en un fichier JSON.
---@param d2oName string @Nom du fichier D2O (sans l'extension) Exemple : "Items"
function d2data:exportD2O(d2oName) end

---Méthode permettant de récupérer un objet depuis un fichier D2O à partir de son identifiant.
---@param d2oName string @Nom du fichier D2O (sans l'extension) Exemple : "Items"
---@param id integer @L'identifiant de l'objet.
---@return any # Objet qui possède l'identifiant id
function d2data:objectFromD2O(d2oName, id) end

---Méthode permettant de récupérer tous les objets contenus dans un fichier D2O
---@param d2oName string @Nom du fichier D2O (sans l'extension) Exemple : "Items"
---@return any[] # Liste des objets contenus dans le fichier D2O
function d2data:allObjectsFromD2O(d2oName) end

---Méthode permettant de récupérer le texte qui correspond à un identifiant de texte.
---@param id integer @Identifiant du texte
---@return string # Texte qui correspond à l'identifiant id
function d2data:text(id) end

---Méthode permettant d'exporter en JSON les données d'une carte.
---@param mapId integer @Identifiant de la carte
function d2data:exportMapData(mapId) end

---Méthode permettant de retourner les données d'une carte.
---@param mapId integer @Identifiant de la carte
---@return any # Objet contenant les données sur la carte
function d2data:mapData(mapId) end