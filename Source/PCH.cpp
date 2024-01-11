#include "PCH.h"

////////////////////////////////////////////////////////////////////////////////
//  stb bodies
////////////////////////////////////////////////////////////////////////////////
#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_WRITE_IMPLEMENTATION

#include "stb/stb_image.h"
#include "stb/stb_image_write.h"

////////////////////////////////////////////////////////////////////////////////
//  Explicit template instantiations
////////////////////////////////////////////////////////////////////////////////
static void instantiateTemplates()
{
	Eigen::MatrixXf a;
	Eigen::MatrixXcf b;
	Eigen::VectorXf c;
	Eigen::VectorXcf d;
	Eigen::RowVectorXf e;
	Eigen::RowVectorXcf f;
}