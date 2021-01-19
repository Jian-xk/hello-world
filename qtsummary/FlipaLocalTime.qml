import QtQuick 2.0

Rectangle{
    width: 120
    height: 120
    radius:360
    clip: true
    Flipable {
        id:flipable
        anchors.fill: parent

        property bool flipaed: false

        front:UILocalTime{anchors.fill: parent}
        back:Image{
            sourceSize: Qt.size(120,120)
            source: "./proimage/0.png"
            }
        transform: Rotation{//transform转换类型
            id:rotation
            origin.x:flipable.width/2
            origin.y:flipable.height/2
            axis.x:0;axis.y:1;axis.z:0;
            angle: 0
        }
        states: State {
            name: "back"
            PropertyChanges {
                target: rotation;angle:360
            }
            when:flipable.flipaed
        }
        transitions: Transition{
            NumberAnimation{
                target: rotation;
                property: "angle";duration: 2000
            }
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Flip effect ")
                flipable.flipaed=!flipable.flipaed
            }
        }
    }
}
