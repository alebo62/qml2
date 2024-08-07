import QtQuick

Rectangle {
    id: root

    property alias text: label.text
    //property alias width: width
    //property alias height: height
    signal clicked

    x: 12
    y: 12
    width: 116
    height: 26
    color: "lightsteelblue"
    border.color: "slategrey"

    Text {
        id: label
        anchors.centerIn: parent
        text: "Start"
    }

    MouseArea {
        anchors.fill: parent

        onClicked: root.clicked
    }

    // Text {
    //     id: status
    //     x: 12 ; y: 76
    //     width: 116
    //     height: 76
    //     horizontalAlignment: Text.AlignHCenter
    // }
}
