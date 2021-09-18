precision mediump float;

//varying float vRandom;

//uniform vec3 uColor;
uniform sampler2D uTexture;

varying vec2 vuv;

void main()
{

    //gl_FragColor = vec4(vRandom, vRandom, 1.0, 1.0);
    //gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);
    //gl_FragColor = vec4(uColor, 1.0);

    vec4 textureColor = texture2D(uTexture, vuv);
    gl_FragColor = textureColor;
}