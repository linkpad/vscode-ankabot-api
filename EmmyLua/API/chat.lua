---@meta

---@class chat
chat = {}

---Méthode permettant d'envoyer un message privé à un joueur.
---@param message string @Message à envoyer.
---@param receiver string @Destinataire.
function chat:sendPrivateMessage(message, receiver) end

---Méthode permettant d'envoyer un message dans le canal Général.
---@param message string @Message à envoyer.
function chat:sendGeneralMessage(message) end

---Méthode permettant d'envoyer un message dans le canal Guilde.
---@param message string @Message à envoyer.
function chat:sendGuildMessage(message) end

---Méthode permettant d'envoyer un message dans le canal Alliance.
---@param message string @Message à envoyer.
function chat:sendAllianceMessage(message) end

---Méthode permettant d'envoyer un message dans le canal Recrutement.
---@param message string @Message à envoyer.
function chat:sendRecruitmentMessage(message) end

---Méthode permettant d'envoyer un message dans le canal Commerce.
---@param message string @Message à envoyer.
function chat:sendTradeMessage(message) end
