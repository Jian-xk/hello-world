import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 400
    height: 400
    title: qsTr("test")
    screen: [1920,1080]
    Component {
        id: com_rect0
        Rectangle {
            width: 100
            height: 100
            opacity: 0.5
            color: index & 1 ? "#666666" : "#F85621"
            Text {
                anchors.centerIn: parent
                font.pixelSize: 32
                color: ccolor
                text: cvalue
            }
            property string ccolor: "#000000"
            property int cvalue: index//model.value
        }
    }
    Component {
        id: com_rect1
        Rectangle {
            width: 100
            height: 100
            opacity: 0.5
            color: index & 1 ? "#F85621" : "#666666"
            Text {
                anchors.centerIn: parent
                font.pixelSize: 32
                color: ccolor
                text: cvalue
            }
            property string ccolor: "#000000"
            property int cvalue: index//model.value
        }
    }
    Grid {
        anchors.fill: parent
        columns: 4
        rows: 4
//        Repeater {
//            model: 4
//            delegate: com_rect0
//        }
//        Repeater {
//            model: 4
//            delegate: com_rect1
//        }
//        Repeater {
//            model: 4
//            delegate: com_rect0
//        }
//        Repeater {
//            model: 4
//            delegate: com_rect1
//        }

    }
}
