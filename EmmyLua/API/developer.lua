---@meta

---@class developer
developer = {}

---Méthode permettant d'activer ou de désactiver le mode DEVELOPER_MULTI_THREADING pendant l'exécution du script.
---@param on boolean @true = pour activer. false = pour désactiver.
function developer:toggleMultiThreading(on) end

---Méthode permettant de s'abonner à un message à partir de son nom et d'exécuter une fonction à sa réception.
---@param messageName string @Nom du message.
---@param functionName string @Nom de la fonction à exécuter.
function developer:registerMessage(messageName, functionName) end

---Méthode permettant de se désabonner à un message à partir de son nom.
---@param messageName string @Nom du message.
function developer:unRegisterMessage(messageName) end

---Méthode indiquant si un message est enregistré ou pas.
---@param messageName string @Nom du message.
---@return boolean # true = enregistré | false = non enregistré
function developer:isMessageRegistred(messageName) end

---Méthode retournant la liste des anciens messages reçus avant le chargement du script.
---@param messageName string @Nom du message.
---@return any # La liste des anciens messages reçus avant le chargement du script.
function developer:historicalMessage(messageName) end

---Méthode suspendant l'exécution du script jusqu'à la réception du message ciblé.
---@param messageName string @Nom du message à attendre.
---@param timeOut integer @Temps d'attente maximal en millisecondes.
---@param showTimeOut? boolean @(optionnel) Affiche ou non le retour console du timeout.
---@param failMessageName? string @(optionnel) Message d'échec (voir valeur de retour ci-dessous)
---@param step? integer @(optionnel) L'intervalle de vérification de la réception du message. (en ms) Défaut : 500
---@return boolean # true = Le message a été reçu avant la fin du timeout. | false = Si le timeout a été dépassé sans recevoir le message, ou si failMessageName est reçu avant messageName.
---
---
--- *Si le message ciblé est associé à une fonction grâce à `developer:registerMessage`, cette fonction sera exécutée avant le retour.*
---
---**Example :**
---
--- ```lua
--- -- Attendre au maximum 5 seconds la réception du message GameRolePlayShowActorMessage
--- local received = developer:suspendScriptUntil("GameRolePlayShowActorMessage", 5000)
--- 
--- -- Attendre au maximum 5 seconds la réception du message GameRolePlayShowActorMessage, en vérifiant la réception chaque 100ms
--- local received = developer:suspendScriptUntil("GameRolePlayShowActorMessage", 5000, false, "-1", 100)
--- ```
function developer:suspendScriptUntil(messageName, timeOut, showTimeOut, failMessageName, step) end

---Méthode suspendant l'exécution du script jusqu'à la réception de l'un des messages attendus et retourne le nom du premier message reçu.
---@param messageNameList string[] @Liste des noms des messages à attendre.
---@param timeOut integer @Temps d'attente maximal en millisecondes.
---@param showTimeOut boolean @Affiche ou non le retour console du timeout.
---@param step? integer @(optionnel) L'intervalle de vérification de la réception du message. (en ms) Défaut : 500
---@return string # Nom du premier message reçu. | `"False"` **(string)** Le timeout a été dépassé sans recevoir aucun message.
function developer:suspendScriptUntilMultiplePackets(messageNameList, timeOut, showTimeOut, step) end

---Méthode retournant le nom du type de l'objet.
---@param object any @L'objet dont on souhaite connaitre le type.
---@return string # Nom du type de l'objet.
function developer:typeOf(object) end

---Méthode permettant d'instancier un message à partir de son nom.
---@param messageName string @Nom du message.
---@return any # Cette fonction retourne l'instance du message.
function developer:createMessage(messageName) end

---Méthode permettant d'envoyer un message au serveur de jeu.
---@param message any @L'instance du message à envoyer.
function developer:sendMessage(message) end

---Méthode retournant le résultat d'une requête POST.
---@param url string @URL
---@param data string @Données à envoyer, exemple : `key1=value1&key2=value2&key3=value3`
---@param headersName? string[] @(optionnel) Liste des headers à envoyer.
---@param headersContent? string[] @(optionnel) Liste des contenus des headers à envoyer.
---@return string # Résultat de la requête.
function developer:postRequest(url, data, headersName, headersContent) end

---Méthode permettant d'effectuer une requête GET et d'en récupérer le résultat.
---@param url string @URL
---@param headersName? string[] @(optionnel) Liste des headers à envoyer.
---@param headersContent? string[] @(optionnel) Liste des contenus des headers à envoyer.
---@return string # Résultat de la requête.
function developer:getRequest(url, headersName, headersContent) end

---Méthode retournant le résultat d'une requête POST à travers un proxy HTTPS et d'en récupérer le résultat.
---@param url string @URL
---@param data string @Données à envoyer, exemple : `key1=value1&key2=value2&key3=value3`
---@param host string @Adresse IP du proxy.
---@param port integer @Port.
---@param username string @Utilisateur.
---@param password string @Mot de passe.
---@param headersName? string[] @(optionnel) Liste des headers à envoyer.
---@param headersContent? string[] @(optionnel) Liste des contenus des headers à envoyer.
---@return string # Résultat de la requête.
---
---
--- **Example :**
---
--- ```lua
---developer:postRequestThroughHTTPSProxy("https://httpbin.org/ip", "param1=value1&param2=value2&param3=value3", "185.211.211.211", 2000, "user", "pass", {"User-agent"}, {"AnkaBot"})
---
----- Sans les headers
---developer:postRequestThroughHTTPSProxy("https://httpbin.org/ip", "param1=value1&param2=value2&param3=value3", "185.211.211.211", 2000, "user", "pass")
---```
function developer:postRequestThroughHTTPSProxy(url, data, host, port, username, password, headersName, headersContent) end

