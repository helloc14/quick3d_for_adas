import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick3D 1.15

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: "black"

    View3D {
        id: view3D
        anchors.fill: parent
        environment: sceneEnvironment
        SceneEnvironment {
            id: sceneEnvironment
            depthPrePassEnabled: false
            clearColor: "#000000"
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
            backgroundMode: SceneEnvironment.Transparent
        }

        Node {
            id: scene
            PerspectiveCamera {
                id: camera
                x: 0
                y: 0
                z: -370.66724
                eulerRotation.y: 180
                eulerRotation.x: 0.00002
                eulerRotation.z: -0
                visible: true
                clipNear: 10
                clipFar: 10000
                fieldOfView: 40
            }
            Surface {
                id: surface
                position.x: 0
                position.y: 0
                position.z: 2000
                eulerRotation.z: -0
                eulerRotation.y: 0
                eulerRotation.x: -0.00002
                scale.x: 5
                scale.y: 5
                scale.z: 20
            }
        }
    }
}
