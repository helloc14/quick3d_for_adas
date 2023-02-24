import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

import "adas"

Window {
    width: 1920
    height: 720
    visible: true
    title: qsTr("helloc14")
    color: "white"

    Rectangle {
        id: adas_view
        anchors.fill: parent

        LanelineColorCtl {
            id: color_ctl
        }
        ParamCtl {
            id: param_ctl
            y: 300
        }
        Adas {
            anchors.fill: parent
            lane_line_color: color_ctl.value
            lane_line_param: param_ctl.value
        }
    }
}
