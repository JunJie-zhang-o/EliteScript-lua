

import * as vscode from 'vscode';

import path = require('path');
import { addGloabalsFuncs } from './globalsFuncs';


let l10n = vscode.l10n
const WORKSPACE_LIB_CONFIG_FIELD = "Lua.workspace.library";
const EC_SCRIPT_RESOURCES_PATH = path.join(__dirname, "../resources/ECScript")
const EC_LIB_LANGUAGE_MODE = vscode.workspace.getConfiguration('EliteScript_Lua').get('builtInLibraryLanguageMode') as string;



function handleWorkspaceLib(configLanguageMode: string) {
    const luaLibrary = vscode.workspace.getConfiguration().get(WORKSPACE_LIB_CONFIG_FIELD) as string[];
    const language = configLanguageMode == "auto" ? vscode.env.language : configLanguageMode
    if (language != "not use") {

    }
    const elibotLuaScript = path.join(EC_SCRIPT_RESOURCES_PATH, language);

    if (luaLibrary.length == 0) {
        language != "not use" ? vscode.workspace.getConfiguration().update(WORKSPACE_LIB_CONFIG_FIELD, [elibotLuaScript], true) : null
    }
    else {
        let luaLibs = luaLibrary.slice();
        let isPushLuaLibs = language != "not use" ? true : false;
        luaLibrary.forEach((item: String, index: number) => {
            // 包含,修改
            if (item.includes(EC_SCRIPT_RESOURCES_PATH)) {
                if (item != elibotLuaScript) {
                    luaLibs[index] = elibotLuaScript
                }
                isPushLuaLibs = false
                if (language == "not use") {
                    luaLibs[index] = ""
                }
            }
        })
        luaLibs = luaLibs.filter((element) => element != "")
        isPushLuaLibs ? luaLibs.push(elibotLuaScript) : null;   // 不包含,需要添加
        vscode.workspace.getConfiguration().update(WORKSPACE_LIB_CONFIG_FIELD, luaLibs, true)
    }
}


// -------------------------------------------------------------------------
addGloabalsFuncs()
handleWorkspaceLib(EC_LIB_LANGUAGE_MODE)



vscode.workspace.onDidChangeConfiguration(event => {
    if (event.affectsConfiguration('EliteScript_Lua.builtInLibraryLanguageMode')) {
        const languageMode = vscode.workspace.getConfiguration('EliteScript_Lua').get('builtInLibraryLanguageMode') as string;
        console.log(`EliteScript_Lua.builtInLibraryLanguageMode changed to: ${languageMode}`);

        handleWorkspaceLib(languageMode);

        vscode.window.showInformationMessage(l10n.t("Reload"));
        vscode.window.showInformationMessage(l10n.t("Reload the window to apply the changes"));
    }
});