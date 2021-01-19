import  QtQuick 2.2
import  QtQuick.Controls 2.2
import  QtQuick.Layouts 1.2
Rectangle{
    id:rect
    width: 480
    height: 360
    color: "#EEEEEE"
    clip: true
    property var time:Qt.formatDateTime(new Date(), "dddd\ yyyy-MM-dd \hh:mm:ss")

    Component{
        id:headerView
        Item{
            width: parent.width
            height: 30
            RowLayout{
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                spacing: 2
                Text{
                    text: "Cost"
                    color: "black"
                    font.pixelSize: 25
                    Layout.fillWidth: true
                }
            }
        }
    }
    Component{
        id:comView
        Item{
            id:wrapper
            width: rect.width
            height: 30
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    wrapper.ListView.view.currentIndex=index
                    mouse.accepted=true
                }
            }
            RowLayout{
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                spacing: 2
                Text{
                    text: cost
                    color: wrapper.ListView.isCurrentItem?"red":"black"
                    font.pixelSize: wrapper.ListView.isCurrentItem?22:18
                    Layout.fillWidth: true
                }
            }
        }
    }
    ListModel {
        id: listModel
    }
    ListView{
        id:listView
        anchors.fill: parent
        delegate: comView
        model: listModel//.createObject(listView)
        header:headerView

        focus:true
        keyNavigationWraps: true
        highlight: Rectangle{
            color: "lightblue"
        }
        add:Transition {
            ParallelAnimation{
                NumberAnimation{
                    property: "opacity"
                    from:0
                    to:1.0
                    duration: 1000
                }
                NumberAnimation{
                    property: "y"
                    from:0
                    duration: 1000
                }
            }
        }
        remove: Transition{
            SequentialAnimation{
                NumberAnimation{
                    properties: "y"
                    to:0
                    duration: 600
                }
                NumberAnimation{
                    property: "opacity"
                    to:0
                    duration: 400
                }
            }
        }

    }
    Timer{
        interval: 1000
        running:true
        repeat: true
        onTriggered: {
            addOne()
            if(listModel.count==20){
                listView.model.clear()
            }
        }
    }

    function addOne(){
        listModel.append(
            {
                "cost":Qt.formatDateTime(new Date(), "dddd\ yyyy-MM-dd \hh:mm:ss")
            }
        )
    }
}


