import QtQuick 2.15
import QtQuick3D 1.15
import QtQuick3D.Effects 1.0

import "road"

View3D {
    id: view3D

    environment: sceneEnvironment
    camera: camera

    property vector4d lane_line_color: Qt.vector4d(1.0, 1.0, 1.0, 0.0)
    property real lane_line_param: 0.0

    SceneEnvironment {
        id: sceneEnvironment
        antialiasingMode: SceneEnvironment.SSAA
        antialiasingQuality: SceneEnvironment.VeryHigh
        effects: [vignette]
    }

    Vignette {
        id: vignette
        vignetteRadius: 3.5
        vignetteStrength: 13
        vignetteColor: Qt.vector3d(0, 0, 0)
    }

    DirectionalLight {
        id: directionalLight
        x: -835.935
        y: 705.337
        brightness: 17.55
        eulerRotation.z: 0.00001
        eulerRotation.y: -90.32816
        eulerRotation.x: -30.2204
        z: 0.22002
    }

    PerspectiveCamera {
        id: camera
        x: 100.697
        y: 99.13
        fieldOfView: 45
        eulerRotation.z: 0
        eulerRotation.y: 90
        eulerRotation.x: -22.5
        z: 0
    }

    Timer {
        id: timer
        interval: 40
        running: true
        repeat: true

        property real value: -11.0

        onTriggered: {
            value = value + 1.0 > 200.0 ? -10.0 : value + 1.0;
        }
    }

    Laneline {
        id: left_left_lane_line
        color: lane_line_color
        param: lane_line_param
        dot_step: timer.value
        z: 65
    }

    Laneline {
        id: left_lane_line
        color: lane_line_color
        param: lane_line_param
        dot_step: timer.value
        z: 22
    }

    Laneline {
        id: right_lane_line
        color: lane_line_color
        param: lane_line_param
        dot_step: timer.value
        z: -22
    }

    Laneline {
        id: right_right_lane_line
        color: lane_line_color
        param: lane_line_param
        dot_step: timer.value
        z: -65
    }
}
