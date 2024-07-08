import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

TextField {
    id: textField

    // Custom Properties
    property color colorDefault: "transparent"
    property color colorOnFocus: Qt.rgba(0,0,0,0)
    property color colorMouseOver: Qt.rgba(0.8,0.8,0.8,0.3)
    property int bgRadius : 0
    property color borderColor:"transparent"
    property int borderWidth:1


    QtObject{
        id: internal

        property var dynamicColor: if(textField.focus){
                                        textField.hovered ? colorOnFocus : colorDefault
                                   }else{
                                       textField.hovered ? colorMouseOver : colorDefault
                                   }
    }

    // implicitWidth: 80
    // implicitHeight: 20
    // leftPadding: 5
    // rightPadding:38
    focus:true
    placeholderText: qsTr("Search...")
    font.pointSize: 12
    font.family:"Roboto Mono"
    color: root_app.text_color.toString()
    background: Rectangle {
        id:innerRect
        // anchors.fill:parent
        color: textField.colorDefault
        radius: textField.bgRadius
        border.color:textField.borderColor
        border.width:textField.borderWidth

    }
    // onHoveredChanged: {
    //     innerRect.color = textField.hovered ? colorOnFocus : colorDefault
    // }

    selectByMouse: true
    cursorVisible:true
    selectedTextColor: "#FFFFFF"
    selectionColor: "#e2b714"
    placeholderTextColor: root_app.sub_color.toString()
    verticalAlignment: Text.AlignVCenter
    cursorDelegate:Rectangle {
        width: 1
        height:14
        color: root_app.caret_color.toString()
    }
}
