import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick3D 1.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    View3D {  //定义一个3d场景
        id: view3d
        width: parent.width
        height: parent.height
        anchors.bottom: parent.bottom
        camera: cameraPerspective     //绑定摄像机
        environment: sceneEnvironment //绑定环境

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA           //这个属性控制渲染场景时应用的抗锯齿模式，具体参数取值，可F1查找帮助文档
            antialiasingQuality: SceneEnvironment.VeryHigh    //这个属性设置场景的抗锯齿级别。行为依赖于使用的antialiasingMode。当antialiasingMode属性设置为NoAA时，这个属性没有作用。
            backgroundMode: SceneEnvironment.Transparent  　　 //该参数可设置 3d场景的背景
        }
        PerspectiveCamera {
            id: cameraPerspective
            x: -0
            y: 23.861
            eulerRotation.z: 0
            eulerRotation.y: -0
            z: 201.37027
            eulerRotation.x: -3.46366
            fieldOfViewOrientation: PerspectiveCamera.Horizontal
            clipNear: 1
            fieldOfView: 43
        }

        DirectionalLight { //灯光
            id: lightDirectional
            x: -1554.672
            y: -254.996
            brightness: 146
            eulerRotation.z: 55.92922
            eulerRotation.y: -61.62584
            eulerRotation.x: -52.99892
            z: -4.38876
        }

        Timer {
            id: timer
            interval: 30
            running: true
            repeat: true
            onTriggered: {
                truck.eulerRotation.y += 1;
            }
        }

        Truck {
            id: truck
        }
    }
}
