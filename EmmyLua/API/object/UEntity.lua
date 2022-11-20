---@meta

---@class UEntity
---@field Id integer # Identifiant de l'entité
---@field CellId integer # Cellule de l'entité
---@field Team boolean # Équipe du monstre (False = allié, True = ennemi)
---@field AP integer # Points d'action
---@field MP integer # Point de mouvement
---@field LifePoints integer # Point de vie
---@field MaxLifePoints integer # Point de vie maximum
---@field Level integer # Level de l'entité
---@field Stats UEntityStats # Caractéristiques de l'entité 
---@field CreatureGenericId integer # Identifiant du monstre
---@field Companion boolean # Indiquant si c'est un companion ou non (seulement pour Dofus 2.0)
UEntity = {}