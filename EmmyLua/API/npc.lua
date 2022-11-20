---@meta

---@class npc
npc = {}

---@alias actionId
---| 1 # Achat / Vente avec un Personnage Non Joueur
---| 3 # Conversation
---| 5 # Vente en hôtel de vente
---| 6 # Achat en hôtel de vente

---Méthode permettant de lancer un dialogue avec un Personnage Non Joueur.
---@param npcId integer @Identifiant du Personnage Non Joueur.
---@param actionId actionId @Identifiant de l'action.
function npc:npc(npcId, actionId) end

---Méthode permettant de répondre à un dialogue.
---@param replyId integer @Identifiant de la réponse. Correspond à l'index si négatif.
function npc:reply(replyId) end

---Méthode permettant de parle au banquier pour ouvrir la banque.
---
--- **Si npcId = -1, alors AnkaBot prendra le premier banquier disponible.**
---@param npcId integer @Identifiant du banquier.
function npc:npcBank(npcId) end