#version 440

// Includes
#include <Shaders/OpenGL/Common/common.glsl>
#include <Shaders/OpenGL/Aberration/TiledSplatBlur/common.glsl>

// Kernel size
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;

layout(location = 0) uniform uint uiApertureId;
layout(location = 1) uniform uint uiFocusId;

void main()
{
    emitPsfCacheInterpolationCommand(uiApertureId, uiFocusId);
}