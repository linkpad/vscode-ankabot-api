---@meta

---@class mount
mount = {}

---Méthode retournant toutes les informations sur la monture équipée.
---@return nil|UMount # information de la monture
function mount:myMount() end

---Méthode permettant de déterminer si le personnage est équipé d'une monture.
---@return boolean # true = Une monture est équipée. false = Aucune monture n'est équipée.
function mount:hasMount() end

---Méthode permettant de déterminer si le personnage chevauche sa monture.
---@return boolean # true = Le personnage chevauche sa monture. false = Le personnage ne chevauche pas sa monture.
function mount:isRiding() end

---Méthode permettant de faire monter ou descendre le personnage de sa monture équipée.
function mount:toggleRiding() end

---Méthode permettant de nourrir la monture du personnage.
---@param gid integer @Identifiant de l'objet "Nourriture".
---@param quantity integer @Quantité à donner à la monture.
function mount:feedMount(gid, quantity) end

---Méthode permettant de définir le ratio d'expérience attribué à la monture équipée par le personnage.
---@param ratio integer @De 0 à 90
function mount:setXpRatio(ratio) end

---@alias mountActionId
---| 1 # Équipement -> Etable - Monture
---| 2 # Etable -> Équipement - Monture
---| 3 # Etable -> Liberté - Monture
---| 4 # Etable -> Inventaire - Monture
---| 5 # Inventaire -> Etable - Certificat
---| 6 # Etable -> Enclos - Monture
---| 7 # Enclos -> Etable - Monture
---| 8 # Etable -> Liberté - Monture
---| 9 # Équipement -> Etable - Monture
---| 10 # Enclos -> Équipement - Monture
---| 11 # Équipement -> Liberté - Monture
---| 12 # Inventaire -> Liberté - Certificat
---| 13 # Équipement -> Inventaire - Monture
---| 14 # Enclos -> Inventaire - Monture
---| 15 # Inventaire -> Équipement - Certificat
---| 16 # Inventaire -> Enclos - Certificat
---| 17 # Stérilisation (Etable) - Monture
---| 18 # Stérilisation (Équipement) - Monture
---| 19 # Stérilisation (Enclos) - Monture

---Méthode permettant de déplacer une monture (étable <-> enclos <-> inventaire <-> équipée).
---@param ids integer[] @Liste des identifiants.
---@param ActionId mountActionId @Type d'action
---@return integer #
--- - 0 - L'un des arguments n'est pas valide.
--- - -1 - L'action ciblée n'accepte qu'une liste d'un seul identifiant.
--- - 1 - L'action a été envoyée au serveur.
function mount:moveMounts(ids, ActionId) end

---Méthode retournant toutes les informations sur les montures se trouvant dans l'étable.
---@return UMount[] # Liste des montures.
function mount:stabledMounts() end

---Méthode retournant toutes les informations sur les montures se trouvant dans l'enclos.
---@return UMount[] # Liste des montures.
function mount:paddockedMounts() end

---Méthode retournant toutes les informations sur les montures venants de naitre après l'ouverture d'un enclos.
---@return UMount[] # Liste des montures.
function mount:newBorns() end

---Méthode retournant toutes les informations sur les montures présents dans l'inventaire.
---@return UMount[] # Liste des montures.
function mount:inventoryMounts() end

---Méthode retournant la liste des objets d'elevage présents dans la carte.
---@return UPaddockItem[] # Liste des montures.
function mount:paddockItems() end

---Méthode permettant de poser un objet d'élevage sur une cellule.
---@param cellId integer @La cellule souhaité.
---@param uid integer @Identifiant UID de l'objet présent dans l'inventaire.
function mount:putPaddockItem(cellId, uid) end

---Méthode permettant de changer la cellule d'un objet d'élevage.
---@param fromCellId integer @La cellule d'origine.
---@param toCellId integer @La nouvelle cellule.
function mount:movePaddockItem(fromCellId, toCellId) end

---Méthode permettant de retirer un objet d'élevage d'une cellule.
---@param cellId integer @La cellule où se trouve l'objet à retirer.
function mount:removePaddockItem(cellId) end