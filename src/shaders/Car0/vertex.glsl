

// varying vec3 vNormal;
// varying vec3 vPosition;

// void main() {	
//   gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
//   vNormal = (modelMatrix * vec4(normal, 0.0)).xyz;
//   vPosition = (modelMatrix * vec4(position, 1.0)).xyz;
// }

varying vec2 vUv;
varying vec3 vNormal;
varying vec3 vPosition;


void main()
{
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);

    vec4 viewPosition = viewMatrix * modelPosition;

    vec4 projectedPosition = projectionMatrix * viewPosition;

    gl_Position = projectedPosition;

    vNormal = (modelMatrix * vec4(normal, 0.0)).xyz;
    vPosition = (modelMatrix * vec4(position, 1.0)).xyz;

    vUv = uv;
}