---@meta
---@class ankabotController
ankabotController = {}

---Méthode vous permettant de modifier la clé PushBullet enregistrée dans AnkaBot.
---@param value string @La nouvelle clé PushBullet.
function ankabotController:addPushBulletKey(value) end

---Méthode permettant d'assigner un proxy à un compte.
---@param username string @Nom du compte.
---@param ip string @Adresse IP du proxy.
---@param port integer @Port d'accès au proxy.
---@param proxyUsername? string @(optionnel) Utilisateur du proxy.
---@param proxyPassword? string @(optionnel) Mot de passe du proxy.
---@param https? boolean @(optionnel) True = https | false = Socks5
---@param enabled? boolean  @(optionnel) Activé ou non.
function ankabotController:assignProxyToAnAccount(username, ip, port, proxyUsername, proxyPassword, https, enabled) end

---Méthode vous permettant de créer un personnage sur un compte lors de sa prochaine connexion.
---@param username string @Nom du compte.
---@param serverName string @Nom du serveur.
---@param breed breed @Identifiant de la classe.
---@param sex boolean @true : femelle | false : mâle
---@param head? integer @Visage du personnage (de 0 à 7).
---@param colors? string[] @Liste contenant les cinq couleurs au format HTML. | nil = Couleurs par défaut du personnage.
function ankabotController:createCharacter(username, serverName, breed, sex, head, colors) end

---Méthode permettant de supprimer toutes les demandes de créations des personnages.
function ankabotController:clearCreations() end

---Méthode permettant de retourner le mot de passe d'un compte enregistré.
---@param username string @Nom du compte.
---@return string # Mot de passe du compte.
function ankabotController:getPassword(username) end

---Méthode permettant de retourner l'alias d'un compte enregistré.
---@param username string @Nom du compte.
---@return string # Alias du compte.
function ankabotController:getAlias(username) end

---Méthode permettant d'enregistrer un nouveau compte.
---@param username string @Nom du compte.
---@param password string @Mot de passe.
---@param alias string @Alias
---@return boolean # true = Enregistré avec succès. | false = Déjà enregistré.
function ankabotController:registerAccount(username, password, alias) end

---Méthode permettant de supprimer un compte.
---@param username string @Nom du compte à supprimer.
function ankabotController:deleteAccount(username) end

---Retourne une entité de type AccountController d'un compte chargé.
---@param username string @Nom du compte.
---@return nil|AccountController # retourne un object AccountController si le compte est chargé, sinon retourne `nil`
function ankabotController:getAccount(username) end

---Méthode permettant d'indiquer si un compte est enregistré sur AnkaBot.
---@param username string @Nom du compte.
---@return boolean # true = enregistré | false = non enregistré
function ankabotController:accountIsRegistred(username) end

---Méthode permettant d'indiquer si un compte est chargé sur AnkaBot.
---@param username string @Nom du compte.
---@return boolean # true = chargé | false = non chargé
function ankabotController:accountIsLoaded(username) end

---Méthode retournant une liste des alias de tous les comptes enregistrés.
---@return string[] # Liste des alias de tous les comptes enregistrés.
function ankabotController:getAliasAllRegistredAccounts() end

---Méthode retournant une liste des noms de tous les comptes enregistrés.
---@return string[] # Liste des noms de tous les comptes enregistrés.
function ankabotController:getUsernameAllRegistredAccounts() end

---Méthode retournant une liste des alias de tous les comptes chargés.
---@return string[] # Liste des alias de tous les comptes chargés.
function ankabotController:getAliasLoadedAccounts() end

---Méthode retournant une liste des noms de tous les comptes chargés.
---@return string[] # Liste des noms de tous les comptes chargés.
function ankabotController:getUsernameLoadedAccounts() end

---Méthode retournant une liste des alias de tous les comptes déchargés.
---@return string[] # Liste des alias de tous les comptes déchargés.
function ankabotController:getAliasNotLoadedAccounts() end

---Méthode retournant une liste des noms de tous les comptes déchargés.
---@return string[] # Liste des noms de tous les comptes déchargés.
function ankabotController:getUsernameNotLoadedAccounts() end

---Méthode retournant une liste d'entités de type AccountController de tous les comptes chargés.
---@return AccountController[] # Liste d'entités de type AccountController de tous les comptes chargés.
function ankabotController:getLoadedAccounts() end

---Méthode permettant de charger un compte déjà enregistré.
---@param username string @Nom du compte à charger.
---@param autoConnect boolean @Se connecter automatiquement.
---@return nil|AccountController # retourne `nil` si le compte n'est pas enregistré ou déjà chargé, sinon retourne un objet AccountController
function ankabotController:loadAccount(username, autoConnect) end

---Méthode permettant de charger un groupe de bots.
---@param usernames string[] @Liste des noms de comptes.
---@param bossUsername string @Nom de compte du chef de groupe.
---@param autoConnect boolean @Se connecter automatiquement.
---@return nil|AccountController[] # retourne une liste d'objets des comptes chargés, sinon retourne `nil` si :
--- - L'un des comptes fournis n'est pas enregistré.
--- - L'un des comptes fournis est déjà chargé.
--- - La liste username ne contient pas le compte du chef bossUsername.  
function ankabotController:loadTeamAccount(usernames, bossUsername, autoConnect) end

---Méthode permettant de décharger un compte.
---@param username string @Nom du compte à décharger.
---@return boolean # true = Compte déchargé avec succès. | false = Compte déjà déchargé.
function ankabotController:unloadAccountByUsername(username) end

---Méthode permettant de décharger un compte par son alias.
---@param alias string @Alias du compte à décharger.
---@return boolean # true = Compte déchargé avec succès. | false = Compte déjà déchargé.
function ankabotController:unloadAccountByAlias(alias) end