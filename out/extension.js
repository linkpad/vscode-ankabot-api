"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.deactivate = exports.setExternalLibrary = exports.activate = void 0;
// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
const path = require("path");
const vscode = require("vscode");
// This method is called when your extension is activated
// Your extension is activated the very first time the command is executed
function activate(context) {
    console.log("loaded linkpad.ankabot-api", context.extension.id);
    setExternalLibrary("API", true);
}
exports.activate = activate;
function setExternalLibrary(folder, enable) {
    console.log("setExternalLibrary", folder, enable);
    const extensionId = "linkpad.ankabot-api";
    const extensionPath = vscode.extensions.getExtension(extensionId)?.extensionPath;
    // Use path.join to ensure the proper path seperators (\ for windows, / for anything else) are used.
    const folderPath = path.join(extensionPath, "EmmyLua", folder);
    const config = vscode.workspace.getConfiguration("Lua");
    const library = config.get("workspace.library");
    if (library && extensionPath) {
        // remove any older versions of our path e.g. "publisher.name-0.0.1"
        for (let i = library.length - 1; i >= 0; i--) {
            const el = library[i];
            const isSelfExtension = el.indexOf(extensionId) > -1;
            const isCurrentVersion = el.indexOf(extensionPath) > -1;
            if (isSelfExtension && !isCurrentVersion) {
                library.splice(i, 1);
            }
        }
        const index = library.indexOf(folderPath);
        if (enable) {
            if (index == -1) {
                library.push(folderPath);
            }
        }
        else {
            if (index > -1) {
                library.splice(index, 1);
            }
        }
        config.update("workspace.library", library, true);
    }
}
exports.setExternalLibrary = setExternalLibrary;
// This method is called when your extension is deactivated
function deactivate() {
    console.log("deactivated ketho.wow-api");
    setExternalLibrary("API", false);
}
exports.deactivate = deactivate;
//# sourceMappingURL=extension.js.map