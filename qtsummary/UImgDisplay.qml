import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle{
    property string img
    property var brightnes
    id:root
    width: 640
    height: 480
    //border.color: "blue"
    radius: 70

    RectangularGlow{
        anchors.fill: root
        glowRadius: 10
        spread: 0.7
        cornerRadius: 45
        color: "white"
    }
    DropShadow{
        anchors.fill: text
        source: text
        horizontalOffset: 5
        verticalOffset: 5
        radius: 5
        samples: 10
        color: "#121212"
    }
    Text{
        id:text
        anchors.centerIn: parent
        font.pixelSize: 30
        text: img ? "图片已打开" : "请先打开一张图片"
    }

    Flickable{
        id:flickable
        anchors.centerIn: parent
        width: 640
        height: 480
        contentWidth: seeImg.width
        contentHeight: seeImg.height
        clip: true
        visible:img ? true : false

        Rectangle{
            width: 640
            height: 480
            radius: 70
            Image{
                id:seeImg
                anchors.centerIn: parent
                smooth:true
                visible: false
                source:img
            }
            BrightnessContrast{
                anchors.fill: seeImg
                source: seeImg
                brightness: slider.value/100//亮度，默认0
                contrast: slider.value/100//对比度
            }
        }

        rebound: Transition{
            NumberAnimation{
                properties: "x,y"
                duration: 1000
                easing.type: Easing.OutBounce
            }
        }
        flickDeceleration: Flickable.HorizontalAndVerticalFlick
    }

    BrightnessSlider{
        id:slider
        anchors.left: parent.left
        anchors.leftMargin: 80
        anchors.top: parent.bottom
        anchors.topMargin: 40
        visible: img ? true : false
    }
}
