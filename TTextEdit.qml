import QtQuick

FocusScope {

    Rectangle {
        color: "lightsteelblue"
        border.color: "grey"
        width: 96
        height: 96

        property alias text: input.text
        property alias input: input

        TextEdit {
            id: input
            focus: true
            anchors.fill: parent
            anchors.margins: 4
        }
    }
}
