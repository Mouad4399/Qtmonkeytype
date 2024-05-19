import QtQuick
import QtQuick.Layouts
import QtQuick.Controls



ApplicationWindow{
    width:942
    height:500
    visible:true
    color:'#323437'

    
    Rectangle{
        anchors.fill:parent
        anchors.margins:100
        border.width:1
        border.color:"#646669"
        color:'#2c2e31'
        radius:8
        ListModel{
            id:listModel
        }
        // Text{
        //     id:refText
        //     anchors.centerIn:parent
        //     text:'time left to memorise all words'
        //     font.family:'Roboto Mono'
        //     font.pointSize:17
        //     color:'#d1d0c5'
        //     opacity:0.3
        // }
        // Text{
        //     id:typedText
        //     anchors.fill:refText
        //     // anchors.left:refText.left
        //     // anchors.top:refText.top
        //     // anchors.topMargin:5
        //     text:'time left'
        //     font.family:'Roboto Mono'
        //     font.pointSize:17
        //     color:'white'
        //     textFormat :Text.RichText
        //     // opacity:0.3
        // }

        ListView{
            id:typedTextList
            // anchors.fill:refText
            anchors.centerIn:parent
            width:textMetrics.width
            height:textMetrics.height
            TextMetrics {
                id: textMetrics
                text:'time left to memorise all words'
                font.family:'Roboto Mono'
                font.pointSize:17
            }

            // width: 200; height: 120
            orientation:ListView.Horizontal
            // highlightFollowsCurrentItem : false
            highlight: Rectangle { 
                color: "transparent"
                Rectangle{
                    anchors.right:parent.right
                    height:parent.height
                    width:2
                    color:'yellow'
                    radius:3

                    //  SequentialAnimation on opacity{
                    //     loops: Animation.Infinite

                    //     PropertyAnimation {
                    //         to: 0.0
                    //         duration: 500 
                    //     }

                    //     PropertyAnimation {
                    //         to: 1.0
                    //         duration: 500  // Duration in milliseconds
                    //     }
                    // }
                }
            }
            focus: true
            model:ListModel{

                Component.onCompleted:{
                    for (var i=0;i<textMetrics.text.length;i++){
                        append({
                            'key':textMetrics.text[i],
                            'color':'#d1d0c5',
                            'opacity':0.3
                            })
                    }
                    typedTextList.currentIndex=-1
                }
            }
            Keys.onPressed:event=>{
                // Check if Ctrl key is pressed
                if (event.modifiers & Qt.ControlModifier) {
                    if (event.matches(StandardKey.Undo)) {
                        event.accepted = true
                        return
                    }
                    if (event.matches(StandardKey.Undo)) {
                        event.accepted = true
                        return
                    }
                    // Disable Ctrl+A (Select All)
                    if (event.key === Qt.Key_A) {
                        event.accepted = true
                        return
                    }
                    if (event.key === Qt.Key_Backspace) {
                        
                        if (currentIndex===-1){
                            return
                        }

                        var delete_index = textMetrics.text.slice(0,txtIndex).trim().lastIndexOf(" ")
                        console.log('txtindex : ' + txtIndex)

                        // here try to simplify the loop a lil bit
                        for (let i=txtIndex-1-(delete_index===-1 ? 0:delete_index+1); i>=0;i--){
                            console.log(i)
                            if (model.get(currentIndex).color==='#7e2a33'){
                                console.log('backbad')
                                model.remove(currentIndex)
                                i++
                            }else{

                                model.set(currentIndex,{
                                    'key':textMetrics.text[(delete_index===-1 ? 0:delete_index+1)+i],
                                    'color':'#d1d0c5',
                                    'opacity':0.3
                                })
                            }
                            typedTextList.currentIndex--
                        }
                        txtIndex=delete_index===-1 ? 0:delete_index+1
                    }
                    return
                }
                if (event.key === Qt.Key_Left){
                    event.accepted = true
                    return
                }
                if (event.key === Qt.Key_Up){
                    event.accepted = true
                    return
                }
                if (event.key === Qt.Key_Right){
                    event.accepted = true
                    return
                }
                if (event.key === Qt.Key_Down){
                    event.accepted = true
                    return
                }
                if (event.key === Qt.Key_Backspace){
                    if (currentIndex===-1){
                        return
                    }
                    if (model.get(currentIndex).color==='#7e2a33'){
                        console.log('bad')
                        model.remove(currentIndex)
                        // if (currentIndex===0){
                        //     typedTextList.currentIndex=-1
                        //     return
                        // }
                        currentIndex=currentIndex-1
                        // mistakes=mistakes-1
                        return
                    }
                    model.set(currentIndex,{
                        'key':textMetrics.text[txtIndex-1],
                        'color':'#d1d0c5',
                        'opacity':0.3
                    })
                    if (currentIndex<=0){
                        txtIndex=0
                        typedTextList.currentIndex=-1
                        return
                    }
                    txtIndex=txtIndex-1
                    typedTextList.decrementCurrentIndex()
                    return
                }
                // if (event.key === Qt.Key_Space){
                //     lastspace=typedText.text.length
                //     // text.trim().lastIndexOf(' ')
                //     console.log('I didd space '+ lastspace)
                // }
                // console.log(event.text)
                if (event.text !== textMetrics.text[txtIndex] && textMetrics.text[txtIndex] === ' ' ){

                    model.insert(typedTextList.currentIndex +1,{
                        'key':event.text,
                        'color':'#7e2a33',
                        'opacity':1
                    })
                    // mistakes=mistakes+1
                    typedTextList.incrementCurrentIndex()
                    return
                }
                model.set(typedTextList.currentIndex +1,{
                    'key':textMetrics.text[txtIndex],
                    'color':event.text === textMetrics.text[txtIndex]?'white':"#ca4754",
                    'opacity':1
                })
                txtIndex=txtIndex+1
                typedTextList.incrementCurrentIndex()

            }
            // property int mistakes
            property int txtIndex
            delegate:Text{
                text:model.key
                font.family:'Roboto Mono'
                font.pointSize:17
                color:model.color
                opacity:model.opacity
            }
        }
        // TextInput{
        //     anchors.left:refText.left
        //     anchors.top:refText.top
        //     anchors.topMargin:10
        //     // text:"<FONT COLOR='red'>O</FONT>"
        //     font.family:'Roboto Mono'
        //     font.pointSize:17
        //     // color:'white'
        //     color:"transparent"
        //     focus:true
        //     // echoMode:TextInput.NoEcho
        //     // selectedTextColor:'green'
        //     // inputMethodHints :Qt.ImhrefText
        //     // echoMode:TextInput.Password
        //     // passwordCharacter : " "
        //     // cursorVisible: false
        //     property int rlength:0
        //     // property var mistakes:{
        //     //     'test':''
        //     // }
        //     // Keys.onBackPressed:{
        //     //         console.log('hdf')
        //     //     }
        //     // Keys.onPressed: {
        //     //     if (event.key === Qt.Key_Backspace) {
        //     //         console.log("Backspace pressed")
        //     //         // Additional handling for backspace can be done here
        //     //     }
        //     // }
        //     Keys.onPressed:event=>{
        //         // Check if Ctrl key is pressed
        //         if (event.modifiers & Qt.ControlModifier) {
        //             if (event.matches(StandardKey.Undo)) {
        //                 event.accepted = true
        //                 return
        //             }
        //             if (event.matches(StandardKey.Undo)) {
        //                 event.accepted = true
        //                 return
        //             }
        //             // Disable Ctrl+A (Select All)
        //             if (event.key === Qt.Key_A) {
        //                 event.accepted = true
        //                 return
        //             }
        //             if (event.key === Qt.Key_Backspace) {
        //                 // console.log('ctrl back : '+ lastspace+" "+typedText.text.length)
        //                 // event.accepted = true
        //                 // if (lastspace-typedText.text.length+1!==0){
        //                     // Trim any trailing whitespace

        //                 // var text = text.trimEnd();
                        
        //                 // Find the position of the last space
        //                 // let lastSpaceIndex = typedText.text.trim().lastIndexOf("> <");
                        
        //                 // console.log(typedText.text)
        //                 // // If there's no space, it means there's only one word, so the result would be empty
        //                 // if (lastSpaceIndex === -1) {
        //                 //     console.log('wipe')
        //                 //     typedText.text=''
        //                 // }

        //                 // for(i)

        //                 typedText.text = typedText.text.slice(0,lastSpaceIndex+1)
        //                 console.log(typedText.text + "| l : "+typedText.text.length)
        //                 return
        //             }
        //             return
        //         }
        //         if (event.key === Qt.Key_Left){
        //             event.accepted = true
        //             return
        //         }
        //         if (event.key === Qt.Key_Up){
        //             event.accepted = true
        //             return
        //         }
        //         if (event.key === Qt.Key_Right){
        //             event.accepted = true
        //             return
        //         }
        //         if (event.key === Qt.Key_Down){
        //             event.accepted = true
        //             return
        //         }
        //         if (event.key === Qt.Key_Backspace){
        //             console.log('I didd back')
        //             if (typedText.text[typedText.text.length-1] ===">"){

        //                 typedText.text = typedText.text.slice(0, -26)
        //             }
        //             else{
        //                 typedText.text = typedText.text.slice(0, -1)
        //             }
        //             // event.accepted = true
        //             return
        //         }
        //         // if (event.key === Qt.Key_Space){
        //         //     lastspace=typedText.text.length
        //         //     // text.trim().lastIndexOf(' ')
        //         //     console.log('I didd space '+ lastspace)
        //         // }


        //         addedChar=true
        //     }
        //     property int lastspace:0
        //     property bool addedChar:false
        //     onTextEdited:{

        //         if (addedChar){
        //             if (text[length-1] !== refText.text[length -1]){
        //                 // mistakes[length]=true;
        //                 // listModel.append({

        //                 //     'action':'type',
        //                 //     'mistake':true
        //                 // })
        //                 typedText.text=typedText.text +"<FONT COLOR='red'>"+refText.text[length -1]+"</FONT>"
        //             }
        //             else{
        //                 typedText.text=typedText.text +text[length-1]
        //             }
        //             addedChar=false
        //         }
        //         // if (text[length-1]===' '){
        //         //     lastspace=typedText.text.length
        //         //     console.log(lastspace)
        //         // }
        //         // console.log(JSON.stringify(mistakes))
        //         // text= text
        //         // text = text +"<FONT COLOR='red'>O</FONT>"
        //         // text=" "*length
        //         // var typedText_noTags =typedText.text.replace(/<\/?[^>]+(>|$)/g, "")
        //         // console.log(typedText.text)
        //         // console.log()

        //         // if (rlength>length){
        //         //     console.log('delation')
        //         //     var deleted_chars=rlength -length
        //         //     if (rlength > 0) {
        //         //         // console.log(typedText.text.replace(/<\/?[^>]+(>|$)/g, ""))
        //         //         // console.log(typedText.text)
        //         //         // console.log(typedText.text[typedText.text.length-1])
        //         //         if (typedText.text[typedText.text.length-1] ===">"){

        //         //             typedText.text = typedText.text.slice(0, -26)
        //         //         }
        //         //         else{
        //         //             typedText.text = typedText.text.slice(0, -deleted_chars)
        //         //         }
        //         //         // console.log(typedText.text.replace(/<\/?[^>]+(>|$)/g, ""))
        //         //         // console.log(typedText.text)
        //         //     }

        //         // }else{
        //             // if (text[length-1] !== refText.text[length -1]){
        //             //     // mistakes[length]=true;
        //             //     // listModel.append({

        //             //     //     'action':'type',
        //             //     //     'mistake':true
        //             //     // })
        //             //     typedText.text=typedText.text +"<FONT COLOR='red'>"+refText.text[length -1]+"</FONT>"
        //             // }
        //             // else{
        //             //     typedText.text=typedText.text +text[length-1]
        //             // }
        //         // }

        //         // console.log(typedText.text)
        //         // console.log(length)
        //         // console.log(text[length-1])
        //         // console.log()
        //         // rlength=length
        //     }
        // }
    }
}