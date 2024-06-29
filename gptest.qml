import QtQuick
import QtQuick.Layouts
import QtQuick.Controls




ApplicationWindow{
    visible:true
    color:'black'

    TextEdit {
        id: textEdit
        width: 200
        height: 100
        font.pixelSize: 20
        focus: true
        color:'white'

        Rectangle {
            Component.onCompleted:{
                console.log(parent.cursorRectangle)
            }
            width: 2
            height:27
            color: 'yellow'
            radius: 3
            x:parent.cursorRectangle.x
            y:parent.cursorRectangle.y
            Behavior on x {
                NumberAnimation {
                    easing.type: Easing.OutQuart
                    duration: 500
                }
            }

           
        }
        // Behavior on cursorDelegate.{
        //     Component.onCompleted:{
        //         console.log('hhel')
        //     }
        //     NumberAnimation {
        //         easing.type: Easing.OutQuart
        //         duration: 500
        //     }
        // }
    }
}