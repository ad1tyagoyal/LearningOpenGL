#pragma once
#include <memory>

#include "src/utils/VertexArray.h"
#include "src/utils/Shader.h"
#include "src/utils/Buffer.h"


namespace OpenGLEngine {

	struct BackgroundColor {
		float r, g, b, a;
	};

	static class Renderer {
	public:
		static void Init();
		static void BeginScene(BackgroundColor color);
		static void DrawElements(const std::shared_ptr<VertexArray>& vertexArray);
		static void EndScene(GLFWwindow* window);
	};

}