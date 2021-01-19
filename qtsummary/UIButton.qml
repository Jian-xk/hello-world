import QtQuick 2.0
import QtQuick.Controls 2.1

Rectangle{
    property var text
    signal clicke()

    id:button
    width: 75
    height: 30
    state: "default"

    Text{
        id:_text
        anchors.centerIn: parent
        text: button.text
    }
    MouseArea{
        z:5
        anchors.fill: parent
        onPressed: {
            button.state="press"
            _text.font.pixelSize=14
            _text.font.weight=Font.bold
        }
        onReleased:{
            button.state="default"
            _text.font.pixelSize=13
        }
        onClicked: button.clicke()
    }

    states: [
        State {
            name: "default"
            PropertyChanges {
                target: button
                border.width: 1
                border.color: "#333333"
            }
        },
        State {
            name: "press"
            PropertyChanges {
                target: button
                border.width: 2
                border.color: "#AAAAAA"
            }
        }
    ]
    transitions: [//此属性保存此项目的转换列表,这些定义了每当项目更改状态时将应用于项目的过渡
        Transition {
            from: "default"
            to: "press"
            ColorAnimation{
                target: button
                duration: 100
            }
        },
        Transition {
            from: "press"
            to: "default"
            ColorAnimation{
                target: button
                duration: 100
            }
        }
    ]
}
