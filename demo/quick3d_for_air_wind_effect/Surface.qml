import QtQuick 2.15
import QtQuick3D 1.15

Node {
    id: rootNode
    opacity: 0.2

    Model {
        id: __
        x: 0
        y: 0
        eulerRotation.x: -90
        scale.x: 50
        scale.y: 50
        scale.z: 50
        source: "qrc:/res/meshes/cube.mesh"
        z: 0

        SurfaceMaterial {
            id: surfaceMaterial
        }

        materials: [
            surfaceMaterial
        ]
    }
}