---Méthode permettant d'effectuer une requête GET à travers un proxy HTTPS et d'en récupérer le résultat.
---@param url string @URL
---@param host string @Adresse IP du proxy.
---@param port integer @Port.
---@param username string @Utilisateur.
---@param password string @Mot de passe.
---@param headersName? string[] @(optionnel) Liste des headers à envoyer.
---@param headersContent? string[] @(optionnel) Liste des contenus des headers à envoyer.
---@return string # Résultat de la requête.
---
---
--- **Example :**
---
--- ```lua
---developer:getRequestThroughHTTPSProxy("https://httpbin.org/ip", "185.211.211.211", 2000, "user", "pass", {"User-agent"}, {"AnkaBot"})
---
----- Sans les headers
---developer:getRequestThroughHTTPSProxy("https://httpbin.org/ip", "185.211.211.211", 2000, "user", "pass")
---```
function developer:getRequestThroughHTTPSProxy(url, host, port, username, password, headersName, headersContent) end

---Méthode retournant le résultat d'une requête POST à travers un proxy SOCKS5 et d'en récupérer le résultat.
---@param url string @URL
---@param data string @Données à envoyer, exemple : `key1=value1&key2=value2&key3=value3`
---@param host string @Adresse IP du proxy.
---@param port integer @Port.
---@param username string @Utilisateur.
---@param password string @Mot de passe.
---@param headersName? string[] @(optionnel) Liste des headers à envoyer.
---@param headersContent? string[] @(optionnel) Liste des contenus des headers à envoyer.
---@return string # Résultat de la requête.
---
---
--- **Example :**
---
--- ```lua
---developer:postRequestThroughSocks5Proxy("https://httpbin.org/ip", "param1=value1&param2=value2&param3=value3", "185.211.211.211", 2000, "user", "pass", {"User-agent"}, {"AnkaBot"})
---
----- Sans les headers
---developer:postRequestThroughSocks5Proxy("https://httpbin.org/ip", "param1=value1&param2=value2&param3=value3", "185.211.211.211", 2000, "user", "pass")
---```
function developer:postRequestThroughSocks5Proxy(url, data, host, port, username, password, headersName, headersContent) end

---Méthode permettant d'effectuer une requête GET à travers un proxy SOCKS5 et d'en récupérer le résultat.
---@param url string @URL
---@param host string @Adresse IP du proxy.
---@param port integer @Port.
---@param username string @Utilisateur.
---@param password string @Mot de passe.
---@param headersName? string[] @(optionnel) Liste des headers à envoyer.
---@param headersContent? string[] @(optionnel) Liste des contenus des headers à envoyer.
---@return string # Résultat de la requête.
---
---
--- **Example :**
---
--- ```lua
---developer:getRequestThroughSocks5Proxy("https://httpbin.org/ip", "185.211.211.211", 2000, "user", "pass", {"User-agent"}, {"AnkaBot"})
---
----- Sans les headers
---developer:getRequestThroughSocks5Proxy("https://httpbin.org/ip", "185.211.211.211", 2000, "user", "pass")
---```
function developer:getRequestThroughSocks5Proxy(url, host, port, username, password, headersName, headersContent) end

---Méthode retournant le résultat d'une requête POST à travers l'IP du bot et d'en récupérer le résultat.
---@param url string @URL
---@param data string @Données à envoyer, exemple : `key1=value1&key2=value2&key3=value3`
---@param headersName? string[] @(optionnel) Liste des headers à envoyer.
---@param headersContent? string[] @(optionnel) Liste des contenus des headers à envoyer.
---@return string # Résultat de la requête.
function developer:postRequestThroughMyIP(url, data, headersName, headersContent) end

---Méthode retournant le résultat d'une requête GET à travers l'IP du bot et d'en récupérer le résultat.
---@param url string @URL
---@param headersName? string[] @(optionnel) Liste des headers à envoyer.
---@param headersContent? string[] @(optionnel) Liste des contenus des headers à envoyer.
---@return string # Résultat de la requête.
function developer:getRequestThroughMyIP(url, headersName, headersContent) end

---Méthode permettant de déterminer si un script est en cours d'exécution.
---@return boolean # true = Si le script est en cours d'exécution. | false = le script n'est pas en cours d'exécution
function developer:isScriptPlaying() end

---Méthode permettant de lancer le script chargé.
---@param reload boolean @true = Lance le script en réinitialisant ses variables globales. | false = Lance le script sans réinitialiser ses variables globales.
function developer:startScript(reload) end

---Méthode permettant d'ajouter une variable global.
---@param key any
---@param value any
function developer:addInGlobalMemory(key, value) end

---Méthode permettant de modifier une variable global.
---@param key any
---@param value any
function developer:editInGlobalMemory(key, value) end

---Méthode permettant de récupérer une variable global.
---@param key any
---@return any
function developer:getInGlobalMemory(key) end

---Méthode permettant de supprimer une variable global.
---@param key any
function developer:deleteFromGlobalMemory(key) end

---Méthode permettant de supprimer toutes les variables global.
function developer:deleteAllGlobalMemory() end