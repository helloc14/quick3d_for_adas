out vec4 fragColor;
in vec3 pos;


void dot_lane_line(float start, float end)
{
    if (pos.x > start && pos.x < end) {
        fragColor = vec4(0.0, 0.0, 0.0, 0.00);
    }
    else {
        if (start >= 100000.0) {
            start = start - 105000.0;
            end = start + 5000.0;
            if (pos.x > start && pos.x < end) {
                fragColor = vec4(0.0, 0.0, 0.0, 0.00);
            }
        }
    }
}

void main()
{
    fragColor = vec4(color.x, color.y, color.z, color.w);

    float offset = 0.0;
    for (int i = 0; i < 10; i++) {
        offset = i*10500.0;
        dot_lane_line(0.0+dot_step*450.0+offset, 5000.0+dot_step*450.0+offset);
    }
}

