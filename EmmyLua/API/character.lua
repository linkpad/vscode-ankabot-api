---@meta

---@class character
character = {}

---Méthode retournant le nom du serveur du personnage.
---@return string # Le nom du serveur du personnage.
function character:server() end

---Méthode retournant le nom du personnage.
---@return string # Le nom du personnage.
function character:name() end

---Méthode retournant l'identifiant unique du personnage.
---@return number # L'identifiant unique du personnage.
function character:id() end

---Méthode retournant le niveau du personnage.
---@return integer # Le niveau du personnage.
function character:level() end

---Méthode retournant les kamas dans l'inventaire du personnage.
---@return number # Les kamas dans l'inventaire du personnage.
function character:kamas() end

---Méthode retournant le sexe du personnage.
---@return boolean # true = feminin, false = masculin
function character:sex() end

---Méthode permettant d'indiquer si le personnage est en combat ou non.
---@return boolean # true = en combat, false = pas en combat
function character:isInFight() end

---Méthode retournant les points de vie du personnage.
---@return integer # Les points de vie du personnage
function character:lifePoints() end

---Méthode retournant les points de vie max du personnage.
---@return integer # Les points de vie max du personnage.
function character:maxLifePoints() end

---Méthode retournant le pourcentage des points de vie du personnage.
---@return integer # Le pourcentage des points de vie du personnage.
function character:lifePointsP() end

---Méthode retournant l'expérience accumulée par le personnage.
---@return integer # L'expérience accumulée par le personnage.
function character:experience() end

---Méthode retournant l'expérience accumulée par le personnage pendant votre session de boting.
---@return integer # L'expérience accumulée par le personnage pendant votre session de boting.
function character:sessionExperience() end

---Méthode retournant les points d'énergie du personnage.
---@return integer # Les points d'énergie du personnage.
function character:energyPoints() end

---Méthode retournant les points d'énergie max du personnage.
---@return integer # Les points d'énergie max du personnage.
function character:maxEnergyPoints() end

---@alias breed
---| 0 # undefined
---| 1 # Féca
---| 2 # Osamodas
---| 3 # Enutrof
---| 4 # Sram
---| 5 # Xélor
---| 6 # Ecaflip
---| 7 # Eniripsa
---| 8 # Iop
---| 9 # Crâ
---| 10 # Sadida
---| 11 # Sacrieur
---| 12 # Pandawa
---| 13 # Roublard
---| 14 # Zobal
---| 15 # Steamer
---| 16 # Eliotrope
---| 17 # Huppermage
---| 18 # Ouginak

---Méthode retournant l'identifiant de la classe du personnage.
---@return breed # L'identifiant de la classe du personnage.
function character:breed() end

---Méthode retournant le nom de la classe du personnage.
---@return string # Le nom de la classe du personnage.
function character:breedName() end

---Méthode retournant si le personnage est abonné ou non.
---@return boolean # false = Le personnage est abonné. true = Le personnage n'est pas abonné.
function character:freeMode() end

---Méthode retournant le nombre de points de statistiques dont dispose le personnage.
---@return integer # Le nombre de points de statistiques dont dispose le personnage.
function character:statsPoint() end

---Méthode permettant d'obtenir les variantes de sort.
---@param varSpellId integer Identifiant du sort que vous voulez obtenir
---@return boolean # Indiquant le succès ou l'échec de cette opération
function character:getSpellVariant(varSpellId) end

---Méthode permettant d'obtenir la statistique Agilité du personnage.
---@return integer # Points de Statistiques (base).
function character:getAgilityBase() end

---Méthode permettant d'obtenir la statistique Chance du personnage.
---@return integer # Points de Statistiques (base).
function character:getChanceBase() end

---Méthode permettant d'obtenir la statistique Intelligence du personnage.
---@return integer # Points de Statistiques (base).
function character:getIntelligenceBase() end

---Méthode permettant d'obtenir la statistique Force du personnage.
---@return integer # Points de Statistiques (base).
function character:getStrenghtBase() end

---Méthode permettant d'obtenir la statistique Vitalité du personnage.
---@return integer # Points de Statistiques (base).
function character:getVitalityBase() end

---Méthode permettant d'obtenir la statistique Sagesse du personnage.
---@return integer # Points de Statistiques (base).
function character:getWisdomBase() end

---Méthode permettant d'obtenir le coût en points pour améliorer la statistique Agilité du personnage.
---@return integer # Point(s) de statistiques nécessaire(s) à l'amélioration de la statistique (base).
function character:getCostAgility() end

---Méthode permettant d'obtenir le coût en points pour améliorer la statistique Chance du personnage.
---@return integer # Point(s) de statistiques nécessaire(s) à l'amélioration de la statistique (base).
function character:getCostChance() end

---Méthode permettant d'obtenir le coût en points pour améliorer la statistique Intelligence du personnage.
---@return integer # Point(s) de statistiques nécessaire(s) à l'amélioration de la statistique (base).
function character:getCostIntelligence() end

---Méthode permettant d'obtenir le coût en points pour améliorer la statistique Force du personnage.
---@return integer # Point(s) de statistiques nécessaire(s) à l'amélioration de la statistique (base).
function character:getCostStrenght() end

---Méthode permettant d'obtenir le coût en points pour améliorer la statistique Vitalité du personnage.
---@return integer # Point(s) de statistiques nécessaire(s) à l'amélioration de la statistique (base).
function character:getCostVitality() end

---Méthode permettant d'obtenir le coût en points pour améliorer la statistique Sagesse du personnage.
---@return integer # Point(s) de statistiques nécessaire(s) à l'amélioration de la statistique (base).
function character:getCostWisdom() end

---Méthode permettant d'améliorer la statistique Agilité en dépensant le nombre de points de statistiques souhaité.
---@param amount integer @Nombre de points de statistiques à dépenser.
function character:upgradeAgility(amount) end

---Méthode permettant d'améliorer la statistique Chance en dépensant le nombre de points de statistiques souhaité.
---@param amount integer @Nombre de points de statistiques à dépenser.
function character:upgradeChance(amount) end

---Méthode permettant d'améliorer la statistique Intelligence en dépensant le nombre de points de statistiques souhaité.
---@param amount integer @Nombre de points de statistiques à dépenser.
function character:upgradeIntelligence(amount) end

---Méthode permettant d'améliorer la statistique Force en dépensant le nombre de points de statistiques souhaité.
---@param amount integer @Nombre de points de statistiques à dépenser.
function character:upgradeStrenght(amount) end

---Méthode permettant d'améliorer la statistique Vitalité en dépensant le nombre de points de statistiques souhaité.
---@param amount integer @Nombre de points de statistiques à dépenser.
function character:upgradeVitality(amount) end

---Méthode permettant d'améliorer la statistique Sagesse en dépensant le nombre de points de statistiques souhaité.
---@param amount integer @Nombre de points de statistiques à dépenser.
function character:upgradeWisdom(amount) end