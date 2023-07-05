out vec4 fragColor;
in vec3 pos;

varying vec2 coord;

void main()
{
    //fragColor = vec4(color.x, color.y, color.z, color.w);
    fragColor = texture(tex, coord);
}

