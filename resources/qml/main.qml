import QtQuick 2.9
import QtQuick.Window 2.2

import "../javascript/utils.js" as Utils

Window {

    visible: true
    width: 640
    height: 480
    title: qsTr("Drag and drop rectangle example")


    Rectangle{
        id: draggableRectId
        width: 120
        height: width

        MouseArea{
            anchors.fill: parent
            drag.target: draggableRectId
            drag.axis: Drag.XAxis
            drag.minimumX: 0
            drag.maximumX: parent.width
        }
    }
}
