<template>
    <div class="nav-bar" v-if="homenav.length>0">
        <div class="nav-container">
            <ul>
                <li :style="listStyle" v-for="nav in homenav" :key="nav.id">
                    <img :src="nav.iconurl" alt="">
                    <span>{{nav.icontitle}}</span>
                </li>
            </ul>
        </div>
    </div>
</template>

<script>
    import {mapState} from 'vuex'

    export default {
        name: "NavBar",
        data() {
            return {
                //  2.屏幕的长度
                scrollContentW: document.documentElement.clientWidth || document.body.clientWidth,
            }
        },
        computed: {
            ...mapState(['homenav']),
            listStyle() {
                let {homenav = {length: 20}} = this;
                return {
                    width: this.scrollContentW / (homenav.length / 4) + 'px'

                }
            }
        }
    }
</script>

<style scoped lang='less'>
    .nav-bar {
        position: relative;
        background: white;
        width: 100%;
        height: 140px;
        ::-webkit-scrollbar {
            display: none
        }
        .nav-container {
            width: 100%;
            height: 140px;
            overflow-x: scroll;
            ul {
                display: flex;
                flex-wrap: wrap;
                width: 770px;
                li {
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                    width: 77px;
                    height: 70px;
                    img {
                        width: 40%;
                        text-align: center;
                    }
                    span {
                        font-size: 12px;
                    }
                }
            }
        }
    }
</style>