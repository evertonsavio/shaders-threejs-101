//uniform mat4 projectionMatrix; //Cause we change RawShaderMAterial to ShaderMaterial
//uniform mat4 viewMatrix;
//uniform mat4 modelMatrix;

//attribute vec3 position;
attribute float aRandom;

//varying float vRandom;
//uniform float uFrequency;
uniform vec2 uFrequency;
uniform float uTime;

//attribute vec2 uv;
varying vec2 vuv;
varying float vElevation;

void main()
{
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);

    float elevation = sin(modelPosition.x * uFrequency.x - uTime) * 0.1;
    elevation += sin(modelPosition.y * uFrequency.y - uTime) * 0.1;

    modelPosition.z += elevation;

    modelPosition.z += sin(modelPosition.x * uFrequency.x + uTime) * 0.01;
    modelPosition.z += sin(modelPosition.y * uFrequency.y + uTime) * 0.01;
    //modelPosition.z += sin(modelPosition.x * 10.0) * 0.1;
    //modelPosition.z += aRandom * 0.1;

    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;

    gl_Position = projectionPosition; //projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);

    //vRandom = aRandom;
    vuv = uv;
    vElevation = elevation;
}