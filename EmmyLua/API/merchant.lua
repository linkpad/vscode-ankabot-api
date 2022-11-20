---@meta

---@class merchant
merchant = {}

---Méthode permettant d'ouvrir un mode marchand présent sur la carte.
---@param merchantName string @Nom du personnage marchand.
function merchant:open(merchantName) end

---Méthode retournant le prix d'un objet mis en vente par un personnage marchand.
---@param gid integer @Identifiant de l'objet.
---@return integer # Prix de l'objet.
function merchant:priceItem(gid) end

---Méthode retournant la quantité d'un objet mis en vente par un personnage marchand.
---@param gid integer @Identifiant de l'objet.
---@return integer # Quantité de l'objet.
function merchant:quantityItem(gid) end

---Méthode permettant de déterminer si l'objet sélectionné est mis en vente par le personnage marchand.
---@param gid integer @Identifiant de l'objet.
---@return boolean # true = L'objet est en vente. false = L'objet n'est pas en vente.
function merchant:existItem(gid) end

---Méthode permettant l'achat d'un objet mis en vente par le personnage marchand.
---@param gid integer @Identifiant de l'objet.
---@param quantity integer @Quantité souhaitée.
function merchant:buyItem(gid, quantity) end

---Méthode retournant la liste des noms des personnages marchands présents dans la carte.
---@return string[] # La liste des noms des personnages marchands présents dans la carte.
function merchant:list() end