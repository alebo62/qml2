import QtQuick

Item {
    id: root
    width: container.childrenRect.width
    height: container.childrenRect.height
    property alias source: img.source
    property alias text: label.text
    signal clicked

    Column {
        id: container
        Image {
            id: img
        }

        Text {
            id: label
            width: img.width
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            color: "#ececec"
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
