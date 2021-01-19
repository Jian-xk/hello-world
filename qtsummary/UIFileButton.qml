import QtQuick 2.0
import QtQuick.Dialogs 1.2

UIButton{
    id:root
    property string url

    onClicke: {
        fileopen.visible=true
        fileopen.open()
    }

    FileDialog{
        id:fileopen
        title: "请选择一张图片"
        visible: false
        nameFilters: ["Image Files(*.jpg *.png *.jpeg *.bmp *.*)"]
        selectMultiple: true
        onAccepted: {
           root.url=fileopen.fileUrls[0]
        }
    }
}
