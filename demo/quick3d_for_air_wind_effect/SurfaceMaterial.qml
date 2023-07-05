import QtQuick 2.15
import QtQuick3D 1.15
import QtQuick3D.Materials 1.15

CustomMaterial {
    property string textureImg: "qrc:/res/texture.png"
    property vector3d param: Qt.vector3d(0.0, 1.0, 0.5)

    Timer {
        id: timer
        interval: 30
        running: true
        repeat: true
        onTriggered: {
            param.x = param.x + 0.1;
        }
    }

    shaderInfo: ShaderInfo {
        version: "330"
        type: "GLSL"
    }

    Shader {
        id: fragmentShader
        stage: Shader.Fragment
        shader: "qrc:/shader/fragment.frag"
    }

    Shader {
        id: verTexShader
        stage: Shader.Vertex
        shader: "qrc:/shader/vertex.frag"
    }

    passes: [ Pass {
            shaders: [ fragmentShader, verTexShader]
        }
    ]

    property TextureInput tex: TextureInput {
        id: texture
        enabled: true
        texture: Texture {
            id: windTexture
            source: textureImg
            tilingModeHorizontal: Texture.MirroredRepeat
            tilingModeVertical: Texture.MirroredRepeat
        }
    }
}
