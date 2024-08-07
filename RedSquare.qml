import QtQuick

Rectangle {
    width: 48
    height: 48

    color: "#ea7025"
    border.width: 5
    border.color: Qt.lighter(color)

    DragHandler {}
}
