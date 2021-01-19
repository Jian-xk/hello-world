import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 720
    height: 640
    title: qsTr("Hello World")
    color: "black"
    Item{
        id:item
        anchors.fill: parent
        UImgDisplay{
            id:imgDisplay
            anchors.top: parent.top
            anchors.topMargin: 2
            anchors.horizontalCenter: parent.horizontalCenter
            img: openImg.url
        }
        UIFileButton{
            id:openImg
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 3
            text: "打开图片"
        }

        UIButton{
            anchors.left: openImg.right
            anchors.top: openImg.top
            text: "退出"
            onClicke: Qt.quit()

        }
        LocalTime{
            id:locaTime
            anchors.right: parent.right
            anchors.bottom: openImg.bottom
        }
        FlipaLocalTime{
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.bottom: locaTime.top
        }
    }
    UIButton{
        anchors.left: parent.left
        anchors.leftMargin: 165
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 3
        text: "视图切换"
        onClicke:{
            if(item.visible==true){
                item.visible=false
                modelView.visible=true
            }else{
                item.visible=true
                modelView.visible=false
            }
        }
    }
    ModelView{
        id:modelView
        visible: false
        anchors.centerIn: parent
    }
}
