<script setup>
import { onMounted } from 'vue';

onMounted(async () => {
    const response = await fetch('https://guesstify.aurock.dev/', { method: 'HEAD' })
    console.log(response)
})
</script>

<template>
    <div>
        <div>Guesstify</div>
        <div>Connect to Spotify, choose a playlist and try to guess album image from a zoomed piece.</div>
    </div>
</template>

<style scoped></style>
