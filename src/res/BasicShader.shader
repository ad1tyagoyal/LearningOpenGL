#shader vertex
#version 330 core

layout(location = 0) in vec3 a_Position;
//layout(location = 1) in vec3 a_Color;

out vec3 v_Position;

uniform mat4 u_TransformMat;
uniform mat4 u_ViewProjectionMatrix;

void main() {
	gl_Position = u_ViewProjectionMatrix * u_TransformMat * vec4(a_Position, 1.0);
	v_Position = a_Position;
}


#shader fragment
#version 330 core

in vec3 v_Position;
out vec4 color;

void main() {
	color = vec4(v_Position + 0.5f, 1.0f);
}