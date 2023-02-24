import QtQuick 2.15
import QtQuick3D 1.15
import "./"

Node {
    id: root_node
    property real param: 0.0
    property vector4d color: Qt.vector4d(1.0, 1.0, 1.0, 0.0)
    property real dot_step: 0.0

    Model {
        eulerRotation.y: 180
        scale.z: 0.001  //heng
        scale.x: 0.01 //qian hou
        scale.y: 0.0001 //shang xia
        source: "qrc:/adas/road/meshes/laneline.mesh"
        materials:
            LanelineMetrial {
                color: root_node.color
                param: root_node.param
                dot_step: root_node.dot_step
            }
    }

}
