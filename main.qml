import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    //     width: 640
    //     height: 480
    visible: true
    //     title: qsTr("Hello World")
    //Item {
    id: root
    width: background.width
    height: background.height

    Image {
        id: background
        source: "qrc:/assets/background_medium.png"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            greenBox.y = blueBox.y = redBox.y = 205
        }
    }

    ClickableImageV2 {
        id: greenBox

        source: "assets/box_green.png"
        x: 40
        y: 320 - height
        text: qsTr("animation on property")
        NumberAnimation on y {
            to: 40
            duration: 4000
        }
    }

    ClickableImageV2 {
        id: blueBox
        x: (root.width - width) / 2
        y: root.height - height
        source: "qrc:/assets/box_blue.png"
        text: qsTr("behavior on property")
        Behavior on y {
            NumberAnimation {
                duration: 4000
            }
        }

        onClicked: y = 40
        // random y on each click
        // onClicked: y = 40 + Math.random() * (205-40)
    }

    ClickableImageV2 {
        id: redBox
        x: root.width - width - 40
        y: root.height - height
        source: "qrc:/assets/box_red.png"
        onClicked: anim.start()

        // onClicked: anim.restart()
        text: qsTr("standalone animation")

        NumberAnimation {
            id: anim
            target: redBox
            properties: "y"
            to: 40
            duration: 4000
        }
    }

    //Button {}
    // Column {

    //     spacing: 5
    //     RedSquare {}
    //     RedSquare {
    //         width: 96
    //     }

    //     Row {
    //         spacing: 10
    //         layoutDirection:
    //         RedSquare {}
    //         RedSquare {}
    //     }
    // }
    //RepeaterExample {}
    // Rectangle {
    //     width: 200
    //     height: 200
    //     color: "lightblue"
    //     DragHandler {}
    //     Rectangle {
    //         width: 48
    //         height: 48
    //         color: "green"
    //         anchors.left: parent.left
    //         anchors.leftMargin: 8
    //         DragHandler {}
    //     }
    // }
    // TLineEditV2 {
    //     //x: 10
    //     id: input1
    //     y: 10
    //     KeyNavigation.tab: input2
    // }

    // TLineEditV2 {
    //     //x: 10
    //     id: input2
    //     y: 40
    //     KeyNavigation.tab: input1
    //     input_: true
    // }
    //TTextEdit {}
    // DarkSquare {
    //     width: 400
    //     height: 200

    //     RedSquare {
    //         id: square
    //         x: 8
    //         y: 8
    //     }

    //     focus: true

    //     Keys.onUpPressed: square.y -= 8
    //     Keys.onDownPressed: square.y += 8
    //     Keys.onLeftPressed: square.x -= 8
    //     Keys.onRightPressed: square.x += 8

    //     Keys.onPressed: function (event) {
    //         switch (event.key) {
    //         case Qt.Key_Plus:
    //             square.scale += .2
    //             break
    //         case Qt.Key_Minus:
    //             square.scale -= .2
    //             break
    //         }
    //     }
    // }
    //AnimationExample {}
}
