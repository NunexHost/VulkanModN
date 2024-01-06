#version 450

#include "fog.glsl"

layout(binding = 2) uniform sampler2D Sampler0;



layout(location = 0) in float vertexDistance;
layout(location = 1) in vec2 texCoord0;

layout(location = 0) out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0);
    if (color.a < 0.5) {
        discard;
    }
    //float fade = linear_fog_fade(vertexDistance, FogStart, FogEnd);
    fragColor = color;//vec4(color.rgb * fade, color.a);
}

/*
#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;

in float vertexDistance;
in vec2 texCoord0;

out vec4 fragColor;
*/

