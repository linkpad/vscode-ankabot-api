---@meta

---@class global
global = {}

---Méthode retournant une entité de type AccountController du compte courant.
---@return AccountController
function global:thisAccountController() end

---Méthode retournant l'identifiant du compte (celui avec lequel vous vous connectez).
---@return string @L'identifiant du compte.
function global:username() end

---Méthode retournant le pseudo complet du compte (ex: monPseudo#4156).
---@return string @Le pseudo complet du compte (ex: monPseudo#4156)
function global:accountTag() end

---Méthodes permettant d'afficher un message vert dans la console.
---@param message any @Le message à afficher
function global:printSuccess(message) end

---Méthodes permettant d'afficher un message rouge dans la console.
---@param message any @Le message à afficher
function global:printError(message) end

---Méthodes permettant d'afficher un message jaune dans la console.
---@param message any @Le message à afficher
function global:printMessage(message) end

---Méthodes permettant d'afficher un message avec une couleur personnalisée dans la console.
---@param color string @couleur en format hexadecimal ex: #00FFFF
---@param message any @Le message à afficher
function global:printColor(color, message) end

---Méthode permettant de mettre en pause l'exécution du script.
---@param ms integer @Temps de la pause en millisecondes.
function global:delay(ms) end

---Méthode permettant de fermer l'interface ouverte. (Dialogue, échange, banque ...)
function global:leaveDialog() end

---Méthode permettant d'envoyer un message à l'adresse email associée à votre compte AnkaBot.
---@param title string @titre du message
---@param message string @Contenu du message
function global:mail(title, message) end

---Méthode permettant de savoir si un modérateur est présent sur votre serveur.
---@param minutes integer @Les derniers minutes à vérifier.
---@return boolean # true si un modérateur est présent
function global:isModeratorPresent(minutes) end

---Méthode permettant de déconnecter le personnage.
function global:disconnect() end

---Méthode permettant de déconnecter le personnage et le reconnecter au bout du nombre d'heures choisi.
---Si le chef d'un groupe exécute cette méthode, elle sera appliquée à tous les bots du groupe.
---@param hour number @Nombre d'heures où le personnage doit rester déconnecté.
function global:reconnect(hour) end

---Méthode permettant de déconnecter le personnage et le reconnecter au bout du nombre de minutes choisi.
---Si le chef d'un groupe exécute cette méthode, elle sera appliquée à tous les bots du groupe.
---@param minutes number @Nombre de minutes où le personnage doit rester déconnecté.
function global:reconnectBis(minutes) end

---Méthode permettant de déconnecter le personnage et le reconnecter au bout du nombre de secondes choisi.
---Si le chef d'un groupe exécute cette méthode, elle sera appliquée à tous les bots du groupe.
---@param seconds number @Nombre de secondes où le personnage doit rester déconnecté.
function global:reconnectSec(seconds) end

---https://doc.ankabot.dev/ankabot-pc/methodes/global/reconnectwithtoken
---@param seconds number @Nombre de seconds où le personnage doit rester déconnecté. Ne doit pas dépasser 50 seconds.
function global:reconnectWithToken(seconds) end

---Méthode permettant d'arrêter le script en cours.
function global:finishScript() end

---Les configurations .xml vous permettent de sauvegarder la configuration de vos bots (combats, caractéristiques, sorts, mode banque etc.) et de la charger dynamiquement avec la fonction global:loadConfiguration.
---@param path string @Chemin absolu vers le fichier de configuration au format .xml
function global:loadConfiguration(path) end

---Méthode permettant de charger et lancer un autre script.
---@param path string @Chemin absolu vers le script au format .lua
function global:loadAndStart(path) end

---Méthode permettant de charger et lancer un autre script.
---@param reset boolean @True: Redémarrer en réinitialisant toutes les variables globales du script. False: Redémarrer sans réinitialiser les variables globales du script.
function global:restartScript(reset) end

---Méthode permettant de savoir si le personnage sort d'un combat.
---@return boolean # true si le bot sort d'un combat
function global:afterFight() end

---Méthode réinitialisant le compteur de combats.
function global:resetCountFight() end

---Méthode permettant d'obtenir le nombre de combats effectués par le personnage.
---@return integer # Le nombre de combats effectués par le personnage.
function global:getCountFight() end

---Méthode réinitialisant le compteur de récoltes.
function global:resetCountGather() end

---Méthode permettant d'obtenir le nombre de récoltes effectuées par le personnage.
---@return integer # Le nombre de récoltes effectuées par le personnage.
function global:getCountGather() end

---Méthode permettant d'ajouter une variable en mémoire.
---@param key string @Nom de la variable.
---@param value any @Valeur de la variable
function global:addInMemory(key, value) end

---Méthode permettant de modifier la valeur d'une variable stockée en mémoire.
---@param key string @Le nom de la variable à modifier.
---@param newValue any @La nouvelle valeur
function global:editInMemory(key, newValue) end

---Méthode permettant d'effacer une variable de la mémoire.
---@param key string @Nom de la variable à effacer.
function global:deleteMemory(key) end

---Méthode permettant de supprimer toutes les variables en mémoire.
function global:deleteAllMemory() end

---Méthode permettant de récupérer les identifiants des personnages dans le groupe.
---Seul le chef du groupe peut utiliser cette méthode, de plus son identifiant est placé en premier dans la liste.
---@return integer[] # Liste contenant les identifiants.
function global:getTeamMembersIds() end

---Méthode permettant de récupérer le nom des personnages dans le groupe.
---Seul le chef du groupe peut utiliser cette méthode, de plus son identifiant est placé en premier dans la liste.
---@return string[] # Liste contenant les nom des personnages.
function global:getTeamMembersNames() end

---Méthode permettant d'ordonner aux mules de rejoindre le chef du groupe
---Seul le chef du groupe peut utiliser cette méthode
function global:joinBoss() end

---Méthode retournant un nombre entier aléatoire.
---@param a integer @Valeur minimale (incluse).
---@param b integer @Valeur maximale (incluse).
---@return integer # Un entier compris entre a et b (a et b sont inclus).
function global:random(a, b) end

---Méthode permettant d'activer ou désactiver le statut privé.
---@param enabled boolean @true = activer le statut privé. false = désactiver le statut privé.
function global:setPrivate(enabled) end

---Méthode permettant d'activer ou désactiver le statut privé sur les mules
---
---**Seul le chef peut utiliser cette méthode.**
---@param enabled boolean @true = activer le statut privé. false = désactiver le statut privé.
function global:setPrivateTeam(enabled) end

---
---**Cette méthode ne peut être utilisée que par le chef d'un groupe.**
---
---Cette méthode bloque l'éxecution du script jusqu'à ce que :
--- - Tous les mules d'un groupe soient connectés.
--- - Tous les mules d'un groupe soient dans la même carte que leur chef.
---
function global:teamCheck() end

---Méthode permettant au chef du groupe d'envoyer une invitation en groupe aux mules.
---
--- - Les mules passent automatiquement au statut disponible.
--- - Les invitations sont automatiquement acceptés par les mules.
function global:inviteTeam() end

---Méthode retournant si le bot est un chef de groupe.
---@return boolean # Indiquant si le bot est un chef de groupe.
function global:isBoss() end

---Affiche une boîte de dialogue avec une question et attend la réponse de l'utilisateur avec un OUI ou NON.
---@param q string @Question à afficher.
---@return boolean # true = la réponse choisie est OUI false = la réponse choisie est NON
function global:question(q) end

---Affiche une boîte de dialogue avec un champs de texte à saisir.
---@param q string @Question à afficher.
---@return string # Le texte inséré.
function global:input(q) end

---Méthode retournant le répertoire d'Ankabot.
---@return string # Le répertoire d'AnkaBot.
function global:getCurrentDirectory() end

---Méthode retournant les noms des fichiers présents dans un répertoire.
---@param directory string @Le répertoire à chercher.
---@param filter string @Extension des fichiers à chercher (exemple : ".exe", ".lua").
---@return string[] # Liste des noms des fichiers présents dans ce répertoire.
function global:getAllFilesNameInDirectory(directory, filter) end

---Méthode retournant le chemin du répertoire contenant le script chargé.
---@return string # Le chemin du répertoire contenant le script chargé.
function global:getCurrentScriptDirectory() end

---Méthode retournant le chemin du répertoire contenant le script chargé.
---@param alias string @L'alias à afficher.
---@param keep boolean @Garder ou non l'alias de manière permanente.
function global:editAlias(alias, keep) end

---Méthode retournant le chemin du répertoire contenant le script chargé.
---@return string[] # Liste contenant les lignes
function global:consoleLines() end

---Méthode permettant de vider le contenu de la console
function global:clearConsole() end

---Méthode permettant d'activer ou de désactiver l'enregistrement de la console
---@param toggle boolean @true = activer, false = désactiver
function global:saveConsole(toggle) end
