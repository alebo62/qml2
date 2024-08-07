import QtQuick

DarkSquare {
    id: root
    width: 252
    height: 252

    property variant colorArray: ["red", "green", "blue"]

    Grid {
        anchors.fill: parent
        anchors.margins: 8
        spacing: 4

        Repeater {
            model: 16
            delegate: Rectangle {
                required property int index
                property int colorIndex: Math.floor(Math.random() * 3)
                height: 56
                width: 56
                color: root.colorArray[colorIndex]
                border.color: Qt.darker(color)

                Text {
                    text: "Cell " + parent.index
                    anchors.centerIn: parent
                    color: "#F0F0F0"
                }
            }
        }
    }
}
