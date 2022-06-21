varying float vNoise;
varying vec2 vUv;

uniform sampler2D oceanTexture;


void main(){
  vec3 color1 = vec3(1., 0., 0.);
  vec3 color2 = vec3(1., 1., 1.);
  vec3 finalColor = mix(color1, color2, 0.5* (vNoise + 1.));

  vec4 oceanView = texture2D(oceanTexture, vUv);

  gl_FragColor = vec4(finalColor, 1.);
  gl_FragColor = vec4(vUv, 0., 1.);
  // gl_FragColor = vec4(oceanView.rgb, 1.);
}