# Three.js Shaders

## Setup
Download [Node.js](https://nodejs.org/en/download/).
Run this followed commands:

``` bash
# Install dependencies (only the first time)
npm install

# Run the local server at localhost:8080
npm run dev

# Build for production in the dist/ directory
npm run build
```

### O que é um Shader
  
Um shader é, de fato, um dos principais componentes do WebGL. Se tivéssemos começado o WebGL sem o.js, teria sido uma das primeiras coisas que teríamos que aprender, e é por isso que o WebGL nativo é tão difícil. Um shader é um programa escrito em GLSL que é enviado para a GPU. Eles são usados para posicionar cada vértice de uma geometria e para colorir cada pixel visível dessa geometria. O termo "pixel" não é preciso porque cada ponto na renderização não corresponde necessariamente a cada pixel da tela e é por isso que preferimos usar o termo "fragmento", não se surpreenda se você ver os dois termos. Enviamos muitos dados para o shader, como as coordenadas de vértices, a transformação da malha, informações sobre a câmera e seu campo de visão, parâmetros como a cor, as texturas, as luzes, a neblina, etc. A GPU então processa todos esses dados seguindo as instruções do shader, e nossa geometria aparece na renderização.

### RawShaderMaterial
A maioria das propriedades dos outros materiais ainda funcionam como: wireframe, side, transparent ou flatShading estão disponíveis no RawShaderMaterial

Propriedades como map, alphaMap, opacity, color, etc. não irá funcionar mais e devem ser escritas nos shaders.  
  
### Documentação de Shaders

* https://www.shaderific.com/glsl-functions  
* https://www.khronos.org/registry/OpenGL-Refpages/gl4/html/indexflat.php  
* https://thebookofshaders.com/  

