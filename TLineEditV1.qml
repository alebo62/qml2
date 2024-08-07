import QtQuick

Rectangle {
    color: "lightsteelblue"
    border.color: "grey"
    width: 96
    height: input.font.pixelSize + 8
    property alias text: input.text
    property alias input: input
    TextInput {
        id: input
        focus: true
        anchors.fill: parent
        anchors.margins: 4
    }
}
