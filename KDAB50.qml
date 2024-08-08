import QtQuick
import Shapes 1.0


Item {
    width: 300; height: 200
    id: ellipse
    Ellipse {
        anchors.fill: parent
        anchors.margins: 50
        color: "blue"
    }

    Timer{
        interval: 2000
        running: true
        onTriggered: ellipse.color = "red"
    }

}
