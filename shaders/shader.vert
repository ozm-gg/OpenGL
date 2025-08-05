#version 330 core
layout (location = 0) in vec3 aPos;   // the position variable has attribute position 0
layout (location = 1) in vec3 aColor; // the color variable has attribute position 1

uniform float time;

out vec3 outColor; // output a color to the fragment shader
out vec3 outPos;
void main()
{
    gl_Position = vec4( aPos, 1.0);
    outColor = aColor; // set ourColor to the input color we got from the vertex data
    outPos = aPos;
}