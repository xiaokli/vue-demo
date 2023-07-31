<script setup lang="ts">

function test() {
  alert("this is from")

  return function() {
    alert("inside")
  }
}
</script>

<template>
  <div>
    <h1> this Home page</h1>
  </div>
</template>
