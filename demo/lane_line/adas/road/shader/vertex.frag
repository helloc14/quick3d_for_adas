in vec3 attr_pos;

uniform mat4 modelViewProjection;

out vec3 pos;

void main()
{
    pos = attr_pos;
    pos.z = pos.z + (param*pos.x*pos.x)*0.001;
    gl_Position = modelViewProjection * vec4(pos.x, pos.y, pos.z, 1.0);
}
