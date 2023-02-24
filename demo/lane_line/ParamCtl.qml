import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property real value: _param.value
    Column {
        Row {
            Slider {
                id: _param
                stepSize: 0.001
                from: -0.3
                value: 0.0
                to: 0.3
            }
            Label {
                y: 10
                text: qsTr("Param: ") + _param.value.toFixed(3)
            }
        }
    }
}
