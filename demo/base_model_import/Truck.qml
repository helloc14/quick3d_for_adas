import QtQuick 2.15
import QtQuick3D 1.15

Node {
    id: rootNode

    Model {
        id: truck
        y: 0.0408156
        z: -0.0175461
        eulerRotation.x: -90
        scale.x: 4
        scale.y: 4
        scale.z: 4
        source: "meshes/truck.mesh"

        DefaultMaterial {
            id: node03___Default_material
            diffuseColor: "#ff808080"
        }
        materials: [
            node03___Default_material
        ]
    }
}
