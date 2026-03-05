<script setup>
import { onMounted } from 'vue';

function openLink(url) {
    window.open(url, '_blank')
}

onMounted(async () => {
})
</script>

<template>
    <main>
        <h2>Bonjour !</h2>
        <div class="desc">
            <span>I'm Aurock (or Jeremy), a french Frontend Dev with a strong curiosity for web game, incrementals, IDLE and all this sort of entertainment.</span>
            <span>When I'm not on this kind of thing, I work on HMI for <a href="https://ct2mc.com" target="_blank">CT2MC</a>.</span>
        </div>
        <h2>Projects :</h2>
        <div class="cardWrapper">
            <p>Supposedly in development: </p>
            <div class="card yellowGradient" @click="openLink('https://dungeoned.aurock.dev')">
                <h3 class="yellowGradientText"><Construction /> Dungeoned</h3>
                <div>Match-3-ish web game. Inspired by old mobile game DungeonRaid main gameplay, with added real roguelike/lite flavor.</div>
                <div class="tagsWrapper"><span>VueJS</span><span>Web</span></div>
            </div>
            <p>With a "kind-of usable" version: </p>
            <div class="card greenGradient" @click="openLink('https://guesstify.aurock.dev')">
                <h3 class="greenGradientText">Guesstify</h3>
                <div>Connect to Spotify, choose a playlist and try to guess album image from a zoomed-in piece.</div>
                <div class="tagsWrapper"><span>VueJS</span><span>Web</span></div>
            </div>
            <div class="card blueGradient" @click="openLink('https://colorle.aurock.dev')">
                <h3 class="blueGradientText">Colorle</h3>
                <div>Every day a new color, find RGB code to win.</div>
                <div class="tagsWrapper"><span>HTML/CSS</span><span>JS</span><span>Web</span></div>
            </div>
            <div class="card orangeGradient" @click="openLink('https://cc.aurock.dev')">
                <h3 class="orangeGradientText">Colorful Counter</h3>
                <div>Simple mobile oriented counter, with emphasis on color and gradient.</div>
                <div class="tagsWrapper"><span>VueJS</span><span>Capacitor</span><span>Mobile</span></div>
            </div>
            <p>Dead and gone: </p>
            <div class="card greyGradient" @click="openLink('https://github.com/aurock-dev/cflif')">
                <h3 class="greyGradientText">Cflif</h3>
                <div>An attempt to recreate Flyff but on an incremental game. Currently deadge.</div>
                <div class="tagsWrapper"><span>HTML/CSS</span><span>JS</span><span>Web</span></div>
            </div>
            <div class="card greyGradient" @click="openLink('https://github.com/aurock-dev/dragoned')">
                <h3 class="greyGradientText">Dragoned</h3>
                <div>An attempt to push Cflif with multiplayer and IDLE components. Currently deadge too.</div>
                <div class="tagsWrapper"><span>HTML/CSS</span><span>JS</span><span>Web</span></div>
            </div>
        </div>
    </main>
</template>

<style scoped>
main{
    display: flex;
    flex-direction: column;
    gap: 20px;
    padding: 20px;
}

.desc{
    padding-left: 20px;
    display: flex;
    flex-direction: column;
}

.cardWrapper{
    display: flex;
    flex-direction: column;
    gap: 20px;
}

.card{
    padding: 10px;
    border-radius: 10px;
    border: 1px solid var(--clr-white);
    box-shadow: var(--card-shadow);
}

.card:not(.noClick):hover{
    cursor: pointer;
    filter: brightness(0.95);
}

.card > div:not(.tagsWrapper){
    padding: 10px 0px 10px 20px;
}

.tagsWrapper{
    display: flex;
    flex-direction: row;
    padding-left: 20px;
}

.tagsWrapper span {
    font-size: 0.75em;
    font-style: italic;
    color: var(--clr-grey);
}

.tagsWrapper span:not(:last-child)::after {
    content: "•";
    margin: 0 6px;
    color: var(--grey);
    font-weight: bold;
    font-size: 0.75em;
}
</style>
