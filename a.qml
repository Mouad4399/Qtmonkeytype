import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtCharts 

import './Components'

ApplicationWindow{
    id:root_app
    width:942
    height:500
    visible:true
    color:'#323437'
    title:'Qtmonkeytype'
    font.family:'Roboto Mono'
    property font roboto: ({
        family: "Roboto Mono",
        pointSize: 10,
        weight:600
    })

    // Rectangle{
    //     anchors.fill:parent
    //     anchors.margins:100
    //     border.width:1
    //     border.color:"#646669"
    //     color:'#2c2e31'
    //     radius:8
    //     ListModel{
    //         id:listModel
    //     }
        // Text{
        //     id:refText
        //     anchors.centerIn:parent
        //     text:'time left to memorise all words'
        //     font.family:'Roboto Mono'
        //     font.pointSize:17
        //     color:'#d1d0c5'
        //     opacity:0
        // }
        // Text{
        //     id:typedText
        //     anchors.fill:refText
        //     // anchors.left:refText.left
        //     // anchors.top:refText.top
        //     // anchors.topMargin:5
        //     text:''
        //     font.family:'Roboto Mono'
        //     font.pointSize:17
        //     color:'white'
        //     textFormat :Text.RichText
        //     wrapMode:Text.WordWrap
        //     // opacity:0.3
        // }
        ColumnLayout{
            anchors.fill:parent
            anchors.margins:34
            spacing:20
            ColumnLayout{
                // enabled:!textEdit.focus
                // Component.onCompleted:{
                //     console.log(height)
                // }
                opacity:textEdit.active ? 0 : 1
                Layout.fillWidth:true
                spacing:30
                RowLayout{
                    id:title
                    Layout.fillWidth:true
                    spacing:6
                    ColorImage{
                        // Layout.alignment:Qt.AlignCenter
                        Layout.topMargin:5
                        source:'./images/logo.svg'
                        color:'#e2b714'
                        sourceSize.height:23
                    }
                    Text{
                        id:monkeytype_name
                        Layout.alignment:Qt.AlignTop
                        text:"<font color='#a6e214'>Qt</font>monkeytype"
                        textFormat: TextEdit.RichText
                        font.family:'Lexend Deca'
                        font.weight:600
                        font.pointSize:25
                        color:'#d1d0c5'
                        Text{
                            anchors.top:parent.top
                            anchors.left:parent.left
                            anchors.topMargin:-2
                            anchors.leftMargin:40
                            text:"monkey see"
                            font.family:'Lexend Deca'
                            font.pointSize:9
                            color:'#646669'
                        }
                    }
                    RowLayout{
                        Layout.leftMargin:10
                        Layout.fillWidth:true
                        Layout.fillHeight:true
                        spacing:20
                        Button{
                            hoverColor:'white'
                            pressColor:'#646669'
                            Layout.alignment:Qt.AlignBottom
                            implicitHeight:monkeytype_name.height-15
                            implicitWidth:28
                            imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M528 448H48c-26.5 0-48-21.5-48-48V112c0-26.5 21.5-48 48-48h480c26.5 0 48 21.5 48 48v288c0 26.5-21.5 48-48 48zM128 180v-40c0-6.6-5.4-12-12-12H76c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm-336 96v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm-336 96v-40c0-6.6-5.4-12-12-12H76c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm288 0v-40c0-6.6-5.4-12-12-12H172c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h232c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12z"/></svg>'
                            imageSize.width:20
                            buttonText:''
                            imageColor:"#646669"
                            color:"#323437"
                        }
                        Button{
                            hoverColor:'white'
                            pressColor:'#646669'
                            Layout.alignment:Qt.AlignBottom
                            implicitHeight:monkeytype_name.height-15
                            implicitWidth:28
                            imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M528 448H112c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h416c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zm64-320c-26.5 0-48 21.5-48 48 0 7.1 1.6 13.7 4.4 19.8L476 239.2c-15.4 9.2-35.3 4-44.2-11.6L350.3 85C361 76.2 368 63 368 48c0-26.5-21.5-48-48-48s-48 21.5-48 48c0 15 7 28.2 17.7 37l-81.5 142.6c-8.9 15.6-28.9 20.8-44.2 11.6l-72.3-43.4c2.7-6 4.4-12.7 4.4-19.8 0-26.5-21.5-48-48-48S0 149.5 0 176s21.5 48 48 48c2.6 0 5.2-.4 7.7-.8L128 416h384l72.3-192.8c2.5 .4 5.1 .8 7.7 .8 26.5 0 48-21.5 48-48s-21.5-48-48-48z"/></svg>'
                            imageSize.width:20
                            buttonText:''
                            imageColor:"#646669"
                            color:"#323437"
                        }
                        Button{
                            hoverColor:'white'
                            pressColor:'#646669'
                            Layout.alignment:Qt.AlignBottom
                            implicitHeight:monkeytype_name.height-15
                            implicitWidth:28
                            imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 192 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M20 424.2h20V279.8H20c-11 0-20-9-20-20V212c0-11 9-20 20-20h112c11 0 20 9 20 20v212.2h20c11 0 20 9 20 20V492c0 11-9 20-20 20H20c-11 0-20-9-20-20v-47.8c0-11 9-20 20-20zM96 0C56.2 0 24 32.2 24 72s32.2 72 72 72 72-32.2 72-72S135.8 0 96 0z"/></svg>'
                            imageSize.height:height-8
                            buttonText:''
                            imageColor:"#646669"
                            color:"#323437"
                        }
                        Button{
                            hoverColor:'white'
                            pressColor:'#646669'
                            Layout.alignment:Qt.AlignBottom
                            implicitHeight:monkeytype_name.height-15
                            implicitWidth:28
                            imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M487.4 315.7l-42.6-24.6c4.3-23.2 4.3-47 0-70.2l42.6-24.6c4.9-2.8 7.1-8.6 5.5-14-11.1-35.6-30-67.8-54.7-94.6-3.8-4.1-10-5.1-14.8-2.3L380.8 110c-17.9-15.4-38.5-27.3-60.8-35.1V25.8c0-5.6-3.9-10.5-9.4-11.7-36.7-8.2-74.3-7.8-109.2 0-5.5 1.2-9.4 6.1-9.4 11.7V75c-22.2 7.9-42.8 19.8-60.8 35.1L88.7 85.5c-4.9-2.8-11-1.9-14.8 2.3-24.7 26.7-43.6 58.9-54.7 94.6-1.7 5.4 .6 11.2 5.5 14L67.3 221c-4.3 23.2-4.3 47 0 70.2l-42.6 24.6c-4.9 2.8-7.1 8.6-5.5 14 11.1 35.6 30 67.8 54.7 94.6 3.8 4.1 10 5.1 14.8 2.3l42.6-24.6c17.9 15.4 38.5 27.3 60.8 35.1v49.2c0 5.6 3.9 10.5 9.4 11.7 36.7 8.2 74.3 7.8 109.2 0 5.5-1.2 9.4-6.1 9.4-11.7v-49.2c22.2-7.9 42.8-19.8 60.8-35.1l42.6 24.6c4.9 2.8 11 1.9 14.8-2.3 24.7-26.7 43.6-58.9 54.7-94.6 1.5-5.5-.7-11.3-5.6-14.1zM256 336c-44.1 0-80-35.9-80-80s35.9-80 80-80 80 35.9 80 80-35.9 80-80 80z"/></svg>'
                            imageSize.height:height-8
                            buttonText:''
                            imageColor:"#646669"
                            color:"#323437"
                        }

                        Item{
                            Layout.fillWidth:true
                        }
                        Button{
                            hoverColor:'white'
                            pressColor:'#646669'
                            Layout.alignment:Qt.AlignBottom
                            implicitHeight:monkeytype_name.height-15
                            implicitWidth:28
                            imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M224 512c35.3 0 64-28.7 64-64H160c0 35.4 28.7 64 64 64zm215.4-149.7c-19.3-20.8-55.5-52-55.5-154.3 0-77.7-54.5-139.9-127.9-155.2V32c0-17.7-14.3-32-32-32s-32 14.3-32 32v20.8C118.6 68.1 64.1 130.3 64.1 208c0 102.3-36.2 133.5-55.5 154.3-6 6.5-8.7 14.2-8.6 21.7 .1 16.4 13 32 32.1 32h383.8c19.1 0 32-15.6 32.1-32 .1-7.6-2.6-15.3-8.6-21.7z"/></svg>'
                            imageSize.height:height-8
                            buttonText:''
                            imageColor:"#646669"
                            color:"#323437"
                        }
                        Button{
                            hoverColor:'white'
                            pressColor:'#646669'
                            Layout.alignment:Qt.AlignBottom
                            implicitHeight:monkeytype_name.height-15
                            implicitWidth:28
                            imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M313.6 304c-28.7 0-42.5 16-89.6 16-47.1 0-60.8-16-89.6-16C60.2 304 0 364.2 0 438.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-25.6c0-74.2-60.2-134.4-134.4-134.4zM400 464H48v-25.6c0-47.6 38.8-86.4 86.4-86.4 14.6 0 38.3 16 89.6 16 51.7 0 74.9-16 89.6-16 47.6 0 86.4 38.8 86.4 86.4V464zM224 288c79.5 0 144-64.5 144-144S303.5 0 224 0 80 64.5 80 144s64.5 144 144 144zm0-240c52.9 0 96 43.1 96 96s-43.1 96-96 96-96-43.1-96-96 43.1-96 96-96z"/></svg>'
                            imageSize.height:height-8
                            buttonText:''
                            imageColor:"#646669"
                            color:"#323437"
                        }
                    }
                }
                Rectangle{
                    id:mainMenu
                    Layout.alignment:Qt.AlignCenter
                    Layout.preferredWidth:parent.width*0.9
                    Layout.maximumWidth:870
                    radius: 8
                    height:40
                    color:'#2c2e31'
                    Flickable {
                        clip: true
                        boundsBehavior: Flickable.StopAtBounds
                        anchors.fill:parent
                        anchors.leftMargin:25
                        anchors.rightMargin:25
                        anchors.topMargin:10
                        contentWidth: mainRows.width +5; contentHeight: mainRows.height
                        flickableDirection: Flickable.HorizontalFlick
                        ScrollBar.horizontal: ScrollBar {
                            implicitHeight:8
                        }
                        RowLayout{
                            id:mainRows
                            // anchors.fill:parent
                            spacing:20
                            RowButton{
                                hoverColor:'white'
                                pressColor:'#646669'
                                // implicitWidth:content.width
                                Layout.alignment:Qt.AlignBottom
                                implicitHeight:parent.height
                                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M256 8C118.9 8 8 118.9 8 256c0 137.1 110.9 248 248 248 48.2 0 95.3-14.1 135.4-40.2 12-7.8 14.6-24.3 5.6-35.4l-10.2-12.4c-7.7-9.4-21.2-11.7-31.4-5.1C325.9 429.8 291.3 440 256 440c-101.5 0-184-82.5-184-184S154.5 72 256 72c100.1 0 184 57.6 184 160 0 38.8-21.1 79.7-58.2 83.7-17.3-.5-16.9-12.9-13.5-30l23.4-121.1C394.7 149.8 383.3 136 368.2 136h-45a13.5 13.5 0 0 0 -13.4 12l0 .1c-14.7-17.9-40.4-21.8-60-21.8-74.6 0-137.8 62.2-137.8 151.5 0 65.3 36.8 105.9 96 105.9 27 0 57.4-15.6 75-38.3 9.5 34.1 40.6 34.1 70.7 34.1C462.6 379.4 504 307.8 504 232 504 95.7 394 8 256 8zm-21.7 304.4c-22.2 0-36.1-15.6-36.1-40.8 0-45 30.8-72.7 58.6-72.7 22.3 0 35.6 15.2 35.6 40.8 0 45.1-33.9 72.7-58.2 72.7z"/></svg>'
                                imageSize.height:height-8
                                buttonText:'punctuation'
                                fontWeight:500
                                fontSize:10
                                imageColor:"#646669"
                                textColor:"#646669"
                                color:"transparent"
                            }
                            RowButton{
                                hoverColor:'white'
                                pressColor:'#646669'
                                // implicitWidth:content.width
                                Layout.alignment:Qt.AlignBottom
                                implicitHeight:parent.height
                                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M440.7 182.1l7.1-40c1.3-7.4-4.3-14.1-11.8-14.1h-74.8l14.6-81.9C377.1 38.8 371.5 32 364 32h-40.6a12 12 0 0 0 -11.8 9.9L296.2 128H197.5l14.6-81.9C213.5 38.8 207.8 32 200.4 32h-40.6a12 12 0 0 0 -11.8 9.9L132.5 128H53.4a12 12 0 0 0 -11.8 9.9l-7.1 40C33.2 185.2 38.8 192 46.3 192h74.8L98.2 320H19.1a12 12 0 0 0 -11.8 9.9l-7.1 40C-1.1 377.2 4.5 384 12 384h74.8L72.2 465.9C70.9 473.2 76.5 480 84 480h40.6a12 12 0 0 0 11.8-9.9L151.8 384h98.6l-14.6 81.9C234.5 473.2 240.2 480 247.7 480h40.6a12 12 0 0 0 11.8-9.9L315.5 384h79.1a12 12 0 0 0 11.8-9.9l7.1-40c1.3-7.4-4.3-14.1-11.8-14.1h-74.8l22.9-128h79.1a12 12 0 0 0 11.8-9.9zM261.9 320h-98.6l22.9-128h98.6l-22.9 128z"/></svg>'
                                imageSize.height:height-8
                                buttonText:'numbers'
                                fontWeight:500
                                fontSize:10
                                imageColor:"#646669"
                                textColor:"#646669"
                                color:"transparent"
                            }
                            Rectangle{
                                width:4
                                Layout.fillHeight: true
                                color:"#323437"
                                radius:4
                            }
                            RowButton{
                                hoverColor:'white'
                                pressColor:'#646669'
                                // implicitWidth:content.width
                                Layout.alignment:Qt.AlignBottom
                                implicitHeight:parent.height
                                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M256 8C119 8 8 119 8 256S119 504 256 504 504 393 504 256 393 8 256 8zm92.5 313h0l-20 25a16 16 0 0 1 -22.5 2.5h0l-67-49.7a40 40 0 0 1 -15-31.2V112a16 16 0 0 1 16-16h32a16 16 0 0 1 16 16V256l58 42.5A16 16 0 0 1 348.5 321z"/></svg>'
                                imageSize.height:height-8
                                buttonText:'time'
                                fontWeight:500
                                fontSize:10
                                checkable:true
                                autoExclusive: true
                                imageColor:checked? "#e2b714":"#646669"
                                textColor:checked? "#e2b714":"#646669"
                                color:"transparent"
                                onClicked:{
                                    checked=true
                                }
                            }
                            RowButton{
                                hoverColor:'white'
                                pressColor:'#646669'
                                // implicitWidth:content.width
                                Layout.alignment:Qt.AlignBottom
                                implicitHeight:parent.height
                                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M432 416h-23.4L277.9 53.7A32 32 0 0 0 247.6 32h-47.2a32 32 0 0 0 -30.3 21.7L39.4 416H16a16 16 0 0 0 -16 16v32a16 16 0 0 0 16 16h128a16 16 0 0 0 16-16v-32a16 16 0 0 0 -16-16h-19.6l23.3-64h152.6l23.3 64H304a16 16 0 0 0 -16 16v32a16 16 0 0 0 16 16h128a16 16 0 0 0 16-16v-32a16 16 0 0 0 -16-16zM176.9 272L224 142.5 271.2 272z"/></svg>'
                                imageSize.height:height-8
                                buttonText:'words'
                                fontWeight:500
                                fontSize:10
                                checked:true
                                checkable:true
                                autoExclusive: true
                                imageColor:checked? "#e2b714":"#646669"
                                textColor:checked? "#e2b714":"#646669"
                                color:"transparent"
                                onClicked:{
                                    checked=true
                                }
                            }
                            RowButton{
                                hoverColor:'white'
                                pressColor:'#646669'
                                // implicitWidth:content.width
                                Layout.alignment:Qt.AlignBottom
                                implicitHeight:parent.height
                                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M464 256h-80v-64c0-35.3 28.7-64 64-64h8c13.3 0 24-10.7 24-24V56c0-13.3-10.7-24-24-24h-8c-88.4 0-160 71.6-160 160v240c0 26.5 21.5 48 48 48h128c26.5 0 48-21.5 48-48V304c0-26.5-21.5-48-48-48zm-288 0H96v-64c0-35.3 28.7-64 64-64h8c13.3 0 24-10.7 24-24V56c0-13.3-10.7-24-24-24h-8C71.6 32 0 103.6 0 192v240c0 26.5 21.5 48 48 48h128c26.5 0 48-21.5 48-48V304c0-26.5-21.5-48-48-48z"/></svg>'
                                imageSize.height:height-8
                                buttonText:'quote'
                                fontWeight:500
                                fontSize:10
                                checkable:true
                                autoExclusive: true
                                imageColor:checked? "#e2b714":"#646669"
                                textColor:checked? "#e2b714":"#646669"
                                color:"transparent"
                                onClicked:{
                                    checked=true
                                }
                            }
                            RowButton{
                                hoverColor:'white'
                                pressColor:'#646669'
                                // implicitWidth:content.width
                                Layout.alignment:Qt.AlignBottom
                                implicitHeight:parent.height
                                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M634.9 462.7l-288-448C341 5.5 330.9 0 320 0s-21 5.5-26.9 14.7l-288 448a32 32 0 0 0 -1.2 32.6A32 32 0 0 0 32 512h576c11.7 0 22.5-6.4 28.1-16.7a32 32 0 0 0 -1.2-32.6zM320 91.2L405.4 224H320l-64 64-38.1-38.1L320 91.2z"/></svg>'
                                imageSize.height:height-8
                                buttonText:'zen'
                                fontWeight:500
                                fontSize:10
                                checkable:true
                                autoExclusive: true
                                imageColor:checked? "#e2b714":"#646669"
                                textColor:checked? "#e2b714":"#646669"
                                color:"transparent"
                                onClicked:{
                                    checked=true
                                }
                            }
                            RowButton{
                                hoverColor:'white'
                                pressColor:'#646669'
                                // implicitWidth:content.width
                                Layout.alignment:Qt.AlignBottom
                                implicitHeight:parent.height
                                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M507.7 109.1c-2.2-9-13.5-12.1-20.1-5.5l-74.4 74.4-67.9-11.3-11.3-67.9 74.4-74.4c6.6-6.6 3.4-17.9-5.7-20.2-47.4-11.7-99.6 .9-136.6 37.9-39.6 39.6-50.6 97.1-34.1 147.2L18.7 402.8c-25 25-25 65.5 0 90.5 25 25 65.5 25 90.5 0l213.2-213.2c50.1 16.7 107.5 5.7 147.4-34.2 37.1-37.1 49.7-89.3 37.9-136.7zM64 472c-13.3 0-24-10.8-24-24 0-13.3 10.8-24 24-24s24 10.7 24 24c0 13.3-10.8 24-24 24z"/></svg>'
                                imageSize.height:height-8
                                buttonText:'custom'
                                fontWeight:500
                                fontSize:10
                                checkable:true
                                autoExclusive: true
                                imageColor:checked? "#e2b714":"#646669"
                                textColor:checked? "#e2b714":"#646669"
                                color:"transparent"
                                onClicked:{
                                    checked=true
                                }
                            }
                            Rectangle{
                                width:4
                                Layout.fillHeight: true
                                color:"#323437"
                                radius:4
                            }
                            Repeater{
                                model:[10,25 ,50 ,100]
                                delegate :Button{
                                    hoverColor:'white'
                                    pressColor:'#646669'
                                    Layout.alignment:Qt.AlignBottom
                                    implicitHeight:parent.height
                                    implicitWidth:20
                                    buttonText:modelData
                                    fontSize:9
                                    fontWeight:400
                                    textColor:checked ? "#e2b714" :"#646669"
                                    color:"transparent"
                                    checkable:true
                                    autoExclusive: true
                                    onClicked:{
                                        checked=true
                                    }
                                }
                            }
                            Button{
                                hoverColor:'white'
                                pressColor:'#646669'
                                Layout.alignment:Qt.AlignBottom
                                implicitHeight:parent.height
                                implicitWidth:20
                                imageSize.height:height-8
                                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M501.1 395.7L384 278.6c-23.1-23.1-57.6-27.6-85.4-13.9L192 158.1V96L64 0 0 64l96 128h62.1l106.6 106.6c-13.6 27.8-9.2 62.3 13.9 85.4l117.1 117.1c14.6 14.6 38.2 14.6 52.7 0l52.7-52.7c14.5-14.6 14.5-38.2 0-52.7zM331.7 225c28.3 0 54.9 11 74.9 31l19.4 19.4c15.8-6.9 30.8-16.5 43.8-29.5 37.1-37.1 49.7-89.3 37.9-136.7-2.2-9-13.5-12.1-20.1-5.5l-74.4 74.4-67.9-11.3L334 98.9l74.4-74.4c6.6-6.6 3.4-17.9-5.7-20.2-47.4-11.7-99.6 .9-136.6 37.9-28.5 28.5-41.9 66.1-41.2 103.6l82.1 82.1c8.1-1.9 16.5-2.9 24.7-2.9zm-103.9 82l-56.7-56.7L18.7 402.8c-25 25-25 65.5 0 90.5s65.5 25 90.5 0l123.6-123.6c-7.6-19.9-9.9-41.6-5-62.7zM64 472c-13.2 0-24-10.8-24-24 0-13.3 10.7-24 24-24s24 10.7 24 24c0 13.2-10.7 24-24 24z"/></svg>'
                                buttonText:''
                                imageColor:checked ? "#e2b714" :"#646669"
                                color:"transparent"
                                checkable:true
                                autoExclusive: true
                                onClicked:{
                                    checked=true
                                }
                            }
                        }
                    }
                }
                RowButton{
                    hoverColor:'white'
                    pressColor:'#646669'
                    // implicitWidth:content.width
                    content.spacing:20
                    Layout.alignment:Qt.AlignCenter
                    implicitHeight:content.height
                    imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M248 8C111 8 0 119 0 256s111 248 248 248 248-111 248-248S385 8 248 8zm82.3 357.6c-3.9 3.9-8 8-11.3 11.3-3 3-5.1 6.7-6.2 10.7-1.5 5.7-2.7 11.4-4.8 16.9l-17.4 46.9c-13.8 3-28 4.7-42.7 4.7v-27.4c1.7-12.6-7.6-36.3-22.6-51.3-6-6-9.4-14.1-9.4-22.6v-32c0-11.6-6.3-22.3-16.5-28-14.4-8-34.8-19.1-48.8-26.1-11.5-5.8-22.1-13.1-31.7-21.8l-.8-.7a114.8 114.8 0 0 1 -18.1-20.7c-9.4-13.8-24.7-36.4-34.6-51.1 20.5-45.5 57.4-82 103.2-101.9l24 12C203.5 89.7 216 82 216 70.1v-11.3c8-1.3 16.1-2.1 24.4-2.4l28.3 28.3c6.3 6.3 6.3 16.4 0 22.6L264 112l-10.3 10.3c-3.1 3.1-3.1 8.2 0 11.3l4.7 4.7c3.1 3.1 3.1 8.2 0 11.3l-8 8a8 8 0 0 1 -5.7 2.3h-9c-2.1 0-4.1 .8-5.6 2.3l-9.9 9.7a8 8 0 0 0 -1.6 9.3l15.6 31.2c2.7 5.3-1.2 11.6-7.2 11.6h-5.6c-1.9 0-3.8-.7-5.2-2l-9.3-8.1a16 16 0 0 0 -15.6-3.1l-31.2 10.4a12 12 0 0 0 -8.2 11.3c0 4.5 2.6 8.7 6.6 10.7l11.1 5.5c9.4 4.7 19.8 7.2 30.3 7.2s22.6 27.3 32 32h66.8c8.5 0 16.6 3.4 22.6 9.4l13.7 13.7a30.5 30.5 0 0 1 8.9 21.6 46.5 46.5 0 0 1 -13.7 33zM417 274.3c-5.8-1.5-10.8-5-14.2-10l-18-27a24 24 0 0 1 0-26.6l19.6-29.4c2.3-3.5 5.5-6.3 9.2-8.2l13-6.5C440.2 193.6 448 223.9 448 256c0 8.7-.7 17.2-1.8 25.5L417 274.3z"/></svg>'
                    imageSize.height:height-4
                    buttonText:'english'
                    fontWeight:500
                    fontSize:12
                    checkable:true
                    autoExclusive: true
                    imageColor:checked? "#e2b714":"#646669"
                    textColor:checked? "#e2b714":"#646669"
                    color:"transparent"
                    onClicked:{
                        checked=!checked
                    }
                }
                Behavior on opacity{
                    NumberAnimation {
                        duration: 300
                        easing.type: Easing.InOutQuad
                    }
                }
                PropertyChanges{ enabled:!textEdit.active}
                
            }
            Rectangle{
                id:content_textEdit
                Layout.fillWidth:true
                Layout.fillHeight:true
                color:"transparent"
                Text {
                    id: wordCounter
                    // property int wordCount :0
                    anchors.bottom:parent.top
                    anchors.bottomMargin:10
                    opacity:!textEdit.active ? 0:1
                    text: textEdit.cursorPosition + "/" + textEdit.length
                    font.pointSize: 16
                    color: "#e2b714"
                    horizontalAlignment: Text.AlignLeft
                    font.family: "Roboto Mono"
                    font.weight: 600
                }
                Flickable {
                    id: flick

                    // width: 300; height: 200;
                    // Layout.fillWidth:true
                    anchors.fill:parent
                    // height:200
                    contentWidth: textEdit.contentWidth
                    contentHeight: textEdit.contentHeight
                    clip: true
                    interactive:false
                    boundsBehavior: Flickable.StopAtBounds
                    flickableDirection: Flickable.VerticalFlick


                    function ensureVisible(r)
                    {
                        if (contentX >= r.x)
                            contentX = r.x;
                        else if (contentX+width <= r.x+r.width)
                            contentX = r.x+r.width-width;
                        if (contentY >= r.y)
                            contentY = r.y ;
                        else if ((contentY+height)/2 <= r.y+r.height)
                            contentY = r.y+r.height-height/2;
                    }
                    
                    TextEdit{
                        
                        id:textEdit
                        // Layout.fillWidth:true
                        width:flick.width
                        onCursorRectangleChanged: flick.ensureVisible(cursorRectangle)
                        selectByMouse :false
                        focus:true
                        // anchors{
                        //     left:parent.left
                        //     right:parent.right
                        //     // bottom:parent.bottom
                        //     top:parent.top
                        //     margins:50
                        // }
                        // width:refText.implicitWidth
                        // anchors.topMargin:10
                        wrapMode: TextEdit.Wrap
                        textFormat: TextEdit.RichText
                        text:"<p style='line-height:100%;color:#646669' >"+"get new become will each program go group large first great make get child end"+"</p>"
                        
                        // text:"
                        //         <!DOCTYPE html>
                        //         <html>
                        //         <head>
                        //         <style>
                        //         p{
                        //         color:'#646669' ;
                        //         line-height:220%;
                        //         }

                        //         </style>
                        //         </head>
                        //         <body>
                        //         <p>get new become will each program go group large first great make get child end small could each place system help want most interest fact keep those little mean want here know could even make very over come set line about those present after may increase follow now old</p>
                        //         </body>
                        //         </html>


                        //         "
                        font.family:'Roboto Mono'
                        font.pointSize:18
                        Component.onCompleted:{
                            currentWord=getText(cursorPosition,cursorPosition+getText(cursorPosition,text.length-1).indexOf(" "))
                            // cursorPosition=1
                            // console.log(currentWord+">")
                        }
                        // color:'white'
                        // color:"transparent"
                        // focus:true
                        // echoMode:TextInput.NoEcho
                        // selectedTextColor:'green'
                        // inputMethodHints :Qt.ImhrefText
                        // echoMode:TextInput.Password
                        // passwordCharacter : " "
                        // cursorVisible: false
                        property int rlength:0
                        // property var mistakes:{
                        //     'test':''
                        // }
                        // Keys.onBackPressed:{
                        //         console.log('hdf')
                        //     }
                        // Keys.onPressed: {
                        //     if (event.key === Qt.Key_Backspace) {
                        //         console.log("Backspace pressed")
                        //         // Additional handling for backspace can be done here
                        //     }
                        // }
                        // overwriteMode :true
                        // Rectangle{
                        //     anchors.left:parent.cursorDelegate.right
                        //     height:20
                        //     width:2
                        //     color:'blue'
                        //     x:parent.cursorPosition*14
                        //     Behavior on x{ NumberAnimation { easing.type:Easing.OutQuart ;duration:500 } }

                        //     }
                        cursorDelegate: Rectangle{
                            visible:false
                        }
                        // activeFocusOnPress :true
                        onEditingFinished:{
                            // console.log('edit finished')
                            // console.log(length)
                        }
                        selectionColor : "#e2b714"
                        Rectangle {
                            id:cursorDelegate_
                            width: 2
                            height:32
                            color: 'yellow'
                            radius: 3
                            x:parent.cursorRectangle.x
                            y:parent.cursorRectangle.y
                            Behavior on x {
                                NumberAnimation {
                                    easing.type: Easing.OutQuart
                                    duration: 200
                                }
                            }
                            // Component.onCompleted:{
                            //     console.log('jhel')
                            // }
                            SequentialAnimation on opacity { 
                                alwaysRunToEnd:true
                                running: !textEdit.active; 
                                loops: Animation.Infinite;
                                NumberAnimation { to: 0; duration: 500; easing.type: "OutQuad"}
                                NumberAnimation { to: 1; duration: 500; easing.type: "InQuad"}
                            }
                            // Behavior on y { NumberAnimation { easing.type:Easing.OutQuart } }
                        }
                        // Behavior on cursorPosition { NumberAnimation { target:'cursorDelegate.x' ;easing.type:Easing.OutQuart ;duration:500 } }
                        // onCursorRectangleChanged: {
                        //     console.log('jhl')
                        // }
                        Keys.onPressed:event=>{
                            active=true
                            // selectWord()

                            // event.accepted=true
                            // Check if Ctrl key is pressed
                            if (event.modifiers & Qt.ControlModifier) {
                                if (event.key === Qt.Key_Backspace) {
                                    if(cursorPosition===currentWordIndex){
                                        event.accepted=true
                                        return
                                    }

                                    // console.log(getText(0,cursorPosition) + ">")
                                    // var delspace = getText(0,cursorPosition).trim().lastIndexOf(" ")
                                    // console.log(delspace)
                                    // var resetText=getText(delspace+1,cursorPosition)
                                    var writtenText=getText(currentWordIndex,cursorPosition)
                                    if(writtenText.length >= currentWord.length){
                                        // remove(currentWordIndex,cursorPosition)
                                        insert(cursorPosition,"<font color='#646669'>"+currentWord+"</font>")
                                        cursorPosition=cursorPosition-currentWord.length
                                    }else{
                                        insert(cursorPosition,"<font color='#646669'>"+writtenText+"</font>")
                                        cursorPosition=cursorPosition-writtenText.length
                                    }
                                    // console.log(resetText)
                                    // insert(cursorPosition,getText(0,cursorPosition))
                                    // event.accepted=true
                                    // console.log('ctrl back : '+ lastspace+" "+typedText.text.length)
                                    // event.accepted = true
                                    // if (lastspace-typedText.text.length+1!==0){
                                        // Trim any trailing whitespace

                                    // var text = text.trimEnd();

                                    // Find the position of the last space
                                    // let lastSpaceIndex = typedText.text.trim().lastIndexOf("> <");

                                    // console.log(typedText.text)
                                    // // If there's no space, it means there's only one word, so the result would be empty
                                    // if (lastSpaceIndex === -1) {
                                    //     console.log('wipe')
                                    //     typedText.text=''
                                    // }

                                    // for(i)

                                    // typedText.text = typedText.text.slice(0,lastSpaceIndex+1)
                                    // console.log(typedText.text + "| l : "+typedText.text.length)
                                    return
                                }
                                return
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
                                return
                            }
                            if (event.key === Qt.Key_Left){
                                // event.accepted = true
                                return
                            }
                            if (event.key === Qt.Key_Up){
                                // event.accepted = true
                                return
                            }
                            if (event.key === Qt.Key_Right){
                                // event.accepted = true
                                return
                            }
                            if (event.key === Qt.Key_Down){
                                // event.accepted = true
                                return
                            }
                            if (event.key === Qt.Key_Backspace){

                                if(cursorPosition===currentWordIndex){
                                    event.accepted=true
                                    return
                                }

                                if(getText(currentWordIndex,cursorPosition).length > currentWord.length){
                                    return
                                }else{
                                    // remove(cursorPosition,cursorPosition)
                                    insert(cursorPosition,"<font color='#646669'>"+currentWord[cursorPosition-currentWordIndex-1]+"</font>")
                                    cursorPosition--
                                }
                                // console.log('I didd back')
                                // if (typedText.text[typedText.text.length-1] ===">"){

                                //     typedText.text = typedText.text.slice(0, -26)
                                // }
                                // else{
                                //     typedText.text = typedText.text.slice(0, -1)
                                // }
                                return
                            }
                            if (event.key === Qt.Key_Escape){
                                // console.log('helo')
                                focus=false

                            }
                            if (event.key === Qt.Key_Space){
                                if(cursorPosition-currentWordIndex===currentWord.length){
                                    // console.log("yas")
                                    // word is written and not skipped
                                    writtenWords++
                                }
                                // console.log('I didd space '+ lastspace)
                                // console.log(currentWord + ">")
                                // console.log(currentWord.length + ">")
                                // console.log(cursorPosition-currentWordIndex===currentWord.length)
                                // console.log("curpos: "+ cursorPosition)
                                // console.log(getText(currentWordIndex,cursorPosition) + ">")
                                // if(getText(currentWordIndex,cursorPosition) === currentWord){
                                //     console.log('naaah')
                                // }
                                // var delspace = getText(cursorPosition,text.length-1).indexOf(" ")
                                // console.log(delspace)
                                // console.log(getText(cursorPosition,text.length-1))
                                cursorPosition = cursorPosition+ getText(cursorPosition,text.length-1).indexOf(" ")+1
                                // remove(cursorPosition,cursorPosition+1)
                                currentWord=getText(cursorPosition,cursorPosition+getText(cursorPosition,text.length-1).indexOf(" "))
                                currentWordIndex=cursorPosition


                                // console.log(currentWord+">")
                                
                                event.accepted=true
                                return
                            }
                            if (getText(cursorPosition,cursorPosition+1)===" "){
                                console.log('spce')
                                insert(cursorPosition,"<font color='#7e2a33'>"+event.text+"</font>")
                                event.accepted =true
                                return
                            }


                            var eventText=event.text !==" "?event.text : "&nbsp;"
                            // console.log('I typed :<'+textEdit.length+'>')
                            // console.log(cursorPosition)
                            var charColor=event.text === getText(cursorPosition,cursorPosition+1) ? "#d1d0c5":"#ca4754"
                            // insert(currentWordIndex,"<u>")
                            insert(cursorPosition,"<font color='"+charColor+"'>"+(getText(cursorPosition,cursorPosition+1))+"</font>")
                            // insert(cursorPosition,"<font color='red'>"+eventText+"</font>")
                            remove(cursorPosition,cursorPosition+1)
                            // console.log(cursorPosition)
                            // cursorPosition++
                            // console.log('cursor :<'+cursorPosition+'>')
                            // // textEdit.insert(textEdit.length,event.text)
                            if(cursorPosition === length){
                                finished_test.open()
                                active=false
                            }
                            event.accepted =true
                            // addedChar=true
                        }
                        property string currentWord
                        property int currentWordIndex
                        property int lastspace:0
                        property bool addedChar:false

                        property bool active:false
                        property int writtenWords:0
                        // property bool active:cursorPosition!==textEdit.length
                        // property var results:[34,53,59]

                        Timer {
                            id:timer
                            interval: 1000
                            property int timeStep: 1
                            repeat: true
                            running: textEdit.active
                            // triggeredOnStart:true
                            property int maxSpeed:0
                            onTriggered: {
                                // if( timeStep===3){
                                //     return
                                // }
                                // textEdit.results[timeStep]=textEdit.clicks

                                // for cpm
                                // var speed=Math.round((textEdit.cursorPosition/timeStep)*60)
                                // series1.append(timeStep,speed)
                                // if(speed> maxSpeed){
                                //     maxSpeed=speed
                                // }

                                // for wpm
                                var speed=Math.round((textEdit.writtenWords/timeStep)*60)
                                // console.log(speed)
                                series1.append(timeStep,speed)
                                if(speed> maxSpeed){
                                    maxSpeed=speed
                                }

                                timeStep++
                                // clicks=0
                            }
                        }

                        MouseArea{
                            anchors.fill:parent
                            hoverEnabled:true
                            onPositionChanged: {
                                
                                // if (!containsMouse)
                                textEdit.active=false
                            }
                            onClicked:{
                                // timer.clicks++
                                // console.log('hello my name is mouseare')
                                // textEdit.focus=true
                            }
                        }
                    }
                }
            }
            Popup {
                id:finished_test
                // Component.onCompleted:{
                //     open()
                // }
                parent:Overlay.overlay
                anchors.centerIn:parent
                modal: false
                // dim:true
                focus: true
                closePolicy: Popup.NoAutoClose
                padding: 0
                onOpened: {
                    // Disable interaction with the current page
                    // stack.busy
                    // console.log(textEdit.active)
                }

                onClosed: {
                    // Re-enable interaction with the current page
                }
                
                enter: Transition {
                    // grow_fade_in
                    NumberAnimation {
                        property: "opacity"
                        from: 0.0
                        to: 1.0
                        easing.type: Easing.InOutQuad
                        duration: 150
                    }
                }

                exit: Transition {
                    // shrink_fade_out
                    NumberAnimation {
                        property: "opacity"
                        from: 1.0
                        to: 0.0
                        easing.type: Easing.InOutQuad
                        duration: 150
                    }
                }
                background: Rectangle {
                    radius: 6
                    color: '#d7d7d7'
                    // color:Qt.rgba(0,0,0,0)
                }

                Rectangle {
                    implicitWidth: root_app.width
                    implicitHeight: root_app.height 
                    color: '#323437'
                    ColumnLayout{
                        anchors.fill:parent
                        anchors.margins:34
                        spacing:80
                        RowLayout{
                            Layout.fillWidth:true
                            spacing:6
                            ColorImage{
                                // Layout.alignment:Qt.AlignCenter
                                Layout.topMargin:5
                                source:'./images/logo.svg'
                                color:'#e2b714'
                                sourceSize.height:23
                            }
                            Text{
                                Layout.alignment:Qt.AlignTop
                                text:"<font color='#a6e214'>Qt</font>monkeytype"
                                textFormat: TextEdit.RichText
                                font.family:'Lexend Deca'
                                font.weight:600
                                font.pointSize:25
                                color:'#d1d0c5'
                                Text{
                                    anchors.top:parent.top
                                    anchors.left:parent.left
                                    anchors.topMargin:-2
                                    anchors.leftMargin:40
                                    text:"monkey see"
                                    font.family:'Lexend Deca'
                                    font.pointSize:9
                                    color:'#646669'
                                }
                            }
                            RowLayout{
                                Layout.leftMargin:10
                                Layout.fillWidth:true
                                Layout.fillHeight:true
                                spacing:20
                                Button{
                                    hoverColor:'white'
                                    pressColor:'#646669'
                                    Layout.alignment:Qt.AlignBottom
                                    implicitHeight:monkeytype_name.height-15
                                    implicitWidth:28
                                    imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M528 448H48c-26.5 0-48-21.5-48-48V112c0-26.5 21.5-48 48-48h480c26.5 0 48 21.5 48 48v288c0 26.5-21.5 48-48 48zM128 180v-40c0-6.6-5.4-12-12-12H76c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm-336 96v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm-336 96v-40c0-6.6-5.4-12-12-12H76c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm288 0v-40c0-6.6-5.4-12-12-12H172c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h232c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12z"/></svg>'
                                    imageSize.width:20
                                    buttonText:''
                                    imageColor:"#646669"
                                    color:"#323437"
                                }
                                Button{
                                    hoverColor:'white'
                                    pressColor:'#646669'
                                    Layout.alignment:Qt.AlignBottom
                                    implicitHeight:monkeytype_name.height-15
                                    implicitWidth:28
                                    imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M528 448H112c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h416c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zm64-320c-26.5 0-48 21.5-48 48 0 7.1 1.6 13.7 4.4 19.8L476 239.2c-15.4 9.2-35.3 4-44.2-11.6L350.3 85C361 76.2 368 63 368 48c0-26.5-21.5-48-48-48s-48 21.5-48 48c0 15 7 28.2 17.7 37l-81.5 142.6c-8.9 15.6-28.9 20.8-44.2 11.6l-72.3-43.4c2.7-6 4.4-12.7 4.4-19.8 0-26.5-21.5-48-48-48S0 149.5 0 176s21.5 48 48 48c2.6 0 5.2-.4 7.7-.8L128 416h384l72.3-192.8c2.5 .4 5.1 .8 7.7 .8 26.5 0 48-21.5 48-48s-21.5-48-48-48z"/></svg>'
                                    imageSize.width:20
                                    buttonText:''
                                    imageColor:"#646669"
                                    color:"#323437"
                                }
                                Button{
                                    hoverColor:'white'
                                    pressColor:'#646669'
                                    Layout.alignment:Qt.AlignBottom
                                    implicitHeight:monkeytype_name.height-15
                                    implicitWidth:28
                                    imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 192 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M20 424.2h20V279.8H20c-11 0-20-9-20-20V212c0-11 9-20 20-20h112c11 0 20 9 20 20v212.2h20c11 0 20 9 20 20V492c0 11-9 20-20 20H20c-11 0-20-9-20-20v-47.8c0-11 9-20 20-20zM96 0C56.2 0 24 32.2 24 72s32.2 72 72 72 72-32.2 72-72S135.8 0 96 0z"/></svg>'
                                    imageSize.height:height-8
                                    buttonText:''
                                    imageColor:"#646669"
                                    color:"#323437"
                                }
                                Button{
                                    hoverColor:'white'
                                    pressColor:'#646669'
                                    Layout.alignment:Qt.AlignBottom
                                    implicitHeight:monkeytype_name.height-15
                                    implicitWidth:28
                                    imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M487.4 315.7l-42.6-24.6c4.3-23.2 4.3-47 0-70.2l42.6-24.6c4.9-2.8 7.1-8.6 5.5-14-11.1-35.6-30-67.8-54.7-94.6-3.8-4.1-10-5.1-14.8-2.3L380.8 110c-17.9-15.4-38.5-27.3-60.8-35.1V25.8c0-5.6-3.9-10.5-9.4-11.7-36.7-8.2-74.3-7.8-109.2 0-5.5 1.2-9.4 6.1-9.4 11.7V75c-22.2 7.9-42.8 19.8-60.8 35.1L88.7 85.5c-4.9-2.8-11-1.9-14.8 2.3-24.7 26.7-43.6 58.9-54.7 94.6-1.7 5.4 .6 11.2 5.5 14L67.3 221c-4.3 23.2-4.3 47 0 70.2l-42.6 24.6c-4.9 2.8-7.1 8.6-5.5 14 11.1 35.6 30 67.8 54.7 94.6 3.8 4.1 10 5.1 14.8 2.3l42.6-24.6c17.9 15.4 38.5 27.3 60.8 35.1v49.2c0 5.6 3.9 10.5 9.4 11.7 36.7 8.2 74.3 7.8 109.2 0 5.5-1.2 9.4-6.1 9.4-11.7v-49.2c22.2-7.9 42.8-19.8 60.8-35.1l42.6 24.6c4.9 2.8 11 1.9 14.8-2.3 24.7-26.7 43.6-58.9 54.7-94.6 1.5-5.5-.7-11.3-5.6-14.1zM256 336c-44.1 0-80-35.9-80-80s35.9-80 80-80 80 35.9 80 80-35.9 80-80 80z"/></svg>'
                                    imageSize.height:height-8
                                    buttonText:''
                                    imageColor:"#646669"
                                    color:"#323437"
                                }

                                Item{
                                    Layout.fillWidth:true
                                }
                                Button{
                                    hoverColor:'white'
                                    pressColor:'#646669'
                                    Layout.alignment:Qt.AlignBottom
                                    implicitHeight:monkeytype_name.height-15
                                    implicitWidth:28
                                    imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M224 512c35.3 0 64-28.7 64-64H160c0 35.4 28.7 64 64 64zm215.4-149.7c-19.3-20.8-55.5-52-55.5-154.3 0-77.7-54.5-139.9-127.9-155.2V32c0-17.7-14.3-32-32-32s-32 14.3-32 32v20.8C118.6 68.1 64.1 130.3 64.1 208c0 102.3-36.2 133.5-55.5 154.3-6 6.5-8.7 14.2-8.6 21.7 .1 16.4 13 32 32.1 32h383.8c19.1 0 32-15.6 32.1-32 .1-7.6-2.6-15.3-8.6-21.7z"/></svg>'
                                    imageSize.height:height-8
                                    buttonText:''
                                    imageColor:"#646669"
                                    color:"#323437"
                                }
                                Button{
                                    hoverColor:'white'
                                    pressColor:'#646669'
                                    Layout.alignment:Qt.AlignBottom
                                    implicitHeight:monkeytype_name.height-15
                                    implicitWidth:28
                                    imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M313.6 304c-28.7 0-42.5 16-89.6 16-47.1 0-60.8-16-89.6-16C60.2 304 0 364.2 0 438.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-25.6c0-74.2-60.2-134.4-134.4-134.4zM400 464H48v-25.6c0-47.6 38.8-86.4 86.4-86.4 14.6 0 38.3 16 89.6 16 51.7 0 74.9-16 89.6-16 47.6 0 86.4 38.8 86.4 86.4V464zM224 288c79.5 0 144-64.5 144-144S303.5 0 224 0 80 64.5 80 144s64.5 144 144 144zm0-240c52.9 0 96 43.1 96 96s-43.1 96-96 96-96-43.1-96-96 43.1-96 96-96z"/></svg>'
                                    imageSize.height:height-8
                                    buttonText:''
                                    imageColor:"#646669"
                                    color:"#323437"
                                }
                            }
                        }
                        GridLayout{
                            id:gridLayout
                            Layout.fillWidth:true
                            Layout.preferredHeight:80
                            columns:5
                            rows:3
                            columnSpacing: 0
                            rowSpacing: 0
                            

                            ColumnLayout {
                                Layout.fillWidth: true
                                Layout.alignment:Qt.AlignTop
                                // Layout.rowSpan: 1
                                // Layout.columnSpan: 1
                                Layout.row:0
                                Layout.column:0
                                spacing: -10
                                Text {
                                    text:"wpm"
                                    font.pointSize: 23
                                    color: "#646669"
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: "Roboto Mono"
                                    font.weight: 500
                                }
                                Text {
                                    text:"69"
                                    font.pointSize: 40
                                    color: "#e2b714"
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: "Roboto Mono"
                                    font.weight: 500
                                }

                            }

                            ChartView {
                                id: chartView
                                antialiasing: true
                                animationOptions: ChartView.SeriesAnimations
                                Layout.alignment:Qt.AlignTop
                                Layout.fillWidth:true
                                Layout.rowSpan: 2
                                Layout.columnSpan: 4
                                // Layout.row:0
                                // Layout.column:1
                                // Layout.preferredHeight:80
                                Layout.fillHeight:true
                                // plotAreaColor :'green'
                                backgroundColor :"transparent"
                                
                                // Layout.margins:-100

                                // anchors { fill: parent; margins: -15 }
                                margins { right: 0; bottom: 0; left: 0; top: 5 }

                                // titleFont: 'Roboto Mono'
                                legend.visible: false

                                ValueAxis {
                                    id: axisX
                                    // labelsAngle :-45
                                    Component.onCompleted:{
                                        min=1
                                    }
                                    min: 1
                                    max: series1.count
                                    tickCount :series1.count
                                    labelsColor:'#646669'
                                    labelFormat: "%d"
                                    gridLineColor :'#2e3033'
                                    labelsFont:roboto
                                    // minorTickCount :2
                                    // visible: false
                                }
                                ValueAxis {
                                    id: axisY
                                    min: 0
                                    max: timer.maxSpeed *1.1
                                    labelsColor:'#646669'
                                    labelFormat: "%d"
                                    gridLineColor :'#2e3033'
                                    labelsFont:roboto
                                    // labelsFont:'Roboto Mono'
                                    // visible:false
                                }
                                // AreaSeries {
                                //     borderColor: Qt.rgba(0, 0, 0, 0)
                                //     borderWidth: 0
                                //     // brush.color: "yellow"
                                //     axisX: axisX
                                //     axisY: axisY

                                //     upperSeries: series1
                                // }

                                Rectangle{
                                    id:ticket
                                    width:105
                                    height:85
                                    color: Qt.rgba(0,0,0,0.8)
                                    radius:4
                                    opacity:0
                                    
                                    Text {
                                        id: ticket_text
                                        anchors.top:parent.top
                                        anchors.left:parent.left
                                        anchors.margins:5

                                        text:"3"
                                        font.pointSize: 11
                                        color: "white"
                                        horizontalAlignment: Text.AlignLeft
                                        font.family: "Roboto Mono"
                                        font.weight: 700
                                    }
                                    ColumnLayout{
                                        anchors.bottom:parent.bottom
                                        anchors.left:parent.left
                                        anchors.right:parent.right
                                        anchors.margins:5
                                        spacing:-2
                                        Repeater{
                                            id:ticket_rep
                                            // property var ticket_model:[
                                            //     {"color":"red","text":"errors","val":"12"},
                                            //     {"color":"yellow","text":"wmp","val":"12"},
                                            //     {"color":"gray","text":"raw","val":"12"},
                                            // ]
                                            model:ListModel{
                                                id:ticket_model
                                                ListElement{color:"#ca4754";text:"errors";val:12}
                                                ListElement{color:"#e2b714";text:"wpm";val:12}
                                                ListElement{color:"#646669";text:"raw";val:12}


                                            }
                                            delegate:RowLayout{
                                                spacing:4
                                                Rectangle{
                                                    width:14
                                                    height:14
                                                    color:model.color
                                                }
                                                Text{
                                                    text:model.text+":"
                                                    font.pointSize: 10
                                                    color: "white"
                                                    horizontalAlignment: Text.AlignLeft
                                                    font.family: "Roboto Mono"
                                                    font.weight: 400
                                                }
                                                Text{
                                                    text:model.val
                                                    font.pointSize: 10
                                                    color: "white"
                                                    horizontalAlignment: Text.AlignLeft
                                                    font.family: "Roboto Mono"
                                                    font.weight: 400
                                                }
                                            }
                                        }
                                    }
                                    // visible:false

                                    // Behavior on x { SmoothedAnimation { velocity: 2200 } }
                                    // Behavior on y { SmoothedAnimation { velocity: 2200 } }
                                    Behavior on x {
                                        NumberAnimation{
                                            duration:500
                                            easing.type:Easing.OutExpo
                                        }
                                    }
                                    Behavior on y {
                                        NumberAnimation{
                                            duration:500
                                            easing.type:Easing.OutExpo
                                        }
                                    }
                                    Behavior on opacity{
                                        NumberAnimation {
                                            // duration: 300
                                            easing.type: Easing.InOutQuad
                                        }
                                    }
                                    PropertyChanges{ visible:opacity===1}

                                    // x:
                                }
                                MouseArea{
                                    anchors.fill:parent
                                    propagateComposedEvents:true
                                    hoverEnabled: true
                                    onPositionChanged:mouse=>{
                                        // console.log(mouse.x)
                                        // console.log(chartView.mapToValue(Qt.point(mouse.x,mouse.y)))
                                        var point=chartView.mapToValue(Qt.point(mouse.x,mouse.y))
                                        // console.log(Math.round(point.x))
                                        if ((Math.abs(point.x-Math.round(point.x))<0.5 )) {
                                            var seriesPoint = chartView.mapToPosition(Qt.point(Math.round(point.x),series1.at(Math.round(point.x)-1).y));
                                            // console.log(Math.round(point.x)+ "  "+ series1.at(Math.round(point.x)).y)
                                            ticket.x = seriesPoint.x - ticket.width / 2; // Center the text horizontally
                                            // console.log(seriesPoint.x)
                                            ticket.y = seriesPoint.y - ticket.height/2; // Position the text above the point
                                            ticket.opacity=1

                                            // ticket_text.text=Math.round(point.x)
                                            // ticket_rep.model.get(0).val=0
                                            ticket_rep.model.get(1).val=series1.at(Math.round(point.x)-1).y
                                            // ticket_rep.model.get(2).val=Math.random()
                                            // console.log(ticket_rep.ticket_model.wmp)
                                            // ticket.visible = true;
                                        }
                                    }
                                    onExited:{
                                        ticket.opacity=0
                                    }
                                    onClicked:{
                                        console.log('hello')
                                    }
                                }

                                SplineSeries {
                                    id: series1
                                    // Component.onCompleted:{
                                    //     append(0,14)
                                    //     append(2,5)
                                    //     append(3,8)
                                    //     append(4,18)
                                    //     append(5,9)
                                    // }
                                    axisX: axisX
                                    axisY: axisY
                                    color: '#e2b714'
                                    useOpenGL: true
                                    width: 3
                                    capStyle: Qt.RoundCap
                                    pointsVisible:true
                                    // pointLabelsVisible :true
                                    selectedColor :'green'
                                    onHovered:(point,state)=> {
                                    }
                                    
                                }
                                // AreaSeries {
                                //     borderColor: Qt.rgba(0, 0, 0, 0)
                                //     borderWidth: 0
                                //     brush: "yellow"
                                //     axisX: axisX
                                //     axisY: axisY
                                //     upperSeries: series2
                                // }

                                // LineSeries {
                                //     id: series2
                                //     axisX: axisX
                                //     axisY: axisY
                                //     // name: "Besoin personnel"
                                //     color: '#14C9C9'
                                //     useOpenGL: true
                                //     width: 2
                                //     capStyle: Qt.RoundCap
                                //     onHovered: (point,state)=>{
                                //     }
                                // }
                            }
                            ColumnLayout {
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.alignment:Qt.AlignTop
                                // Layout.rowSpan: 1
                                // Layout.columnSpan: 1
                                Layout.row:1
                                Layout.column:0
                                spacing: -10

                                Text {
                                    text:"acc"
                                    font.pointSize: 23
                                    color: "#646669"
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: "Roboto Mono"
                                    font.weight: 500
                                }
                                Text {
                                    text:"99%"
                                    font.pointSize: 40
                                    color: "#e2b714"
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: "Roboto Mono"
                                    font.weight: 500
                                }

                            }
                            ColumnLayout {
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.alignment:Qt.AlignTop
                                // Layout.rowSpan: 1
                                // Layout.columnSpan: 1
                                Layout.row:2
                                Layout.column:0
                                spacing: -10

                                Text {
                                    text:"acc"
                                    font.pointSize: 23
                                    color: "#646669"
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: "Roboto Mono"
                                    font.weight: 500
                                }
                                Text {
                                    text:"99%"
                                    font.pointSize: 40
                                    color: "#e2b714"
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: "Roboto Mono"
                                    font.weight: 500
                                }

                            }
                        }
                        

                        Item{
                            Layout.fillHeight:true
                        }
                    }
                }
            }
            Item{
                Layout.fillWidth:true
                Layout.fillHeight:true
                // Layout.maximumHeight:height
            }
        }

    // }
}