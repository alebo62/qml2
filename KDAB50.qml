import QtQuick
import Shapes 1.0


Item {
    width: 300; height: 200

    Ellipse {
        id: ellipse
        anchors.fill: parent
        anchors.margins: 50
        color: "blue"
    }

    Timer{
        interval: 2000
        running: true
        onTriggered: {ellipse.color = "red"}
    }

}
