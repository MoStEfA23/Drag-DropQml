import QtQuick 2.9
import QtQuick.Window 2.2

import "../javascript/utils.js" as Utils

Window {
    id: windowId
    visible: true
    width: 640
    height: 480
    title: qsTr("Drag and drop rectangle example")


    Rectangle{
        id: draggableRectId
        width: 120
        height: width
        color: Utils.setColorBy(windowId.width - width, x)//the color will change according to x position of the rectangle

        MouseArea{
            anchors.fill: parent
            drag.target: draggableRectId
            drag.axis: Drag.XAxis
            drag.minimumX: 0
            drag.maximumX: windowId.width - draggableRectId.width
        }
    }
}
