import QtQuick 2.15
import QtQuick3D 1.15
import QtQuick3D.Materials 1.15

CustomMaterial {
    property real param: 0.0
    property vector4d color: Qt.vector4d(0.4, 0.4, 0.4, 0.5)
    property real dot_step: 0.0

    shaderInfo: ShaderInfo {
        version: "330"
        type: "GLSL"
    }

    Shader {
        id: fragmentShader
        stage: Shader.Fragment
        shader: "qrc:/adas/road/shader/fragment.frag"
    }

    Shader {
        id: verTexShader
        stage: Shader.Vertex
        shader: "qrc:/adas/road/shader/vertex.frag"
    }

    passes: [ Pass {
            shaders: [ fragmentShader, verTexShader]
        }
    ]
}
