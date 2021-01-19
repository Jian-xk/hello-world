import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Rectangle{
    id:root
    property var value: slider.value

    Slider{
        id:slider
        minimumValue: 0
        maximumValue: 100
        orientation :Qt.Horizontal
        activeFocusOnPress:true
        updateValueWhileDragging:false
        value: root.value
        stepSize: 0.01
        style: SliderStyle{
            groove: Rectangle{
                implicitWidth: 200
                implicitHeight: 3
                color: "#999999"
                radius: 8
            }
            handle: Rectangle{
                anchors.centerIn: parent
                color: control.pressed ? "white" : "lightgray"
                border.color: "gray"
                border.width: 2
                implicitWidth: 15
                implicitHeight: 15
                radius: 12
            }
        }
    }
    Text{
        anchors.top: slider.top
        anchors.right: parent.left
        anchors.rightMargin: 10
        color: "white"
        text: "亮度调节"+Math.floor(slider.value)
    }
}
