import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtCharts
import QtQuick.Templates as T

import './Components'
import './Fonts'

ApplicationWindow{
    id:root_app
    width:942
    height:525
    visible:true
    color:bg_color
    title:'Qtmonkeytype'
    font.family:Fonts.roboto_mono
    // property font roboto: ({
    //     family: Fonts.roboto_mono,
    //     pointSize: 10,
    //     weight:500
    // })
    property color bg_color: Qt.color('#323437')
    property color main_color: Qt.color('#e2b714')
    property color caret_color: Qt.color('#e2b714')
    property color sub_color: Qt.color('#646669')
    property color sub_alt_color: Qt.color('#2c2e31')

    property color text_color: Qt.color('#d1d0c5')
    property color error_color: Qt.color('#ca4754')
    property color error_extra_color: Qt.color('#7e2a33')
    property color colorful_error_color: Qt.color('#ca4754')
    property color colorful_error_extra_color: Qt.color('#7e2a33')

    MouseArea{
        // it is better to detect mouse movement
        anchors.fill:parent
        hoverEnabled:true
        onPositionChanged: {
            // console.log(Math.random())
            textEdit.active=false
        }
        onClicked:{
            // console.log('clicked')
            textEdit.focus=true
        }
    }
    ColumnLayout{
        anchors.fill:parent
        anchors.margins:34
        spacing:30
        ColumnLayout{
            opacity:textEdit.active ? 0 : 1
            Layout.fillWidth:true
            spacing:30
            RowLayout{
                id:title
                Layout.fillWidth:true
                spacing:6
                ColorImage{
                    Layout.topMargin:5
                    source:'./Images/logo.svg'
                    color:root_app.main_color
                    sourceSize.height:23
                }
                Text{
                    id:monkeytype_name
                    Layout.alignment:Qt.AlignTop
                    text:"<font color='#a6e214'>Qt</font>monkeytype"
                    textFormat: TextEdit.RichText
                    font.family:Fonts.lexend_deca
                    font.weight:600
                    font.pointSize:25
                    color:root_app.text_color.toString()
                    Text{
                        anchors.top:parent.top
                        anchors.left:parent.left
                        anchors.topMargin:-2
                        anchors.leftMargin:40
                        text:"monkey see"
                        font.family:Fonts.lexend_deca
                        font.pointSize:9
                        color:root_app.sub_color.toString()
                    }
                }
                RowLayout{
                    Layout.leftMargin:10
                    Layout.fillWidth:true
                    Layout.fillHeight:true
                    spacing:20
                    Button{
                        hoverColor:root_app.text_color.toString()
                        pressColor:root_app.sub_color.toString()
                        Layout.alignment:Qt.AlignBottom
                        implicitHeight:monkeytype_name.height-15
                        implicitWidth:28
                        imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M528 448H48c-26.5 0-48-21.5-48-48V112c0-26.5 21.5-48 48-48h480c26.5 0 48 21.5 48 48v288c0 26.5-21.5 48-48 48zM128 180v-40c0-6.6-5.4-12-12-12H76c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm-336 96v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm-336 96v-40c0-6.6-5.4-12-12-12H76c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm288 0v-40c0-6.6-5.4-12-12-12H172c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h232c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12z"/></svg>'
                        imageSize.width:20
                        buttonText:''
                        imageColor:root_app.sub_color.toString()
                        color:root_app.bg_color
                    }
                    Button{
                        hoverColor:root_app.text_color.toString()
                        pressColor:root_app.sub_color.toString()
                        Layout.alignment:Qt.AlignBottom
                        implicitHeight:monkeytype_name.height-15
                        implicitWidth:28
                        imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M528 448H112c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h416c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zm64-320c-26.5 0-48 21.5-48 48 0 7.1 1.6 13.7 4.4 19.8L476 239.2c-15.4 9.2-35.3 4-44.2-11.6L350.3 85C361 76.2 368 63 368 48c0-26.5-21.5-48-48-48s-48 21.5-48 48c0 15 7 28.2 17.7 37l-81.5 142.6c-8.9 15.6-28.9 20.8-44.2 11.6l-72.3-43.4c2.7-6 4.4-12.7 4.4-19.8 0-26.5-21.5-48-48-48S0 149.5 0 176s21.5 48 48 48c2.6 0 5.2-.4 7.7-.8L128 416h384l72.3-192.8c2.5 .4 5.1 .8 7.7 .8 26.5 0 48-21.5 48-48s-21.5-48-48-48z"/></svg>'
                        imageSize.width:20
                        buttonText:''
                        imageColor:root_app.sub_color.toString()
                        color:root_app.bg_color
                    }
                    Button{
                        hoverColor:root_app.text_color.toString()
                        pressColor:root_app.sub_color.toString()
                        Layout.alignment:Qt.AlignBottom
                        implicitHeight:monkeytype_name.height-15
                        implicitWidth:28
                        imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 192 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M20 424.2h20V279.8H20c-11 0-20-9-20-20V212c0-11 9-20 20-20h112c11 0 20 9 20 20v212.2h20c11 0 20 9 20 20V492c0 11-9 20-20 20H20c-11 0-20-9-20-20v-47.8c0-11 9-20 20-20zM96 0C56.2 0 24 32.2 24 72s32.2 72 72 72 72-32.2 72-72S135.8 0 96 0z"/></svg>'
                        imageSize.height:height-8
                        buttonText:''
                        imageColor:root_app.sub_color.toString()
                        color:root_app.bg_color
                    }
                    Button{
                        hoverColor:root_app.text_color.toString()
                        pressColor:root_app.sub_color.toString()
                        Layout.alignment:Qt.AlignBottom
                        implicitHeight:monkeytype_name.height-15
                        implicitWidth:28
                        imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M487.4 315.7l-42.6-24.6c4.3-23.2 4.3-47 0-70.2l42.6-24.6c4.9-2.8 7.1-8.6 5.5-14-11.1-35.6-30-67.8-54.7-94.6-3.8-4.1-10-5.1-14.8-2.3L380.8 110c-17.9-15.4-38.5-27.3-60.8-35.1V25.8c0-5.6-3.9-10.5-9.4-11.7-36.7-8.2-74.3-7.8-109.2 0-5.5 1.2-9.4 6.1-9.4 11.7V75c-22.2 7.9-42.8 19.8-60.8 35.1L88.7 85.5c-4.9-2.8-11-1.9-14.8 2.3-24.7 26.7-43.6 58.9-54.7 94.6-1.7 5.4 .6 11.2 5.5 14L67.3 221c-4.3 23.2-4.3 47 0 70.2l-42.6 24.6c-4.9 2.8-7.1 8.6-5.5 14 11.1 35.6 30 67.8 54.7 94.6 3.8 4.1 10 5.1 14.8 2.3l42.6-24.6c17.9 15.4 38.5 27.3 60.8 35.1v49.2c0 5.6 3.9 10.5 9.4 11.7 36.7 8.2 74.3 7.8 109.2 0 5.5-1.2 9.4-6.1 9.4-11.7v-49.2c22.2-7.9 42.8-19.8 60.8-35.1l42.6 24.6c4.9 2.8 11 1.9 14.8-2.3 24.7-26.7 43.6-58.9 54.7-94.6 1.5-5.5-.7-11.3-5.6-14.1zM256 336c-44.1 0-80-35.9-80-80s35.9-80 80-80 80 35.9 80 80-35.9 80-80 80z"/></svg>'
                        imageSize.height:height-8
                        buttonText:''
                        imageColor:root_app.sub_color.toString()
                        color:root_app.bg_color
                    }

                    Item{
                        Layout.fillWidth:true
                    }
                    Button{
                        hoverColor:root_app.text_color.toString()
                        pressColor:root_app.sub_color.toString()
                        Layout.alignment:Qt.AlignBottom
                        implicitHeight:monkeytype_name.height-15
                        implicitWidth:28
                        imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M224 512c35.3 0 64-28.7 64-64H160c0 35.4 28.7 64 64 64zm215.4-149.7c-19.3-20.8-55.5-52-55.5-154.3 0-77.7-54.5-139.9-127.9-155.2V32c0-17.7-14.3-32-32-32s-32 14.3-32 32v20.8C118.6 68.1 64.1 130.3 64.1 208c0 102.3-36.2 133.5-55.5 154.3-6 6.5-8.7 14.2-8.6 21.7 .1 16.4 13 32 32.1 32h383.8c19.1 0 32-15.6 32.1-32 .1-7.6-2.6-15.3-8.6-21.7z"/></svg>'
                        imageSize.height:height-8
                        buttonText:''
                        imageColor:root_app.sub_color.toString()
                        color:root_app.bg_color
                    }
                    Button{
                        hoverColor:root_app.text_color.toString()
                        pressColor:root_app.sub_color.toString()
                        Layout.alignment:Qt.AlignBottom
                        implicitHeight:monkeytype_name.height-15
                        implicitWidth:28
                        imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M313.6 304c-28.7 0-42.5 16-89.6 16-47.1 0-60.8-16-89.6-16C60.2 304 0 364.2 0 438.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-25.6c0-74.2-60.2-134.4-134.4-134.4zM400 464H48v-25.6c0-47.6 38.8-86.4 86.4-86.4 14.6 0 38.3 16 89.6 16 51.7 0 74.9-16 89.6-16 47.6 0 86.4 38.8 86.4 86.4V464zM224 288c79.5 0 144-64.5 144-144S303.5 0 224 0 80 64.5 80 144s64.5 144 144 144zm0-240c52.9 0 96 43.1 96 96s-43.1 96-96 96-96-43.1-96-96 43.1-96 96-96z"/></svg>'
                        imageSize.height:height-8
                        buttonText:''
                        imageColor:root_app.sub_color.toString()
                        color:root_app.bg_color
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
                color:root_app.sub_alt_color.toString()
                Flickable {
                    clip: true
                    boundsBehavior: Flickable.StopAtBounds
                    anchors.fill:parent
                    anchors.leftMargin:25
                    anchors.rightMargin:25
                    anchors.topMargin:10
                    contentWidth: mainRows.width; contentHeight: mainRows.height
                    flickableDirection: Flickable.HorizontalFlick
                    ScrollBar.horizontal: ScrollBar {
                        implicitHeight:8
                    }
                    ButtonGroup { id: typeMode_btns }
                    RowLayout{
                        id:mainRows
                        spacing:20
                        RowButton{
                            id:punctuation
                            hoverColor:root_app.text_color.toString()
                            pressColor:root_app.sub_color.toString()
                            Layout.alignment:Qt.AlignBottom
                            implicitHeight:parent.height
                            imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M256 8C118.9 8 8 118.9 8 256c0 137.1 110.9 248 248 248 48.2 0 95.3-14.1 135.4-40.2 12-7.8 14.6-24.3 5.6-35.4l-10.2-12.4c-7.7-9.4-21.2-11.7-31.4-5.1C325.9 429.8 291.3 440 256 440c-101.5 0-184-82.5-184-184S154.5 72 256 72c100.1 0 184 57.6 184 160 0 38.8-21.1 79.7-58.2 83.7-17.3-.5-16.9-12.9-13.5-30l23.4-121.1C394.7 149.8 383.3 136 368.2 136h-45a13.5 13.5 0 0 0 -13.4 12l0 .1c-14.7-17.9-40.4-21.8-60-21.8-74.6 0-137.8 62.2-137.8 151.5 0 65.3 36.8 105.9 96 105.9 27 0 57.4-15.6 75-38.3 9.5 34.1 40.6 34.1 70.7 34.1C462.6 379.4 504 307.8 504 232 504 95.7 394 8 256 8zm-21.7 304.4c-22.2 0-36.1-15.6-36.1-40.8 0-45 30.8-72.7 58.6-72.7 22.3 0 35.6 15.2 35.6 40.8 0 45.1-33.9 72.7-58.2 72.7z"/></svg>'
                            imageSize.height:height-8
                            buttonText:'punctuation'
                            fontWeight:500
                            fontSize:10
                            imageColor:checked? root_app.main_color:root_app.sub_color.toString()
                            textColor:checked? root_app.main_color:root_app.sub_color.toString()
                            color:"transparent"
                            checkable:true
                            onClicked:{
                                checked=!checked
                                textEdit.punctuation=checked
                                textEdit.resetProperties(textEdit.repeated)
                            }
                        }
                        RowButton{
                            id:numbers
                            hoverColor:root_app.text_color.toString()
                            pressColor:root_app.sub_color.toString()
                            Layout.alignment:Qt.AlignBottom
                            implicitHeight:parent.height
                            imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M440.7 182.1l7.1-40c1.3-7.4-4.3-14.1-11.8-14.1h-74.8l14.6-81.9C377.1 38.8 371.5 32 364 32h-40.6a12 12 0 0 0 -11.8 9.9L296.2 128H197.5l14.6-81.9C213.5 38.8 207.8 32 200.4 32h-40.6a12 12 0 0 0 -11.8 9.9L132.5 128H53.4a12 12 0 0 0 -11.8 9.9l-7.1 40C33.2 185.2 38.8 192 46.3 192h74.8L98.2 320H19.1a12 12 0 0 0 -11.8 9.9l-7.1 40C-1.1 377.2 4.5 384 12 384h74.8L72.2 465.9C70.9 473.2 76.5 480 84 480h40.6a12 12 0 0 0 11.8-9.9L151.8 384h98.6l-14.6 81.9C234.5 473.2 240.2 480 247.7 480h40.6a12 12 0 0 0 11.8-9.9L315.5 384h79.1a12 12 0 0 0 11.8-9.9l7.1-40c1.3-7.4-4.3-14.1-11.8-14.1h-74.8l22.9-128h79.1a12 12 0 0 0 11.8-9.9zM261.9 320h-98.6l22.9-128h98.6l-22.9 128z"/></svg>'
                            imageSize.height:height-8
                            buttonText:'numbers'
                            fontWeight:500
                            fontSize:10
                            imageColor:checked? root_app.main_color:root_app.sub_color.toString()
                            textColor:checked? root_app.main_color:root_app.sub_color.toString()
                            color:"transparent"
                            checkable:true
                            onClicked:{
                                checked=!checked
                                textEdit.numbers=checked
                                textEdit.resetProperties(textEdit.repeated)
                            }
                        }
                        Rectangle{
                            width:4
                            Layout.fillHeight: true
                            color:root_app.bg_color
                            radius:4
                        }
                        RowButton{
                            id:timeMode
                            hoverColor:root_app.text_color.toString()
                            pressColor:root_app.sub_color.toString()
                            Layout.alignment:Qt.AlignBottom
                            implicitHeight:parent.height
                            imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M256 8C119 8 8 119 8 256S119 504 256 504 504 393 504 256 393 8 256 8zm92.5 313h0l-20 25a16 16 0 0 1 -22.5 2.5h0l-67-49.7a40 40 0 0 1 -15-31.2V112a16 16 0 0 1 16-16h32a16 16 0 0 1 16 16V256l58 42.5A16 16 0 0 1 348.5 321z"/></svg>'
                            imageSize.height:height-8
                            buttonText:'time'
                            fontWeight:500
                            fontSize:10
                            checkable:true
                            autoExclusive: true
                            imageColor:checked? root_app.main_color:root_app.sub_color.toString()
                            textColor:checked? root_app.main_color:root_app.sub_color.toString()
                            color:"transparent"
                            onClicked:{
                                checked=true
                                // textEdit.wordCount=50
                                textEdit.resetProperties(textEdit.repeated)
                            }
                            onCheckedChanged:{
                                if(checked){
                                    //apply default values when first time checked
                                    textEdit.wordCount=50
                                    timer.timeMode_limit=60
                                }
                            }
                            ButtonGroup.group:typeMode_btns
                        }
                        RowButton{
                            id:wordsMode
                            hoverColor:root_app.text_color.toString()
                            pressColor:root_app.sub_color.toString()
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
                            imageColor:checked? root_app.main_color:root_app.sub_color.toString()
                            textColor:checked? root_app.main_color:root_app.sub_color.toString()
                            color:"transparent"
                            onClicked:{
                                checked=true
                                textEdit.resetProperties(textEdit.repeated)
                            }
                            onCheckedChanged:{
                                //apply default values when first time checked
                                if(checked){
                                    textEdit.wordCount=50
                                }
                            }
                            ButtonGroup.group:typeMode_btns
                        }
                        RowButton{
                            hoverColor:root_app.text_color.toString()
                            pressColor:root_app.sub_color.toString()
                            Layout.alignment:Qt.AlignBottom
                            implicitHeight:parent.height
                            imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M464 256h-80v-64c0-35.3 28.7-64 64-64h8c13.3 0 24-10.7 24-24V56c0-13.3-10.7-24-24-24h-8c-88.4 0-160 71.6-160 160v240c0 26.5 21.5 48 48 48h128c26.5 0 48-21.5 48-48V304c0-26.5-21.5-48-48-48zm-288 0H96v-64c0-35.3 28.7-64 64-64h8c13.3 0 24-10.7 24-24V56c0-13.3-10.7-24-24-24h-8C71.6 32 0 103.6 0 192v240c0 26.5 21.5 48 48 48h128c26.5 0 48-21.5 48-48V304c0-26.5-21.5-48-48-48z"/></svg>'
                            imageSize.height:height-8
                            buttonText:'quote'
                            fontWeight:500
                            fontSize:10
                            checkable:true
                            autoExclusive: true
                            imageColor:checked? root_app.main_color:root_app.sub_color.toString()
                            textColor:checked? root_app.main_color:root_app.sub_color.toString()
                            color:"transparent"
                            onClicked:{
                                checked=true
                                textEdit.resetProperties(textEdit.repeated)
                            }
                            ButtonGroup.group:typeMode_btns
                        }
                        RowButton{
                            hoverColor:root_app.text_color.toString()
                            pressColor:root_app.sub_color.toString()
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
                            imageColor:checked? root_app.main_color:root_app.sub_color.toString()
                            textColor:checked? root_app.main_color:root_app.sub_color.toString()
                            color:"transparent"
                            onClicked:{
                                checked=true
                                textEdit.resetProperties(textEdit.repeated)
                            }
                            ButtonGroup.group:typeMode_btns
                        }
                        RowButton{
                            hoverColor:root_app.text_color.toString()
                            pressColor:root_app.sub_color.toString()
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
                            imageColor:checked? root_app.main_color:root_app.sub_color.toString()
                            textColor:checked? root_app.main_color:root_app.sub_color.toString()
                            color:"transparent"
                            onClicked:{
                                checked=true
                                textEdit.resetProperties(textEdit.repeated)
                            }
                            ButtonGroup.group:typeMode_btns
                        }
                        Rectangle{
                            width:4
                            Layout.fillHeight: true
                            color:root_app.bg_color
                            radius:4
                        }
                        Repeater{
                            model:timeMode.checked?[15,30,60,120]:[10,25,50,100]
                            // onModelChanged:{
                            //         if(timeMode.checked){
                            //             timer.timeMode_limit=60
                            //         }else{
                            //             textEdit.wordCount=50
                            //         }
                            //         textEdit.resetProperties(textEdit.repeated)
                            // }
                            delegate :Button{
                                hoverColor:root_app.text_color.toString()
                                pressColor:root_app.sub_color.toString()
                                Layout.alignment:Qt.AlignBottom
                                implicitHeight:parent.height
                                implicitWidth:20
                                buttonText:modelData
                                fontSize:9
                                fontWeight:400
                                textColor:checked ? root_app.main_color :root_app.sub_color.toString()
                                color:"transparent"
                                checkable:true
                                autoExclusive: true
                                checked:index===2
                                onClicked:{
                                    checked=true
                                    // console.log(timer.timeStep)
                                    if(timeMode.checked){
                                        timer.timeMode_limit=parseInt(modelData)
                                    }else{
                                        textEdit.wordCount=parseInt(modelData)
                                    }
                                    textEdit.resetProperties(textEdit.repeated)

                                }

                            }
                        }
                        Button{
                            hoverColor:root_app.text_color.toString()
                            pressColor:root_app.sub_color.toString()
                            Layout.alignment:Qt.AlignBottom
                            implicitHeight:parent.height
                            implicitWidth:20
                            imageSize.height:height-8
                            imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M501.1 395.7L384 278.6c-23.1-23.1-57.6-27.6-85.4-13.9L192 158.1V96L64 0 0 64l96 128h62.1l106.6 106.6c-13.6 27.8-9.2 62.3 13.9 85.4l117.1 117.1c14.6 14.6 38.2 14.6 52.7 0l52.7-52.7c14.5-14.6 14.5-38.2 0-52.7zM331.7 225c28.3 0 54.9 11 74.9 31l19.4 19.4c15.8-6.9 30.8-16.5 43.8-29.5 37.1-37.1 49.7-89.3 37.9-136.7-2.2-9-13.5-12.1-20.1-5.5l-74.4 74.4-67.9-11.3L334 98.9l74.4-74.4c6.6-6.6 3.4-17.9-5.7-20.2-47.4-11.7-99.6 .9-136.6 37.9-28.5 28.5-41.9 66.1-41.2 103.6l82.1 82.1c8.1-1.9 16.5-2.9 24.7-2.9zm-103.9 82l-56.7-56.7L18.7 402.8c-25 25-25 65.5 0 90.5s65.5 25 90.5 0l123.6-123.6c-7.6-19.9-9.9-41.6-5-62.7zM64 472c-13.2 0-24-10.8-24-24 0-13.3 10.7-24 24-24s24 10.7 24 24c0 13.2-10.7 24-24 24z"/></svg>'
                            buttonText:''
                            imageColor:checked ? root_app.main_color :root_app.sub_color.toString()
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
            RowLayout{
                Layout.fillWidth:true
                spacing:30
                Item{
                    Layout.fillWidth:true
                }
                RowButton{
                    visible:textEdit.repeated
                    hoverColor:"transparent"
                    pressColor:"transparent"
                    content.spacing:20
                    Layout.alignment:Qt.AlignCenter
                    implicitHeight:content.height
                    imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Pro 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2024 Fonticons, Inc.--><path d="M142.9 142.9c62.2-62.2 162.7-62.5 225.3-1L327 183c-6.9 6.9-8.9 17.2-5.2 26.2s12.5 14.8 22.2 14.8H463.5c0 0 0 0 0 0H472c13.3 0 24-10.7 24-24V72c0-9.7-5.8-18.5-14.8-22.2s-19.3-1.7-26.2 5.2L413.4 96.6c-87.6-86.5-228.7-86.2-315.8 1C73.2 122 55.6 150.7 44.8 181.4c-5.9 16.7 2.9 34.9 19.5 40.8s34.9-2.9 40.8-19.5c7.7-21.8 20.2-42.3 37.8-59.8zM16 312v7.6 .7V440c0 9.7 5.8 18.5 14.8 22.2s19.3 1.7 26.2-5.2l41.6-41.6c87.6 86.5 228.7 86.2 315.8-1c24.4-24.4 42.1-53.1 52.9-83.7c5.9-16.7-2.9-34.9-19.5-40.8s-34.9 2.9-40.8 19.5c-7.7 21.8-20.2 42.3-37.8 59.8c-62.2 62.2-162.7 62.5-225.3 1L185 329c6.9-6.9 8.9-17.2 5.2-26.2s-12.5-14.8-22.2-14.8H48.4h-.7H40c-13.3 0-24 10.7-24 24z"/></svg>'
                    imageSize.height:height-4
                    buttonText:'repeated'
                    fontWeight:600
                    fontSize:12
                    checkable:true
                    autoExclusive: true
                    disabledImageColor:root_app.error_color.toString()
                    textColor:root_app.error_color.toString()
                    color:"transparent"
                    enabled:false
                }
                RowButton{
                    hoverColor:root_app.text_color.toString()
                    pressColor:root_app.sub_color.toString()
                    content.spacing:20
                    Layout.alignment:Qt.AlignCenter
                    implicitHeight:content.height
                    imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M248 8C111 8 0 119 0 256s111 248 248 248 248-111 248-248S385 8 248 8zm82.3 357.6c-3.9 3.9-8 8-11.3 11.3-3 3-5.1 6.7-6.2 10.7-1.5 5.7-2.7 11.4-4.8 16.9l-17.4 46.9c-13.8 3-28 4.7-42.7 4.7v-27.4c1.7-12.6-7.6-36.3-22.6-51.3-6-6-9.4-14.1-9.4-22.6v-32c0-11.6-6.3-22.3-16.5-28-14.4-8-34.8-19.1-48.8-26.1-11.5-5.8-22.1-13.1-31.7-21.8l-.8-.7a114.8 114.8 0 0 1 -18.1-20.7c-9.4-13.8-24.7-36.4-34.6-51.1 20.5-45.5 57.4-82 103.2-101.9l24 12C203.5 89.7 216 82 216 70.1v-11.3c8-1.3 16.1-2.1 24.4-2.4l28.3 28.3c6.3 6.3 6.3 16.4 0 22.6L264 112l-10.3 10.3c-3.1 3.1-3.1 8.2 0 11.3l4.7 4.7c3.1 3.1 3.1 8.2 0 11.3l-8 8a8 8 0 0 1 -5.7 2.3h-9c-2.1 0-4.1 .8-5.6 2.3l-9.9 9.7a8 8 0 0 0 -1.6 9.3l15.6 31.2c2.7 5.3-1.2 11.6-7.2 11.6h-5.6c-1.9 0-3.8-.7-5.2-2l-9.3-8.1a16 16 0 0 0 -15.6-3.1l-31.2 10.4a12 12 0 0 0 -8.2 11.3c0 4.5 2.6 8.7 6.6 10.7l11.1 5.5c9.4 4.7 19.8 7.2 30.3 7.2s22.6 27.3 32 32h66.8c8.5 0 16.6 3.4 22.6 9.4l13.7 13.7a30.5 30.5 0 0 1 8.9 21.6 46.5 46.5 0 0 1 -13.7 33zM417 274.3c-5.8-1.5-10.8-5-14.2-10l-18-27a24 24 0 0 1 0-26.6l19.6-29.4c2.3-3.5 5.5-6.3 9.2-8.2l13-6.5C440.2 193.6 448 223.9 448 256c0 8.7-.7 17.2-1.8 25.5L417 274.3z"/></svg>'
                    imageSize.height:height-4
                    buttonText:'english'
                    fontWeight:state==="Hovering"?600:500
                    fontSize:12
                    checkable:true
                    autoExclusive: true
                    imageColor:checked? root_app.main_color:root_app.sub_color.toString()
                    textColor:checked? root_app.main_color:root_app.sub_color.toString()
                    color:"transparent"
                    onClicked:{
                    }
                }
                RowButton{
                    id:customPace_btn
                    visible:textEdit.repeated
                    hoverColor:root_app.text_color.toString()
                    pressColor:root_app.sub_color.toString()
                    content.spacing:20
                    Layout.alignment:Qt.AlignCenter
                    implicitHeight:content.height
                    imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M288 32C128.9 32 0 160.9 0 320c0 52.8 14.3 102.3 39.1 144.8 5.6 9.6 16.3 15.2 27.4 15.2h443c11.1 0 21.8-5.6 27.4-15.2C561.8 422.3 576 372.8 576 320c0-159.1-128.9-288-288-288zm0 64c14.7 0 26.6 10.1 30.3 23.7-1.1 2.3-2.6 4.2-3.5 6.7l-9.2 27.7c-5.1 3.5-11 6-17.6 6-17.7 0-32-14.3-32-32S270.3 96 288 96zM96 384c-17.7 0-32-14.3-32-32s14.3-32 32-32 32 14.3 32 32-14.3 32-32 32zm48-160c-17.7 0-32-14.3-32-32s14.3-32 32-32 32 14.3 32 32-14.3 32-32 32zm246.8-72.4l-61.3 184C343.1 347.3 352 364.5 352 384c0 11.7-3.4 22.6-8.9 32H232.9c-5.5-9.5-8.9-20.3-8.9-32 0-33.9 26.5-61.4 59.9-63.6l61.3-184c4.2-12.6 17.7-19.5 30.4-15.2 12.6 4.2 19.4 17.8 15.2 30.4zm14.7 57.2l15.5-46.6c3.5-1.3 7.1-2.2 11.1-2.2 17.7 0 32 14.3 32 32s-14.3 32-32 32c-11.4 0-20.9-6.3-26.6-15.2zM480 384c-17.7 0-32-14.3-32-32s14.3-32 32-32 32 14.3 32 32-14.3 32-32 32z"/></svg>'
                    imageSize.height:height-4
                    buttonText:'custom pace '+pace+' wpm'
                    fontWeight:state==="Hovering"?600:500
                    fontSize:12
                    checkable:true
                    autoExclusive: true
                    imageColor:checked? root_app.main_color:root_app.sub_color.toString()
                    textColor:checked? root_app.main_color:root_app.sub_color.toString()
                    color:"transparent"
                    property int pace:98
                    onClicked:{
                        // checked=!checked
                        choosePace.open()
                    }
                    Popup {
                        id:choosePace
                        // Component.onCompleted:{
                        //     open()
                        // }
                        parent:Overlay.overlay
                        x:parent.width/2 - width/2
                        y:200
                        // anchors.centerIn:parent
                        modal: true
                        dim:true
                        focus: true
                        // closePolicy: Popup.NoAutoClose
                        padding: 0
                        onOpened: {

                        }

                        onClosed: {
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
                            color:Qt.rgba(0,0,0,0)
                        }

                        Rectangle {
                            implicitWidth: root_app.width *0.5
                            implicitHeight: 50
                            color: root_app.bg_color
                            radius:8
                            RowLayout{
                                anchors.fill:parent
                                spacing:0
                                ColorImage{
                                    Layout.alignment:Qt.AlignCenter
                                    Layout.leftMargin:20
                                    Layout.rightMargin:10
                                    source:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M285.5 273L91.1 467.3c-9.4 9.4-24.6 9.4-33.9 0l-22.7-22.7c-9.4-9.4-9.4-24.5 0-33.9L188.5 256 34.5 101.3c-9.3-9.4-9.3-24.5 0-33.9l22.7-22.7c9.4-9.4 24.6-9.4 33.9 0L285.5 239c9.4 9.4 9.4 24.6 0 33.9z"/></svg>'
                                    color:'#8d8d8d'
                                    sourceSize.width:10
                                }
                                TextField{
                                    Layout.fillWidth:true
                                    Layout.fillHeight:true
                                    placeholderText:'custom...'
                                    validator: IntValidator{}
                                    onTextEdited:{
                                        customPace_btn.pace=parseInt(text)
                                    }
                                    onAccepted:{
                                        choosePace.close()
                                    }
                                }
                            }

                        }
                        Overlay.modal: Rectangle {
                            color: Qt.rgba(0, 0, 0, .5)
                        }
                    }
                }
                Item{
                    Layout.fillWidth:true
                }
            }
            Behavior on opacity{
                NumberAnimation {
                    duration: 250
                    easing.type: Easing.InOutQuad
                }
            }
            PropertyChanges{ enabled:!textEdit.active}

        }
        Rectangle{
            id:content_textEdit
            Layout.fillWidth:true
            Layout.maximumHeight:32*4
            Layout.preferredHeight:32*4
            color:"transparent"
            Text {
                anchors.bottom:parent.top
                anchors.bottomMargin:10
                opacity:!textEdit.active ? 0:1
                text: timeMode.checked?timer.timeStep + "/"+timer.timeMode_limit:textEdit.cursorPosition + "/" + textEdit.length
                font.pointSize: 16
                color: root_app.main_color
                horizontalAlignment: Text.AlignLeft
                font.family: Fonts.roboto_mono
                font.weight: 600
            }
            Flickable {
                id: flick

                anchors.fill:parent
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

                    // onTextChanged:{
                    //     // console.log('jel')

                    //     // console.log(textEdit.positionToRectangle(textEdit.positionAt(textEdit.contentWidth,cursorDelegate_.y)).x)
                    //     // if(textEdit.positionToRectangle(textEdit.positionAt(textEdit.contentWidth,cursorDelegate_.y)).x===0 && textEdit.positionToRectangle(textEdit.positionAt(textEdit.contentWidth,cursorDelegate_.y)).y/32 + 1=== lineCount-3){
                    //     //     console.log('before last')
                    //     // }
                    // }

                    id:textEdit
                    width:flick.width
                    onCursorRectangleChanged: flick.ensureVisible(cursorRectangle)
                    selectByMouse :false
                    focus:true
                    opacity:0
                    property bool punctuation
                    property bool numbers

                    // Behavior on rawText{
                    SequentialAnimation {
                        id:refreshTextAnimation
                        NumberAnimation  {
                            target: textEdit
                            property: "opacity"
                            // from: 0.0
                            to: 0.0
                            // easing.type: Easing.InOutQuad
                            duration: 0
                            // running:true
                        }
                        PauseAnimation{
                            duration:100
                        }
                        NumberAnimation  {
                            target: textEdit
                            property: "opacity"
                            // from: 0.0
                            to: 1.0
                            easing.type: Easing.OutCubic
                            duration: 300
                            // running:true
                        }
                    }

                    function generateText(now=textEdit.wordCount) {
                        //now=numberofwords
                        // console.log('generate: ->'+now)
                        var numWords=now
                        var includePunctuation=textEdit.punctuation
                        var includeNumbers=textEdit.numbers
                        var words = [
                            "write", "govern", "here", "of", "another", "see", "they", "these",
                            "one", "many", "turn", "can", "to", "down", "there", "too", "about", "home",
                            "a", "as", "lead", "use", "make", "long", "much", "well", "because",
                            "day", "now", "when", "than", "for", "do", "consider", "since"
                        ];
                        var punctuation = [".", ",", "!", "?", ";", ":"];
                        var numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];

                        var text = "";

                        for (var i = 0; i < numWords; i++) {
                            var word = words[Math.floor(Math.random() * words.length)];
                            if (includeNumbers && Math.random() < 0.2) {
                                word += numbers[Math.floor(Math.random() * numbers.length)];
                            }
                            if (includePunctuation && Math.random() < 0.3) {
                                word += punctuation[Math.floor(Math.random() * punctuation.length)];
                            }
                            if(i===0 && now===textEdit.wordCount){
                                // make sure it gets the most first word in the text and not the new generated timeMode text
                                textEdit.currentWord=word
                                // console.log(textEdit.currentWord)
                            }
                            text += word + " ";
                        }
                        return text
                    }

                    function resetProperties(isrepeated){
                        if(isrepeated){
                            // if you want to maintain the text and reset everything
                            refreshTextAnimation.start()
                            // console.log((textEdit.rawText)+ "<")
                            // console.log((textEdit.rawText.trim())+ "<")
                            //mouad[2025] [done] : here you forgot to reset currentWord , so I reset it
                            textEdit.currentWord = textEdit.rawText.slice(0,textEdit.rawText.indexOf(" "))
                            textEdit.text="<p style='line-height:1' >" +(timeMode.checked?textEdit.rawText:textEdit.rawText.trim())+"</p>"
                        }else{
                            var genText=generateText()
                            if(!timeMode.checked){
                                genText=genText.trim()
                            }
                            refreshTextAnimation.start()
                            textEdit.rawText=genText
                            textEdit.text = "<p style='line-height:1' >" +genText+"</p>"

                        }
                        // mouad[2025] : last time I try to make way to perserve line-height:2 is to add this hidden char :
                        //<span id='styleAnchor' style='font-size:0pt; line-height:0pt; display:inline-block; width:0pt; height:0pt; visibility:hidden'>\u200B</span>
                        // and make cursorPosition resets to 1 to skip the hidder char
                        textEdit.cursorPosition=0
                        textEdit.active=false
                        textEdit.currentWordIndex=0
                        textEdit.writtenWords=0
                        textEdit.rawWrittenWords=0
                        timer.timeStep=1
                        timer.maxSpeed=0
                        timer.rawMaxSpeed=0
                        textEdit.repeated=isrepeated
                        series1.removePoints(0,series1.count)
                        series2.removePoints(0,series2.count)

                        textEdit.writtenCharsExam=""
                        textEdit.errorTrackSeries=({'0':0})
                        textEdit.countedErrors=0
                        // console.log('this is cnt : '+paceAnimation.cnt)
                        // console.log('ReSet')
                        // if(textEdit.repeated){
                        //     paceAnimation.cnt=textEdit.lineCount-1
                        //     paceAnimation.complete()
                        // }

                    }
                    wrapMode: TextEdit.Wrap
                    textFormat: TextEdit.RichText
                    font.family:Fonts.roboto_mono
                    font.pointSize:18
                    property int wordCount:50
                    Component.onCompleted:{
                        //initialising
                        resetProperties(false)
                    }
                    color:root_app.sub_color.toString()
                    property int rlength:0
                    cursorDelegate: Rectangle{
                        visible:false
                    }
                    onEditingFinished:{
                    }
                    selectionColor : root_app.caret_color
                    Rectangle {
                        id:cursorDelegate_
                        width: 2
                        height:32
                        color: root_app.caret_color
                        radius: 3
                        x:parent.cursorRectangle.x
                        y:parent.cursorRectangle.y
                        Behavior on x {
                            NumberAnimation {
                                easing.type: Easing.OutQuart
                                duration: 300
                            }
                        }
                        onYChanged:{
                                // console.log('hello')
                            if(timeMode.checked && textEdit.active){
                                // console.log('added')
                                textEdit.insert(textEdit.length,textEdit.generateText(15))
                            }

                        }
                        SequentialAnimation on opacity {
                            // alwaysRunToEnd:true
                            running: !textEdit.active;
                            loops: Animation.Infinite;
                            NumberAnimation { to: 0; duration: 500; easing.type: "OutQuad"}
                            NumberAnimation { to: 1; duration: 500; easing.type: "InQuad"}
                            onRunningChanged:{
                                if(!running){
                                    cursorDelegate_.opacity=1
                                }
                            }
                        }
                    }
                    Rectangle {
                        id:customPace_rect
                        width: 2
                        height:32
                        color: root_app.sub_color.toString()
                        radius: 3
                        opacity:0.5
                        visible:paceAnimation.running
                        NumberAnimation  {
                            id:paceAnimation
                            target:customPace_rect
                            property:"x"
                            from:0
                            to:textEdit.positionToRectangle(textEdit.positionAt(textEdit.contentWidth,customPace_rect.y)).x
                            duration: (textEdit.positionAt(textEdit.contentWidth,customPace_rect.y)-textEdit.positionAt(0,customPace_rect.y))*60/(customPace_btn.pace*5)*1000
                            onFinished:{
                                // console.log('round'+ paceAnimation.cnt)
                                if(paceAnimation.cnt===textEdit.lineCount-1){
                                    // console.log('finish')
                                    paceAnimation.cnt=0
                                    customPace_rect.y=0
                                    return
                                }
                                customPace_rect.y=customPace_rect.y+32
                                paceAnimation.cnt++
                                start()

                            }
                            property int cnt:0
                        }
                    }
                    Keys.onPressed:event=>{
                        active=true
                        // console.log(textEdit.rawWrittenWords)

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
                        // Check if Ctrl key is pressed
                        if (event.modifiers & Qt.ControlModifier) {
                            if (event.key === Qt.Key_Backspace) {
                                if(cursorPosition===currentWordIndex){
                                    // mouad[2025] : also add if only the last written word has error
                                    event.accepted=true
                                    return
                                }

                                var writtenText=getText(currentWordIndex,cursorPosition)
                                if(writtenText.length >= currentWord.length){
                                    insert(cursorPosition,"<font color="+root_app.sub_color.toString()+">"+currentWord+"</font>")
                                    cursorPosition=cursorPosition-currentWord.length
                                }else{
                                    insert(cursorPosition,"<font color="+root_app.sub_color.toString()+">"+writtenText+"</font>")
                                    cursorPosition=cursorPosition-writtenText.length
                                }
                                textEdit.writtenCharsExam = ""
                                return
                            }
                            // return
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

                        if (event.key === Qt.Key_Backspace){
                            if(cursorPosition===currentWordIndex){
                                event.accepted=true
                                return
                            }

                            if(getText(currentWordIndex,cursorPosition).length > currentWord.length){
                                return
                            }else{
                                insert(cursorPosition,"<font color="+root_app.sub_color.toString()+">"+currentWord[cursorPosition-currentWordIndex-1]+"</font>")
                                cursorPosition--
                                textEdit.writtenCharsExam = textEdit.writtenCharsExam.slice(0, -1)
                            }
                            return
                        }
                        if (event.key === Qt.Key_Escape){
                            focus=false

                        }
                        if (event.key === Qt.Key_Space){
                            //if last word ,space is no longer jumping so rawWrittenWords shouldn't increase
                            if(getText(cursorPosition,textEdit.length).indexOf(" ")!==-1){
                                // rawWrittenWords is Ideal writtenWords
                                rawWrittenWords++
                                // console.log('rawwritten: '+rawWrittenWords)
                            }
                            console.log("you wrote : ",textEdit.writtenCharsExam)
                            if(cursorPosition-currentWordIndex===currentWord.length && textEdit.writtenCharsExam === "V".repeat(currentWord.length)){
                                // moaud[2025][info] : this only checks if written chars == currentWord.length and not if chars are correct
                                writtenWords++
                                // console.log('Written: '+writtenWords)
                            }
                            // mouad[2025][info] : countedErrors will count Each non correct written char (either wrong or extra )
                            textEdit.countedErrors = textEdit.countedErrors+ (textEdit.writtenCharsExam.match(/E/g)||[]).length
                            console.log("Error Count : = >",textEdit.countedErrors)
                            console.log("wrong written words: ",textEdit.rawWrittenWords-textEdit.writtenWords)
                            // mouad[2025] [done] : let's try to add underline (I didn't like a lot)
                            // if( (textEdit.writtenCharsExam.match(/E/g)||[]).length !==0){

                            //    // insert and remove
                            //    var rawFormattedCurrentWord = getFormattedText(currentWordIndex,Math.max(cursorPosition,currentWordIndex + currentWord.length))
                            //    var formattedCurrentWord = rawFormattedCurrentWord.slice(rawFormattedCurrentWord.indexOf("<!--StartFragment-->") +"<!--StartFragment-->".length,rawFormattedCurrentWord.indexOf("<!--EndFragment-->"))
                            //    remove(currentWordIndex,Math.max(cursorPosition,currentWordIndex + currentWord.length))
                            //    insert(currentWordIndex,"<u>"+(formattedCurrentWord)+"</u>")

                            //    console.log("underline this formatted ; --> ",formattedCurrentWord)
                            //     //-----
                            // }
                            cursorPosition = cursorPosition+ getText(cursorPosition,textEdit.length).indexOf(" ")+1
                            currentWord=getText(cursorPosition,cursorPosition+getText(cursorPosition,textEdit.length).indexOf(" "))
                            if(currentWord===" "){
                                currentWord=getText(cursorPosition,textEdit.length)
                            }
                            currentWordIndex=cursorPosition
                            textEdit.writtenCharsExam = ""
                            event.accepted=true
                            return
                        }
                        // mouad[2025] : from here typed char is processed :
                        textEdit.writtenCharsExam = textEdit.writtenCharsExam + (event.text === getText(cursorPosition,cursorPosition+1) ? "V" : "E")
                        if (getText(cursorPosition,cursorPosition+1)===" "){
                            // console.log('spce')
                            insert(cursorPosition,"<font color="+root_app.error_extra_color.toString()+">"+event.text+"</font>")
                            event.accepted =true
                            return
                        }
                        if(event.text===''){
                            event.accepted =true
                            return;
                        }
                        var charColor=event.text === getText(cursorPosition,cursorPosition+1) ? root_app.text_color.toString():root_app.error_color.toString()
                        insert(cursorPosition,"<font color='"+charColor+"'>"+(getText(cursorPosition,cursorPosition+1))+"</font>")
                        remove(cursorPosition,cursorPosition+1)
                        if(cursorPosition === length){
                            // mouad[2025] [done]: also check if word is correct
                            if(cursorPosition-currentWordIndex===currentWord.length && textEdit.writtenCharsExam === "V".repeat(currentWord.length)){
                               // moaud[2025] [info] : this only checks if written chars == currentWord.length and not if chars are correct
                               writtenWords++
                               // console.log('Written: '+writtenWords)
                            }
                            // mouad[2025] [info] : countedErrors will count Each non correct written char (either wrong or extra )
                            textEdit.countedErrors = textEdit.countedErrors+ (textEdit.writtenCharsExam.match(/E/g)||[]).length
                            textEdit.errorTrackSeries[timer.timeStep-1]=  textEdit.countedErrors
                            //-----------------
                            textEdit.rawWrittenWords++
                            // console.log('raw is :' +rawWrittenWords)
                            // console.log(textEdit.wordCount)
                            finished_test.open()
                            active=false
                        }
                        event.accepted =true
                    }
                    property string currentWord
                    property int currentWordIndex:0

                    property bool active:false
                    property int writtenWords:0
                    property int rawWrittenWords:0
                    property bool repeated:false
                    property string rawText

                    property string writtenCharsExam
                    property int countedErrors:0
                    property var errorTrackSeries:({'0':0})

                    onActiveChanged:{
                        if(textEdit.repeated===false){
                            return
                        }
                        if(active && cursorPosition===0){
                            // console.log('am active')
                            paceAnimation.running=true
                        }
                    }
                    onRepeatedChanged:{
                        //the paceCursor should stop when !repeated
                        if (!repeated){
                            // console.log('1cnt is : '+paceAnimation.cnt)
                            paceAnimation.complete()
                            // console.log('2cnt is : '+paceAnimation.cnt)
                            if(paceAnimation.cnt!==0){

                                paceAnimation.cnt=textEdit.lineCount-1
                                paceAnimation.complete()
                            }
                        }
                    }

                    Timer {
                        id:timer
                        interval: 1000
                        property int timeStep: 1
                        repeat: true
                        running: textEdit.active?timeMode.checked?timeStep<timeMode_limit+1:true:false
                        // triggeredOnStart:true
                        property int maxSpeed:0
                        property int rawMaxSpeed:0
                        property int timeMode_limit:60
                        onTriggered: {
                            // console.log(timeStep+ "/" + timeMode_limit)


                            // for cpm
                            // var speed=Math.round((textEdit.cursorPosition/timeStep)*60)
                            // series1.append(timeStep,speed)
                            // if(speed> maxSpeed){
                            //     maxSpeed=speed
                            // }

                            // for wpm
                            var speed=Math.round((textEdit.writtenWords/timeStep)*60)
                            // console.log(timeStep)
                            series1.append(timeStep,speed)
                            if(speed> maxSpeed){
                                maxSpeed=speed
                            }
                            var rawSpeed=Math.round((textEdit.rawWrittenWords/timeStep)*60)
                            series2.append(timeStep,rawSpeed)
                            if(rawSpeed> rawMaxSpeed){
                                rawMaxSpeed=rawSpeed
                            }
                            // console.log("I will add this " ,  textEdit.countedErrors ," to this : ", textEdit.errorTrackSeries[timeStep],"while this : ",timeStep)
                            textEdit.errorTrackSeries[timeStep]=  textEdit.countedErrors
                            console.log(textEdit.active," counted Errors in Series :",textEdit.errorTrackSeries[timeStep])
                            timeStep++
                        }
                        onRunningChanged:{
                            if(timeMode.checked && timeStep>=timeMode_limit+1){
                                finished_test.open()
                            }
                        }
                    }

                    MouseArea{
                        anchors.fill:parent
                        hoverEnabled:true
                        onPositionChanged: {
                            // console.log(Math.random())
                            // textEdit.active=false
                        }
                        onClicked:{
                            // textEdit.focus=true
                        }
                    }
                }
            }
        }
        RowLayout{
            Layout.fillWidth: true
            spacing:60
            Item{
                Layout.fillWidth:true
            }
            Button{
                hoverColor:root_app.text_color.toString()
                pressColor:root_app.sub_color.toString()
                Layout.alignment:Qt.AlignBottom
                implicitHeight:41-15 +10
                implicitWidth:28 +10
                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M463.5 224H472c13.3 0 24-10.7 24-24V72c0-9.7-5.8-18.5-14.8-22.2s-19.3-1.7-26.2 5.2L413.4 96.6c-87.6-86.5-228.7-86.2-315.8 1c-87.5 87.5-87.5 229.3 0 316.8s229.3 87.5 316.8 0c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0c-62.5 62.5-163.8 62.5-226.3 0s-62.5-163.8 0-226.3c62.2-62.2 162.7-62.5 225.3-1L327 183c-6.9 6.9-8.9 17.2-5.2 26.2s12.5 14.8 22.2 14.8H463.5z"/></svg>'
                imageSize.height:41-15-8
                buttonText:''
                imageColor:root_app.sub_color.toString()
                color:root_app.bg_color
                borderWidth:2
                borderColor:focus?root_app.text_color.toString():"transparent"
                focus:true
                Keys.onPressed:event=>{
                    if (event.key !== 16777220){
                        return
                    }
                    textEdit.resetProperties(false)
                }
                onClicked:{
                    textEdit.resetProperties(false)
                }

                Text {
                    opacity:parent.state ==="Hovering"?1:0
                    anchors.top:parent.bottom
                    anchors.topMargin:parent.state ==="Hovering"?22:20
                    anchors.horizontalCenter:parent.horizontalCenter
                    wrapMode: Text.WordWrap
                    text:'Restart test'
                    font.pointSize: 12
                    color: "white"
                    horizontalAlignment: Text.AlignLeft
                    font.family: Fonts.roboto_mono
                    font.weight: 600
                    Rectangle{
                        anchors.fill:parent
                        anchors.topMargin:-5
                        anchors.bottomMargin:-5
                        anchors.leftMargin:-15
                        anchors.rightMargin:-15
                        color:Qt.rgba(0,0,0,0.8)
                        radius:2
                        z:-1
                        ColorImage{
                            anchors.bottom:parent.top
                            anchors.horizontalCenter:parent.horizontalCenter

                            anchors.bottomMargin:-5
                            sourceSize.width:10
                            color:Qt.rgba(0,0,0,0.8)
                            source:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M182.6 137.4c-12.5-12.5-32.8-12.5-45.3 0l-128 128c-9.2 9.2-11.9 22.9-6.9 34.9s16.6 19.8 29.6 19.8H288c12.9 0 24.6-7.8 29.6-19.8s2.2-25.7-6.9-34.9l-128-128z"/></svg>'
                        }
                    }
                    Behavior on opacity{
                        NumberAnimation {
                            duration: 200
                            easing.type: Easing.InOutQuad
                        }
                    }
                    Behavior on anchors.topMargin{
                        NumberAnimation {
                            duration: 200
                            easing.type: Easing.InOutQuad
                        }
                    }
                    PropertyChanges{ visible:opacity===1}
                }
            }


            Item{
                Layout.fillWidth:true
            }
        }
        Popup {
            id:finished_test
            parent:Overlay.overlay
            anchors.centerIn:parent
            modal: false
            focus: true
            closePolicy: Popup.NoAutoClose
            padding: 0
            onOpened: {
                // console.log('1on open cnt is : '+paceAnimation.cnt)
                paceAnimation.complete()
                // console.log('2on open cnt is : '+paceAnimation.cnt)
                if(paceAnimation.cnt!==0){

                    paceAnimation.cnt=textEdit.lineCount-1
                    paceAnimation.complete()
                }
                axisX.min=1

            }

            onClosed: {
                // series1.removePoints(0,series1.count)
                // series2.removePoints(0,series2.count)
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
                color:Qt.rgba(0,0,0,0)
            }

            Rectangle {
                implicitWidth: root_app.width
                implicitHeight: root_app.height
                color: root_app.bg_color
                ColumnLayout{
                    anchors.fill:parent
                    anchors.margins:34
                    RowLayout{
                        Layout.fillWidth:true
                        spacing:6
                        ColorImage{
                            Layout.topMargin:5
                            source:'./images/logo.svg'
                            color:root_app.main_color
                            sourceSize.height:23
                        }
                        Text{
                            Layout.alignment:Qt.AlignTop
                            text:"<font color='#a6e214'>Qt</font>monkeytype"
                            textFormat: TextEdit.RichText
                            font.family:Fonts.lexend_deca
                            font.weight:600
                            font.pointSize:25
                            color:root_app.text_color.toString()
                            Text{
                                anchors.top:parent.top
                                anchors.left:parent.left
                                anchors.topMargin:-2
                                anchors.leftMargin:40
                                text:"monkey see"
                                font.family:Fonts.lexend_deca
                                font.pointSize:9
                                color:root_app.sub_color.toString()
                            }
                        }
                        RowLayout{
                            Layout.leftMargin:10
                            Layout.fillWidth:true
                            Layout.fillHeight:true
                            spacing:20
                            Button{
                                hoverColor:root_app.text_color.toString()
                                pressColor:root_app.sub_color.toString()
                                Layout.alignment:Qt.AlignBottom
                                implicitHeight:monkeytype_name.height-15
                                implicitWidth:28
                                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M528 448H48c-26.5 0-48-21.5-48-48V112c0-26.5 21.5-48 48-48h480c26.5 0 48 21.5 48 48v288c0 26.5-21.5 48-48 48zM128 180v-40c0-6.6-5.4-12-12-12H76c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm-336 96v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm-336 96v-40c0-6.6-5.4-12-12-12H76c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm288 0v-40c0-6.6-5.4-12-12-12H172c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h232c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12z"/></svg>'
                                imageSize.width:20
                                buttonText:''
                                imageColor:root_app.sub_color.toString()
                                color:root_app.bg_color
                            }
                            Button{
                                hoverColor:root_app.text_color.toString()
                                pressColor:root_app.sub_color.toString()
                                Layout.alignment:Qt.AlignBottom
                                implicitHeight:monkeytype_name.height-15
                                implicitWidth:28
                                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M528 448H112c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h416c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zm64-320c-26.5 0-48 21.5-48 48 0 7.1 1.6 13.7 4.4 19.8L476 239.2c-15.4 9.2-35.3 4-44.2-11.6L350.3 85C361 76.2 368 63 368 48c0-26.5-21.5-48-48-48s-48 21.5-48 48c0 15 7 28.2 17.7 37l-81.5 142.6c-8.9 15.6-28.9 20.8-44.2 11.6l-72.3-43.4c2.7-6 4.4-12.7 4.4-19.8 0-26.5-21.5-48-48-48S0 149.5 0 176s21.5 48 48 48c2.6 0 5.2-.4 7.7-.8L128 416h384l72.3-192.8c2.5 .4 5.1 .8 7.7 .8 26.5 0 48-21.5 48-48s-21.5-48-48-48z"/></svg>'
                                imageSize.width:20
                                buttonText:''
                                imageColor:root_app.sub_color.toString()
                                color:root_app.bg_color
                            }
                            Button{
                                hoverColor:root_app.text_color.toString()
                                pressColor:root_app.sub_color.toString()
                                Layout.alignment:Qt.AlignBottom
                                implicitHeight:monkeytype_name.height-15
                                implicitWidth:28
                                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 192 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M20 424.2h20V279.8H20c-11 0-20-9-20-20V212c0-11 9-20 20-20h112c11 0 20 9 20 20v212.2h20c11 0 20 9 20 20V492c0 11-9 20-20 20H20c-11 0-20-9-20-20v-47.8c0-11 9-20 20-20zM96 0C56.2 0 24 32.2 24 72s32.2 72 72 72 72-32.2 72-72S135.8 0 96 0z"/></svg>'
                                imageSize.height:height-8
                                buttonText:''
                                imageColor:root_app.sub_color.toString()
                                color:root_app.bg_color
                            }
                            Button{
                                hoverColor:root_app.text_color.toString()
                                pressColor:root_app.sub_color.toString()
                                Layout.alignment:Qt.AlignBottom
                                implicitHeight:monkeytype_name.height-15
                                implicitWidth:28
                                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M487.4 315.7l-42.6-24.6c4.3-23.2 4.3-47 0-70.2l42.6-24.6c4.9-2.8 7.1-8.6 5.5-14-11.1-35.6-30-67.8-54.7-94.6-3.8-4.1-10-5.1-14.8-2.3L380.8 110c-17.9-15.4-38.5-27.3-60.8-35.1V25.8c0-5.6-3.9-10.5-9.4-11.7-36.7-8.2-74.3-7.8-109.2 0-5.5 1.2-9.4 6.1-9.4 11.7V75c-22.2 7.9-42.8 19.8-60.8 35.1L88.7 85.5c-4.9-2.8-11-1.9-14.8 2.3-24.7 26.7-43.6 58.9-54.7 94.6-1.7 5.4 .6 11.2 5.5 14L67.3 221c-4.3 23.2-4.3 47 0 70.2l-42.6 24.6c-4.9 2.8-7.1 8.6-5.5 14 11.1 35.6 30 67.8 54.7 94.6 3.8 4.1 10 5.1 14.8 2.3l42.6-24.6c17.9 15.4 38.5 27.3 60.8 35.1v49.2c0 5.6 3.9 10.5 9.4 11.7 36.7 8.2 74.3 7.8 109.2 0 5.5-1.2 9.4-6.1 9.4-11.7v-49.2c22.2-7.9 42.8-19.8 60.8-35.1l42.6 24.6c4.9 2.8 11 1.9 14.8-2.3 24.7-26.7 43.6-58.9 54.7-94.6 1.5-5.5-.7-11.3-5.6-14.1zM256 336c-44.1 0-80-35.9-80-80s35.9-80 80-80 80 35.9 80 80-35.9 80-80 80z"/></svg>'
                                imageSize.height:height-8
                                buttonText:''
                                imageColor:root_app.sub_color.toString()
                                color:root_app.bg_color
                            }

                            Item{
                                Layout.fillWidth:true
                            }
                            Button{
                                hoverColor:root_app.text_color.toString()
                                pressColor:root_app.sub_color.toString()
                                Layout.alignment:Qt.AlignBottom
                                implicitHeight:monkeytype_name.height-15
                                implicitWidth:28
                                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M224 512c35.3 0 64-28.7 64-64H160c0 35.4 28.7 64 64 64zm215.4-149.7c-19.3-20.8-55.5-52-55.5-154.3 0-77.7-54.5-139.9-127.9-155.2V32c0-17.7-14.3-32-32-32s-32 14.3-32 32v20.8C118.6 68.1 64.1 130.3 64.1 208c0 102.3-36.2 133.5-55.5 154.3-6 6.5-8.7 14.2-8.6 21.7 .1 16.4 13 32 32.1 32h383.8c19.1 0 32-15.6 32.1-32 .1-7.6-2.6-15.3-8.6-21.7z"/></svg>'
                                imageSize.height:height-8
                                buttonText:''
                                imageColor:root_app.sub_color.toString()
                                color:root_app.bg_color
                            }
                            Button{
                                hoverColor:root_app.text_color.toString()
                                pressColor:root_app.sub_color.toString()
                                Layout.alignment:Qt.AlignBottom
                                implicitHeight:monkeytype_name.height-15
                                implicitWidth:28
                                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M313.6 304c-28.7 0-42.5 16-89.6 16-47.1 0-60.8-16-89.6-16C60.2 304 0 364.2 0 438.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-25.6c0-74.2-60.2-134.4-134.4-134.4zM400 464H48v-25.6c0-47.6 38.8-86.4 86.4-86.4 14.6 0 38.3 16 89.6 16 51.7 0 74.9-16 89.6-16 47.6 0 86.4 38.8 86.4 86.4V464zM224 288c79.5 0 144-64.5 144-144S303.5 0 224 0 80 64.5 80 144s64.5 144 144 144zm0-240c52.9 0 96 43.1 96 96s-43.1 96-96 96-96-43.1-96-96 43.1-96 96-96z"/></svg>'
                                imageSize.height:height-8
                                buttonText:''
                                imageColor:root_app.sub_color.toString()
                                color:root_app.bg_color
                            }
                        }
                    }
                    Item{
                        Layout.fillHeight:true
                        Layout.fillWidth:true
                    }
                    GridLayout{
                        id:gridLayout
                        Layout.alignment:Qt.AlignCenter
                        Layout.fillWidth:true
                        Layout.preferredWidth:parent.width
                        Layout.preferredHeight:120
                        columns:5
                        rows:3
                        columnSpacing: 0
                        rowSpacing: 0


                        ColumnLayout {
                            Layout.fillWidth: true
                            Layout.alignment:Qt.AlignTop
                            Layout.row:0
                            Layout.column:0
                            spacing: -10
                            Text {
                                text:"wpm"
                                font.pointSize: 23
                                color: root_app.sub_color.toString()
                                horizontalAlignment: Text.AlignLeft
                                font.family: Fonts.roboto_mono
                                font.weight: 500
                            }
                            Text {
                                text: Math.round((textEdit.writtenWords/timer.timeStep)*60)
                                font.pointSize: 50
                                color: root_app.main_color
                                horizontalAlignment: Text.AlignLeft
                                font.family: Fonts.roboto_mono
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
                            Layout.fillHeight:true
                            backgroundColor :"transparent"
                            margins { right: 0; bottom: 0; left: 0; top: 0 }

                            legend.visible: false

                            ValueAxis {
                                id: axisX
                                min: 1
                                max: series1.count
                                tickCount :Math.min(series1.count,15)
                                labelsColor:root_app.sub_color.toString()
                                labelFormat: "%d"
                                gridLineColor :root_app.sub_alt_color.toString()
                                labelsFont:({
                                    family: Fonts.roboto_mono,
                                    pointSize: 10,
                                    weight:600,
                                    hintingPreference:Font.PreferNoHinting
                                })
                            }
                            ValueAxis {
                                id: axisY
                                min: 0
                                max: Math.max(timer.maxSpeed,timer.rawMaxSpeed) *1.1
                                labelsColor:root_app.sub_color.toString()
                                labelFormat: "%d"
                                gridLineColor :root_app.sub_alt_color.toString()
                                titleText :"<font color='"+root_app.sub_color.toString()+"'>Words per Minute</font>"
                                titleFont :labelsFont
                                labelsFont:({
                                    family: Fonts.roboto_mono,
                                    pointSize: 10,
                                    weight:600,
                                    hintingPreference:Font.PreferNoHinting
                                })
                            }
                            AreaSeries {
                                borderColor: Qt.rgba(0, 0, 0, 0)
                                borderWidth: 0
                                color:Qt.rgba(0,0,0,0.2)
                                axisX: axisX
                                axisY: axisY
                                upperSeries: series2
                            }

                            LineSeries {
                                id: series2
                                axisX: axisX
                                axisY: axisY
                                color: root_app.sub_color.toString()
                                useOpenGL: true
                                width: 3
                                capStyle: Qt.RoundCap
                                pointsVisible:true
                                onHovered: (point,state)=>{
                                }
                            }

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

                                    text:"num"
                                    font.pointSize: 11
                                    color: "white"
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: Fonts.roboto_mono
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
                                        model:ListModel{
                                            id:ticket_model
                                            ListElement{text:"errors";val:12}
                                            ListElement{text:"wpm";val:12}
                                            ListElement{text:"raw";val:12}


                                        }
                                        delegate:RowLayout{
                                            spacing:4
                                            Rectangle{
                                                width:14
                                                height:14
                                                color:[root_app.error_color.toString(),root_app.main_color.toString(),root_app.sub_color.toString()][index]
                                            }
                                            Text{
                                                text:model.text+":"
                                                font.pointSize: 10
                                                color: "white"
                                                horizontalAlignment: Text.AlignLeft
                                                font.family: Fonts.roboto_mono
                                                font.weight: 400
                                            }
                                            Text{
                                                text:model.val
                                                font.pointSize: 10
                                                color: "white"
                                                horizontalAlignment: Text.AlignLeft
                                                font.family: Fonts.roboto_mono
                                                font.weight: 400
                                            }
                                        }
                                    }
                                }
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
                                        var seriesPoint2 = chartView.mapToPosition(Qt.point(Math.round(point.x),series2.at(Math.round(point.x)-1).y));
                                        // console.log(Math.round(point.x)+ "  "+ series1.at(Math.round(point.x)).y)
                                        ticket.x = seriesPoint.x - ticket.width / 2; // Center the text horizontally
                                        // console.log(seriesPoint.x)
                                        ticket.y = (seriesPoint.y+seriesPoint2.y)/2 - ticket.height/2; // Position the text above the point
                                        ticket.opacity=1

                                        ticket_text.text=Math.round(point.x)
                                        console.log(Math.round(point.x) ," --> ",textEdit.errorTrackSeries[Math.round(point.x)] )
                                        ticket_rep.model.get(0).val=textEdit.errorTrackSeries[Math.round(point.x)] - (textEdit.errorTrackSeries[Math.max(0,Math.round(point.x)-1)])
                                        ticket_rep.model.get(1).val=series1.at(Math.round(point.x)-1).y
                                        ticket_rep.model.get(2).val=series2.at(Math.round(point.x)-1).y
                                    }
                                }
                                onExited:{
                                    ticket.opacity=0
                                }
                                onClicked:{
                                }
                            }

                            SplineSeries {
                                id: series1
                                axisX: axisX
                                axisY: axisY
                                color: root_app.main_color
                                useOpenGL: true
                                width: 3
                                capStyle: Qt.RoundCap
                                pointsVisible:true
                                // pointLabelsVisible :true
                                onHovered:(point,state)=> {
                                }

                            }

                        }
                        ColumnLayout {
                            Layout.fillWidth: true
                            Layout.alignment:Qt.AlignTop
                            Layout.row:1
                            Layout.column:0
                            spacing: -10

                            Text {
                                text:"acc"
                                font.pointSize: 23
                                color: root_app.sub_color.toString()
                                horizontalAlignment: Text.AlignLeft
                                font.family: Fonts.roboto_mono
                                font.weight: 500
                            }
                            Text {
                                text:Math.round((textEdit.writtenWords/textEdit.rawWrittenWords)*100) +"%"
                                font.pointSize: 50
                                color: root_app.main_color
                                horizontalAlignment: Text.AlignLeft
                                font.family: Fonts.roboto_mono
                                font.weight: 500
                            }

                        }
                        RowLayout{
                            Layout.rowSpan: 1
                            Layout.columnSpan: 5
                            Layout.fillWidth: true
                            spacing:10
                            ColumnLayout {
                                Layout.alignment:Qt.AlignTop
                                Layout.preferredWidth:100
                                Layout.maximumWidth:100
                                spacing: 0
                                clip:true

                                Text {
                                    text:"test type"
                                    font.pointSize: 14
                                    color: root_app.sub_color.toString()
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: Fonts.roboto_mono
                                    font.weight: 500
                                }
                                Text {
                                    Layout.fillWidth:true
                                    wrapMode: Text.WordWrap
                                    text:"words 85 english"
                                    font.pointSize: 12
                                    color: root_app.main_color
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: Fonts.roboto_mono
                                    font.weight: 500
                                    lineHeight :20
                                    lineHeightMode :Text.FixedHeight
                                }

                            }
                            Item{
                                Layout.fillWidth:true
                            }
                            ColumnLayout {
                                spacing: 0
                                clip:true

                                Text {
                                    text:"raw"
                                    font.pointSize: 14
                                    color: root_app.sub_color.toString()
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: Fonts.roboto_mono
                                    font.weight: 500
                                }
                                Text {
                                    // Layout.fillWidth:true
                                    wrapMode: Text.WordWrap
                                    text:  Math.round((textEdit.rawWrittenWords/timer.timeStep)*60)
                                    font.pointSize: 25
                                    color: root_app.main_color
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: Fonts.roboto_mono
                                    font.weight: 500
                                    lineHeight :20
                                    lineHeightMode :Text.FixedHeight
                                }

                            }
                            Item{
                                Layout.fillWidth:true
                            }
                            ColumnLayout {
                                spacing: 0
                                clip:true

                                Text {
                                    text:"characters"
                                    font.pointSize: 14
                                    color: root_app.sub_color.toString()
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: Fonts.roboto_mono
                                    font.weight: 500
                                }
                                Text {
                                    wrapMode: Text.WordWrap
                                    text: "51/1/0/0"
                                    font.pointSize: 25
                                    color: root_app.main_color
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: Fonts.roboto_mono
                                    font.weight: 500
                                    lineHeight :20
                                    lineHeightMode :Text.FixedHeight
                                }

                            }
                            Item{
                                Layout.fillWidth:true
                            }
                            ColumnLayout {
                                spacing: 0
                                clip:true

                                Text {
                                    text:"consistency"
                                    font.pointSize: 14
                                    color: root_app.sub_color.toString()
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: Fonts.roboto_mono
                                    font.weight: 500
                                }
                                Text {
                                    // Layout.fillWidth:true
                                    wrapMode: Text.WordWrap
                                    text: "84%"
                                    font.pointSize: 25
                                    color: root_app.main_color
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: Fonts.roboto_mono
                                    font.weight: 500
                                    lineHeight :20
                                    lineHeightMode :Text.FixedHeight
                                }

                            }
                            Item{
                                Layout.fillWidth:true
                            }
                            ColumnLayout {
                                spacing: 0
                                clip:true

                                Text {
                                    text:"time"
                                    font.pointSize: 14
                                    color: root_app.sub_color.toString()
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: Fonts.roboto_mono
                                    font.weight: 500
                                }
                                Text {
                                    // Layout.fillWidth:true
                                    wrapMode: Text.WordWrap
                                    text: timer.timeStep-1 + "s"
                                    font.pointSize: 25
                                    color: root_app.main_color
                                    horizontalAlignment: Text.AlignLeft
                                    font.family: Fonts.roboto_mono
                                    font.weight: 500
                                    lineHeight :20
                                    lineHeightMode :Text.FixedHeight
                                }

                            }
                            Item{
                                Layout.fillWidth:true
                            }
                        }
                        RowLayout{
                            Layout.rowSpan: 2
                            Layout.columnSpan: 5
                            Layout.fillWidth: true
                            Layout.topMargin:40
                            spacing:60
                            focus:true
                            Item{
                                Layout.fillWidth:true
                            }
                            Repeater{
                                id:btns_repeater
                                property int focus_index:0
                                model:ListModel{
                                    ListElement{text:"Next test";svg:'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M285.5 273L91.1 467.3c-9.4 9.4-24.6 9.4-33.9 0l-22.7-22.7c-9.4-9.4-9.4-24.5 0-33.9L188.5 256 34.5 101.3c-9.3-9.4-9.3-24.5 0-33.9l22.7-22.7c9.4-9.4 24.6-9.4 33.9 0L285.5 239c9.4 9.4 9.4 24.6 0 33.9z"/></svg>'}
                                    ListElement{text:"Repeat test";svg:'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Pro 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2024 Fonticons, Inc.--><path d="M142.9 142.9c62.2-62.2 162.7-62.5 225.3-1L327 183c-6.9 6.9-8.9 17.2-5.2 26.2s12.5 14.8 22.2 14.8H463.5c0 0 0 0 0 0H472c13.3 0 24-10.7 24-24V72c0-9.7-5.8-18.5-14.8-22.2s-19.3-1.7-26.2 5.2L413.4 96.6c-87.6-86.5-228.7-86.2-315.8 1C73.2 122 55.6 150.7 44.8 181.4c-5.9 16.7 2.9 34.9 19.5 40.8s34.9-2.9 40.8-19.5c7.7-21.8 20.2-42.3 37.8-59.8zM16 312v7.6 .7V440c0 9.7 5.8 18.5 14.8 22.2s19.3 1.7 26.2-5.2l41.6-41.6c87.6 86.5 228.7 86.2 315.8-1c24.4-24.4 42.1-53.1 52.9-83.7c5.9-16.7-2.9-34.9-19.5-40.8s-34.9 2.9-40.8 19.5c-7.7 21.8-20.2 42.3-37.8 59.8c-62.2 62.2-162.7 62.5-225.3 1L185 329c6.9-6.9 8.9-17.2 5.2-26.2s-12.5-14.8-22.2-14.8H48.4h-.7H40c-13.3 0-24 10.7-24 24z"/></svg>'}
                                    ListElement{text:"Practice words";svg:'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M256 32c14.2 0 27.3 7.5 34.5 19.8l216 368c7.3 12.4 7.3 27.7 .2 40.1S486.3 480 472 480H40c-14.3 0-27.6-7.7-34.7-20.1s-7-27.8 .2-40.1l216-368C228.7 39.5 241.8 32 256 32zm0 128c-13.3 0-24 10.7-24 24V296c0 13.3 10.7 24 24 24s24-10.7 24-24V184c0-13.3-10.7-24-24-24zm32 224a32 32 0 1 0 -64 0 32 32 0 1 0 64 0z"/></svg>'}
                                    ListElement{text:"Toggle words history";svg:'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M288 64c0 17.7-14.3 32-32 32H32C14.3 96 0 81.7 0 64S14.3 32 32 32H256c17.7 0 32 14.3 32 32zm0 256c0 17.7-14.3 32-32 32H32c-17.7 0-32-14.3-32-32s14.3-32 32-32H256c17.7 0 32 14.3 32 32zM0 192c0-17.7 14.3-32 32-32H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32c-17.7 0-32-14.3-32-32zM448 448c0 17.7-14.3 32-32 32H32c-17.7 0-32-14.3-32-32s14.3-32 32-32H416c17.7 0 32 14.3 32 32z"/></svg>'}
                                    ListElement{text:"Watch replay";svg:'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M459.5 440.6c9.5 7.9 22.8 9.7 34.1 4.4s18.4-16.6 18.4-29V96c0-12.4-7.2-23.7-18.4-29s-24.5-3.6-34.1 4.4L288 214.3V256v41.7L459.5 440.6zM256 352V256 128 96c0-12.4-7.2-23.7-18.4-29s-24.5-3.6-34.1 4.4l-192 160C4.2 237.5 0 246.5 0 256s4.2 18.5 11.5 24.6l192 160c9.5 7.9 22.8 9.7 34.1 4.4s18.4-16.6 18.4-29V352z"/></svg>'}
                                    ListElement{text:"Copy screenshots to clipboard";svg:'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M0 96C0 60.7 28.7 32 64 32H448c35.3 0 64 28.7 64 64V416c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V96zM323.8 202.5c-4.5-6.6-11.9-10.5-19.8-10.5s-15.4 3.9-19.8 10.5l-87 127.6L170.7 297c-4.6-5.7-11.5-9-18.7-9s-14.2 3.3-18.7 9l-64 80c-5.8 7.2-6.9 17.1-2.9 25.4s12.4 13.6 21.6 13.6h96 32H424c8.9 0 17.1-4.9 21.2-12.8s3.6-17.4-1.4-24.7l-120-176zM112 192a48 48 0 1 0 0-96 48 48 0 1 0 0 96z"/></svg>'}

                                }
                                delegate:Button{
                                    hoverColor:root_app.text_color.toString()
                                    pressColor:root_app.sub_color.toString()
                                    Layout.alignment:Qt.AlignBottom
                                    implicitHeight:41-15 +10
                                    implicitWidth:28 +10
                                    imageSource:'data:image/svg+xml;utf8,'+model.svg
                                    imageSize.height:41-15-8
                                    buttonText:''
                                    imageColor:root_app.sub_color.toString()
                                    color:root_app.bg_color
                                    borderWidth:2
                                    borderColor:focus?root_app.text_color.toString():"transparent"
                                    focus:index===btns_repeater.focus_index

                                    // Keys.onTabPressed: {
                                    //     btns_repeater.focus_index=(btns_repeater.focus_index + 1)%6
                                    // }
                                    Keys.onPressed:event=>{
                                        if (event.key ===  16777220){
                                           if(index===1){
                                               textEdit.resetProperties(true)
                                               finished_test.close()
                                           }
                                           if(index===0){
                                               textEdit.resetProperties(false)
                                               finished_test.close()
                                           }
                                        }else if (event.key === Qt.Key_Space ){
                                            event.accepted = true
                                        }
                                    }
                                    onClicked:{
                                        btns_repeater.focus_index=index
                                        if(index===1){
                                            textEdit.resetProperties(true)
                                            finished_test.close()
                                        }
                                        if(index===0){
                                            textEdit.resetProperties(false)
                                            finished_test.close()
                                        }
                                    }

                                    Text {
                                        opacity:parent.state ==="Hovering"?1:0
                                        anchors.top:parent.bottom
                                        anchors.topMargin:parent.state ==="Hovering"?22:20
                                        anchors.horizontalCenter:parent.horizontalCenter
                                        wrapMode: Text.WordWrap
                                        text:model.text
                                        font.pointSize: 12
                                        color: "white"
                                        horizontalAlignment: Text.AlignLeft
                                        font.family: Fonts.roboto_mono
                                        font.weight: 600
                                        Rectangle{
                                            anchors.fill:parent
                                            anchors.topMargin:-5
                                            anchors.bottomMargin:-5
                                            anchors.leftMargin:-15
                                            anchors.rightMargin:-15
                                            color:Qt.rgba(0,0,0,0.8)
                                            radius:2
                                            z:-1
                                            ColorImage{
                                                anchors.bottom:parent.top
                                                anchors.horizontalCenter:parent.horizontalCenter

                                                anchors.bottomMargin:-5
                                                sourceSize.width:10
                                                // sourceSize.height:5
                                                color:Qt.rgba(0,0,0,0.8)
                                                source:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M182.6 137.4c-12.5-12.5-32.8-12.5-45.3 0l-128 128c-9.2 9.2-11.9 22.9-6.9 34.9s16.6 19.8 29.6 19.8H288c12.9 0 24.6-7.8 29.6-19.8s2.2-25.7-6.9-34.9l-128-128z"/></svg>'
                                            }
                                        }
                                        Behavior on opacity{
                                            NumberAnimation {
                                                duration: 200
                                                easing.type: Easing.InOutQuad
                                            }
                                        }
                                        Behavior on anchors.topMargin{
                                            NumberAnimation {
                                                duration: 200
                                                easing.type: Easing.InOutQuad
                                            }
                                        }
                                        PropertyChanges{ visible:opacity===1}
                                    }
                                }
                            }

                            Item{
                                Layout.fillWidth:true
                            }
                        }

                    }

                    Item{
                        Layout.fillHeight:true
                        Layout.fillWidth:true
                    }
                }
            }
        }
        Item{
            Layout.fillWidth:true
            Layout.fillHeight:true
            // Layout.maximumHeight:height
        }
        RowLayout{
            Layout.fillWidth:true
            Item{
                Layout.fillWidth:true
            }
            RowButton{
                id:pallet_btn
                hoverColor:root_app.text_color.toString()
                pressColor:root_app.sub_color.toString()
                // implicitWidth:content.width
                Layout.alignment:Qt.AlignBottom
                implicitHeight:16
                imageSource:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M512 256c0 .9 0 1.8 0 2.7c-.4 36.5-33.6 61.3-70.1 61.3H344c-26.5 0-48 21.5-48 48c0 3.4 .4 6.7 1 9.9c2.1 10.2 6.5 20 10.8 29.9c6.1 13.8 12.1 27.5 12.1 42c0 31.8-21.6 60.7-53.4 62c-3.5 .1-7 .2-10.6 .2C114.6 512 0 397.4 0 256S114.6 0 256 0S512 114.6 512 256zM128 288a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zm0-96a32 32 0 1 0 0-64 32 32 0 1 0 0 64zM288 96a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zm96 96a32 32 0 1 0 0-64 32 32 0 1 0 0 64z"/></svg>'
                imageSize.height:height-4
                buttonText:'serika dark'
                fontWeight:500
                fontSize:9
                imageColor:checked? root_app.main_color:root_app.sub_color.toString()
                textColor:checked? root_app.main_color:root_app.sub_color.toString()
                color:"transparent"
                onClicked:{
                    changePallet.open()
                }
            }
            Popup {
                id:changePallet
                parent:Overlay.overlay
                x:parent.width/2 - width/2
                y:parent.height/2 - height/2
                // anchors.centerIn:parent
                modal: true
                dim:true
                focus: true
                // closePolicy: Popup.NoAutoClose
                padding: 0
                onOpened: {

                }

                onClosed: {

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
                    // radius: 6
                    // color: root_app.bg_color
                    color:Qt.rgba(0,0,0,0)
                }

                Rectangle {
                    implicitWidth: root_app.width *0.45
                    implicitHeight: root_app.height *0.7
                    color: root_app.bg_color.toString()
                    border.color: root_app.sub_alt_color.toString()
                    border.width:3
                    radius:10
                    ColumnLayout{
                        anchors.fill:parent
                        spacing:0
                        clip:true
                        RowLayout{
                            Layout.fillWidth:true
                            Layout.preferredHeight:54
                            Layout.maximumHeight:54
                            spacing:0
                            ColorImage{
                                Layout.alignment:Qt.AlignCenter
                                Layout.leftMargin:20
                                Layout.rightMargin:10
                                source:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"/></svg>'
                                color:root_app.sub_color.toString()
                                sourceSize.width:14
                            }
                            TextField{
                                id:searchPallet
                                // Layout.alignment:Qt.AlignCenter
                                Layout.fillWidth:true
                                Layout.fillHeight:true
                                placeholderText:'Search...'
                                onTextChanged: palletsortFilterModel.update()
                            }
                        }
                        SortFilterModel {
                            id: palletsortFilterModel
                            model: PalletListModel{
                                id:palletListModel

                            }
                            filterAcceptsItem: function(item) {
                                return item.name.includes(searchPallet.text)
                            }
                            lessThan: function(left, right) {
                                var leftVal = left.name;
                                var rightVal = right.name;
                                return leftVal < rightVal;
                            }
                            delegate: Rectangle{
                                id:palletItem
                                width:ListView.view.width
                                height:28
                                color:palletListView.currentIndex===index?root_app.text_color.toString():"transparent"
                                required property int index
                                required property var model
                                RowLayout{
                                    // Layout.fillWidth:true
                                    anchors.fill:parent
                                    spacing:10
                                    ColorImage{
                                        Layout.leftMargin:15
                                        source:'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M438.6 105.4c12.5 12.5 12.5 32.8 0 45.3l-256 256c-12.5 12.5-32.8 12.5-45.3 0l-128-128c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0L160 338.7 393.4 105.4c12.5-12.5 32.8-12.5 45.3 0z"/></svg>'
                                        sourceSize.height:14
                                        color:palletListView.currentIndex===index?root_app.bg_color.toString():root_app.sub_color.toString()
                                        opacity:palletListView.chosenPallet===index?1:0
                                    }
                                    Text {
                                        Layout.fillWidth:true
                                        text:model.name
                                        font.pointSize: 10
                                        color: palletListView.currentIndex===index?root_app.bg_color.toString():root_app.sub_color.toString()
                                        horizontalAlignment: Text.AlignLeft
                                        font.family: Fonts.roboto_mono
                                        font.weight: 500
                                    }
                                    Rectangle{
                                        Layout.rightMargin:10
                                        Layout.preferredWidth:44+3*2
                                        Layout.preferredHeight:12+6
                                        radius:height
                                        color:palletItem.model.bg_color.toString()
                                        RowLayout{
                                            anchors.fill:parent
                                            anchors.leftMargin:3
                                            anchors.rightMargin:3
                                            spacing:4
                                            Repeater{
                                                model:[palletItem.model.main_color.toString(),palletItem.model.sub_color.toString(),palletItem.model.text_color.toString()]
                                                delegate:Rectangle{
                                                    width:12
                                                    height:12
                                                    radius:6
                                                    color:modelData
                                                }
                                            }
                                        }
                                    }

                                }
                                onEnabledChanged: state = ""
                                states: [
                                    State {
                                        name: "Hovering"
                                        PropertyChanges {
                                            target: root_app
                                            main_color:model.main_color
                                            caret_color:model.caret_color
                                            sub_color:model.sub_color
                                            sub_alt_color:model.sub_alt_color
                                            bg_color:model.bg_color
                                            text_color:model.text_color
                                            error_color:model.error_color
                                            error_extra_color:model.error_extra_color
                                            colorful_error_color:model.colorful_error_color
                                            colorful_error_extra_color:model.colorful_error_extra_color
                                        }
                                        PropertyChanges {
                                            target: pallet_btn
                                            buttonText:model.name
                                        }
                                    },
                                    State {
                                        name: ""
                                        PropertyChanges {
                                            target: root_app
                                            main_color:palletListModel.get(palletListView.chosenPallet).main_color
                                            caret_color:palletListModel.get(palletListView.chosenPallet).caret_color
                                            sub_color:palletListModel.get(palletListView.chosenPallet).sub_color
                                            sub_alt_color:palletListModel.get(palletListView.chosenPallet).sub_alt_color
                                            bg_color:palletListModel.get(palletListView.chosenPallet).bg_color
                                            text_color:palletListModel.get(palletListView.chosenPallet).text_color
                                            error_color:palletListModel.get(palletListView.chosenPallet).error_color
                                            error_extra_color:palletListModel.get(palletListView.chosenPallet).error_extra_color
                                            colorful_error_color:palletListModel.get(palletListView.chosenPallet).colorful_error_color
                                            colorful_error_extra_color:palletListModel.get(palletListView.chosenPallet).colorful_error_extra_color
                                        }
                                        PropertyChanges {
                                            target: pallet_btn
                                            buttonText:palletListModel.get(palletListView.chosenPallet).name
                                        }
                                    }
                                ]

                                //define transmission for the states
                                transitions: [
                                    Transition {
                                        from: ""
                                        to: "Hovering"
                                        ColorAnimation {
                                            duration: 150
                                        }
                                    },
                                    Transition {
                                        from: "*"
                                        to: ""
                                        ColorAnimation {
                                            duration: 150
                                        }
                                    }
                                ]
                                MouseArea {
                                    anchors.fill: parent
                                    cursorShape: Qt.PointingHandCursor
                                    hoverEnabled: palletItem.enabled
                                    acceptedButtons: Qt.LeftButton
                                    onClicked: {
                                        palletListView.chosenPallet=index
                                        textEdit.resetProperties(textEdit.repeated)
                                        changePallet.close()
                                    }
                                    onEntered: {
                                        palletListView.currentIndex=index
                                        palletItem.state = 'Hovering';
                                    }
                                    onExited: {
                                        // palletItem.color= "transparent"
                                        palletItem.state = '';
                                    }
                                }
                            }

                        }
                        ListView{
                            id:palletListView
                            Layout.fillWidth:true
                            Layout.fillHeight:true
                            Layout.margins:5
                            clip:true
                            property int chosenPallet:2

                            T.ScrollIndicator.vertical: ScrollIndicator { }
                            model: palletsortFilterModel
                        }
                    }

                }
                Overlay.modal: Rectangle {
                    color: Qt.rgba(0, 0, 0, 0)
                }
            }
        }
    }

}
