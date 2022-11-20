---@meta

---@class job
job = {}

---Méthode retournant le nom du métier.
---@param jobId integer @Identifiant du métier.
---@return string # Nom du métier.
function job:name(jobId) end

---Méthode permettant de retourner le niveau du métier ciblé.
---@param jobId integer @Identifiant du métier.
---@return integer # Niveau du métier.
function job:level(jobId) end