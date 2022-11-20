---@meta
---@class AccountController
AccountController = {}

---Méthode permettant d'activer et de désactiver l'anti-modérateur sur un compte.
---@param toggle boolean @Activer ou désactiver l'anti-modérateur.
---@param disconnect integer @Temps d'attente avant la déconnexion (en seconds).
---@param reconnect integer @Temps d'attente avant la reconnexion (en seconds).
function AccountController:toggleAntiModerator(toggle, disconnect, reconnect) end

---Forcer la prochaine connexion sur un serveur.
---@param server string @Le serveur de la prochaine connexion.
---@return boolean # Indiquant le succès/l'échec de l'opération.
function AccountController:forceServer(server) end

---https://doc.ankabot.dev/mode-controleur/methodes/accountcontroller/forcedelete
---
---Forcer la suppression d'un personnage avant de joindre le serveur lors de la prochaine connexion.
---
--- **Supprime le personnage par défaut.**
function AccountController:forceDelete() end

---Forcer la suppression d'un personnage avant de joindre le serveur lors de la prochaine connexion.
---@param name string @Nom du personnage à supprimer.
function AccountController:forceDelete(name) end

---Forcer la suppression d'un personnage avant de joindre le serveur lors de la prochaine connexion.
---@param names string[] @Liste des noms de personnages à supprimer.
function AccountController:forceDelete(names) end

---Forcer le choix d'un personnage lors de la prochaine connexion.
---@param name string @Nom du personnage à choisir.
function AccountController:forceChoose(name) end

---Forcer la création d'un personnage lors de la prochaine connexion.
---@param breed breed @Identifiant de la classe.
---@param sex boolean @true : femelle | false : mâle
---@param head? integer @(optionnel) Visage du personnage (de 0 à 7)
---@param colors? nil|string[] @(optionnel) Liste contenant les cinq couleurs au format HTML. | nil = Couleurs par défaut du personnage.
---@return boolean # Indiquant le succès/l'échec de la demande de création.
function AccountController:forceCreate(breed, sex, head, colors) end

---Méthode permettant de déterminer si l'entité appartient à un groupe.
---@return boolean # Indiquant si l'entité appartient à un groupe
function AccountController:isItATeam() end

---Méthode permettant de savoir si le personnage est "Chef de Groupe".
---@return boolean # Indiquant si le personnage est "Chef de Groupe".
function AccountController:isTeamLeader() end

---Méthode permettant de récupérer la liste des entités AccountController appartenant au groupe.
---
---**Seul un account "chef de groupe" peut utiliser cette méthode, la liste retourné ne contient pas le chef du groupe.**
---@return AccountController[] # La liste des entités AccountController appartenant au groupe.
function AccountController:getTeamAccounts() end

---Méthode permettant de connecter le compte.
function AccountController:connect() end

---Méthode permettant de déconnecter le compte.
function AccountController:disconnect() end

---Méthode permettant de décharger le compte.
function AccountController:unloadAccount() end

---Méthode indiquant si un script est chargé sur le compte.
---@return boolean # Indiquant si un script est chargé ou non.
function AccountController:hasScript() end

---Méthode indiquant si un script est en cours d'exécution.
---@return boolean # Indiquant si un script est en cours d'exécution ou pas.
function AccountController:isScriptPlaying() end

---Méthode retournant la valeur d'une variable globale définie sur le script du compte.
---@param variable string @Le nom de la variable.
---@return any # Le contenu de la variable. | retourne `nil` si aucun script n'est chargé ou que cette variable n'existe pas.
function AccountController:getScriptVariable(variable) end

---Méthode permettant d'attribuer une valeur à une variable globale sur le script du compte.
---@param variable string @Le nom de la variable.
---@param valeur any @Valeur à attribuer.
function AccountController:setScriptVariable(variable, valeur) end

---Cette méthode force l'appel d'une fonction définie dans le script du compte ciblé.
---@param name string @Nom de la fonction à appeler.
---@param ... any @Les arguments à passer à cette fonction.
---@return any # Cette méthode retourne la valeur que la fonction appelé.
function AccountController:callScriptFunction(name, ...) end

---Méthode permettant de charger une configuration .xml lors de la prochaine connexion.
---@param configPath string @Le chemin absolu vers le fichier de configuration.
---@param start boolean @Démarrer ou non le script associé à la configuration.
function AccountController:loadConfigNextConnection(configPath, start) end

---Méthode permettant de charger un script .lua lors de la prochaine connexion.
---@param scriptPath string @Le chemin absolu vers le script .lua. Si scriptPath == "" le bot utilisera le dernier script qui était chargé
---@param start boolean @Démarrer ou non le script.
function AccountController:loadScriptNextConnection(scriptPath, start) end

---Méthode permettant de recharger le script sur le compte.
function AccountController:reloadScript() end

---Méthode permettant d'arrêter l'exécution d'un script sur le compte.
function AccountController:stopScript() end

---Méthode permettant de démarrer l'exécution d'un script sur le compte.
function AccountController:startScript() end

---Méthode permettant de charger un script sur le compte.
---@param scriptPath string @Chemin absolu vers le script .lua.
function AccountController:loadScript(scriptPath) end

---Méthode permettant de charger une configuration sur le compte.
---@param configPath string @Chemin absolu vers le fichier de configuration .xml.
function AccountController:loadConfig(configPath) end

---Méthode retournant le nom du compte.
---@return string # Le nom du compte.
function AccountController:getUsername() end

---Méthode retournant l'alias du compte.
---@return string # Alias du compte.
function AccountController:getAlias() end

---Méthode indiquant si le compte est connecté.
---@return boolean # Indiquant si le compte est connecté.
function AccountController:isAccountConnected() end

---Méthode indiquant si le compte est totalement connecté.
---@return boolean # Indiquant si le compte est totalement connecté.
function AccountController:isAccountConnected() end

---Méthode permettant d'exécuter une commande LUA sur le compte (comme /cmd).
---@param cmd string @Commande LUA à exécuter.
function AccountController:executeCmd(cmd) end

---Méthode permettant d'arrêter l'exécution d'une commande en cours.
function AccountController:abortCmd() end

---Méthode indiquant si une commande est en cours d'exécution.
---@return boolean # Indiquant si une commande est en cours d'exécution.
function AccountController:isExecutingCmd() end

---Méthode indiquant si le compte est banni.
---@return boolean # Indiquant si le compte est banni.
function AccountController:isBanned() end

---Méthode permettant d'activer/désactiver l'ecoute des échanges.
---@param toggle boolean @true = activer l'écoute. | false = désactiver l'écoute.
function AccountController:exchangeListen(toggle) end