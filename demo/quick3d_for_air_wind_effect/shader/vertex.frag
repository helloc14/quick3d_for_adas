in vec3 attr_pos;
out vec3 pos;
varying vec2 coord;

uniform mat4 modelViewProjection;

void main()
{
    pos = attr_pos;
    coord = vec2(pos.y, pos.x);
    pos.z = sin(pos.y*param.z*2.0*3.14 + param.x)*0.1*pos.y;
    //pos.x = sin(pos.y*param.z*2.0*3.14 + param.x)*0.1*(pos.y) + pos.x;
    gl_Position = modelViewProjection * vec4(pos.x, pos.y, pos.z, 1.0);
}
