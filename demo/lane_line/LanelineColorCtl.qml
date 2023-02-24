import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property vector4d value: Qt.vector4d(r.value, g.value, b.value, a.value)

    Column {
        Row {
            Slider {
                id: r
                stepSize: 0.01
                from: 0.0
                value: 0.0
                to: 1.0
            }
            Label {
                y: 10
                text: qsTr("R: ") + r.value.toFixed(2)
            }
        }

        Row {
            Slider {
                id: g
                stepSize: 0.01
                from: 0.0
                value: 0.0
                to: 1.0
            }
            Label {
                y: 10
                text: qsTr("G: ") + g.value.toFixed(2)
            }
        }

        Row {
            Slider {
                id: b
                stepSize: 0.01
                from: 0.0
                value: 0.0
                to: 1.0
            }
            Label {
                y: 10
                text: qsTr("B: ") + b.value.toFixed(2)
            }
        }

        Row {
            Slider {
                id: a
                stepSize: 0.01
                from: 0.0
                value: 1.0
                to: 1.0
            }
            Label {
                y: 10
                text: qsTr("A: ") + a.value.toFixed(2)
            }
        }
    }
}
