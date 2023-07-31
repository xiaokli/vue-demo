<script setup lang="ts">
import TreeChart from 'vue-tree-chart-3';

enum Colors {
  GREEN = 'https://upload.wikimedia.org/wikipedia/commons/c/c5/Pure_Green.svg',
  RED = 'https://upload.wikimedia.org/wikipedia/commons/6/62/Solid_red.svg',
};

let treeData =   {
    name: 'root',
    image_url: Colors.RED,
    class: ["rootNode"],
    children: [
      {
        name: 'children1',
        image_url: Colors.GREEN
      },
      {
        name: 'children2',
        image_url: Colors.GREEN,
        children: [
          {
            name: 'grandchild',
            image_url: Colors.GREEN
          },
          {
            name: 'grandchild2',
            image_url: Colors.RED
          },
          {
            name: 'grandchild3',
            image_url: Colors.GREEN
          }
        ]
      },
      {
        name: 'children3',
        image_url: Colors.RED
      }
    ]
  };

</script>

<template>
  <body>
    <TreeChart :json="treeData" />
  </body>

  <!-- <RouterView /> -->
</template>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

#app .avat{border-radius: 2em;border-width:2px;}
#app .name{font-weight:700;}
#app .rootNode .name{
  color: red;
}
</style>
