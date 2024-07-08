import QtQuick 2.15
pragma Singleton
Item {

    property var roboto_mono: robotoVarFont.name
    property var lexend_deca: lexendVarFont.name
    
    FontLoader{id:robotoVarFont ;source: "Roboto_Mono.ttf" }
    FontLoader{id:lexendVarFont ;source: "Lexend_Deca.ttf" }

}
