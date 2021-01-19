import QtQuick 2.0
import QtGraphicalEffects 1.0
Rectangle{
    width: 180
    height: 30
    color: "black"
    Timer{
        interval: 500
        running: true
        repeat: true
        onTriggered: {
            time.text=getCurDate().toString()
            //time.text=Qt.formatDateTime(new Date(), "dddd\ yyyy-MM-dd \hh:mm:ss")
        }
    }
    function getCurDate(){
        var d=new Date()
        var week
        switch(d.getDay()){
        case 1: week="星期一"
            break
        case 2: week="星期二"
            break
        case 3: week="星期三"
            break
        case 4: week="星期四"
            break
        case 5: week="星期五"
            break
        case 6: week="星期六"
            break
        default:
            week="星期天"
        }

        var years = d.getFullYear()
        var month = add_time(d.getMonth()+1)
        var days = add_time(d.getDate())
        var hours = add_time(d.getHours())
        var minutes = add_time(d.getMinutes())
        var seconds = add_time(d.getSeconds())
        var ndate = years+"-"+month+"-"+days+"-"+hours+":"+minutes+":"+seconds
        return ndate

    }
    function add_time(temp) {
        if (temp<10) return "0"+temp
        else return temp
    }

    Rectangle{
        width: 180
        height: 30
        color: "black"
        clip: true
        Text{
            id:comment
            text: "点击上方圆可翻转"
            color: "#FFFFFF"
            NumberAnimation on x{
                duration: 3000
                loops: Animation.Infinite
                from:200
                to:-100
            }
        }
        ConicalGradient{
            anchors.fill: comment;source: comment
            gradient: Gradient{
                GradientStop{position: 0.0;color: "#F0F0F0"}
                GradientStop{position: 0.5;color: "#000000"}
                GradientStop{position: 1.0;color: "#F0F0F0"}
            }
        }
        LinearGradient{
            anchors.fill: comment;source: comment
            opacity: 0.5
            gradient: Gradient{
                GradientStop{position: 0.0;color: "#ede916"}
                GradientStop{position: 0.5;color: "#0751f8"}
            }
        }
        Text{
            id:time
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            color: "white"
        }
    }
}
