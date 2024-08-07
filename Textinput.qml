import QtQuick

Rectangle {
    color: "linen"
    width: 200
    height: 80
    TextInput {
        id: input1
        width: 96
        height: 20
        x: 8
        y: 8
        focus: true
        text: "TextInput1"
        KeyNavigation.tab: input2
    }

    TextInput {
        id: input2
        width: 96
        height: 20
        x: 8
        y: 36
        focus: false
        text: "TextInput2"
        KeyNavigation.tab: input1
    }
}
