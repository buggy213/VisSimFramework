#version 440

// Includes
#include <Shaders/OpenGL/Common/common.glsl>
#include <Shaders/OpenGL/PostProcessing/FXAA/common.glsl>

// Required extensions
#extension GL_NV_viewport_array2 : enable

////////////////////////////////////////////////////////////////////////////////
// Input layout
layout (triangles, invocations = NUM_GS_INVOCATIONS_FOR_LAYERS) in;
layout (triangle_strip, max_vertices = 3) out;

////////////////////////////////////////////////////////////////////////////////
// Also pass through the other attribs
in VertexData
{
    vec2 vUv;
} v_in[];

////////////////////////////////////////////////////////////////////////////////
// Also pass through the other attribs
out GeometryData
{
    vec2 vUv;
} g_out;

////////////////////////////////////////////////////////////////////////////////
void main()
{
    if (shouldSkipLayerInvocation()) return;
    
    for (int i = 0; i < 3; ++i)
    {
        handleLayerMask();
        gl_Position = gl_in[i].gl_Position;
        g_out.vUv = v_in[i].vUv;
        EmitVertex();
    }
    EndPrimitive();
}